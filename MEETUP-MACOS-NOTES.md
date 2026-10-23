# Myrmic meetup cheat sheet (MacBook Air M1)

Personal notes for Rust Poland Kraków #12. Myrmic officially supports Linux only, but everything below
was built and tested on this Mac. Things marked **untested** could not be checked without a real board.

---

## What is already set up

| Thing | Where |
|---|---|
| `myrmic` CLI (0.7.0) | `~/.cargo/bin/myrmic` |
| `wamrc` 2.4.4 (compiles your cells for the board) | `~/.cargo/bin/wamrc` |
| LLVM 18 / clang (needed for ESP32 builds) | `~/opt/clang+llvm-18.1.8-arm64-apple-macos11` |
| LLVM settings | last block of `~/.zshrc` |
| Test project (safe to delete) | `~/myrmic-quickstart` |

**Do not delete `~/opt`.** `wamrc` breaks without it.

Quick health check, in a **new** terminal:

```sh
myrmic --version    # myrmic 0.7.0
wamrc --version     # wamrc 2.4.4
which clang         # must be .../opt/clang+llvm-18.1.8.../bin/clang, NOT /usr/bin/clang
```

---

## The normal flow (from the official tutorial)

Use two terminals.

**Terminal 1: start a runtime (your laptop becomes a swarm node)**

```sh
myrmic runtimes start -d -n dev --tmp
myrmic telemetry set-db-retention 1h   # otherwise `telemetry logs` shows nothing
```

**Terminal 2: build and flash the board firmware, then watch its output**

```sh
myrmic new --firmware=esp32c6 ~/esp/my-node
cd ~/esp/my-node
export WIFI_SSID="venue-wifi" WIFI_PASS="password"   # baked into the firmware, set before flashing
myrmic flash --monitor
```

Look for these lines in the monitor, in this order:
`Wifi connected` → `Got IP` → `Using Zenoh node at ...` → `clock synced` → `Registering exec runtime`.

**Terminal 1: check the board joined, then deploy a cell to it**

```sh
myrmic network          # should list 2 nodes: ESP32-C6 and dev
myrmic new counter
myrmic deploy counter --platform riscv32imac --tag esp32c6 --timeout 90s
myrmic send counter increment
myrmic cells status
```

Clean up at the end: `myrmic runtimes stop`.

---

## Mac vs Linux: translate the instructions

| Instructions say | On this Mac |
|---|---|
| `/dev/ttyACM0` | `/dev/cu.usbmodemXXXX` (run `ls /dev/cu.usbmodem*`) |
| `/dev/ttyUSB0` (UART port on the board) | `/dev/cu.usbserial-XXXX` or `/dev/cu.wchusbserialXXXX` |
| `sudo usermod -aG dialout ...` | Skip it. Not needed on a Mac |
| `sudo apt install ...` | Skip it. Already handled |
| `ip addr` | `ipconfig getifaddr en0` |
| `timeout 5 ...` | Not available on a Mac. Use the command's own `--timeout 5s` flag |

---

## Situations you might run into

### "No serial ports could be detected"
The board isn't seen at all.
1. Run `ls /dev/cu.*` with the board unplugged, then plugged in. A new `cu.usbmodem…` should appear.
2. Nothing new? **Try another cable.** Many USB cables are charge-only and carry no data. Use the one the
   organisers hand out.
3. Through the adapter? Check that it's firmly seated. Try the other USB-C port on the Mac.
4. Many boards have **two USB ports** (labelled USB and UART). Try the other one.
5. Still nothing: `myrmic flash --list-all-ports`.

### It picks the wrong port, or asks which one
Your Mac has Bluetooth/headphone ports (`cu.Bluetooth-Incoming-Port`, `cu.RedmiBuds…`, etc.). Name the
board's port explicitly:
```sh
myrmic flash --port /dev/cu.usbmodem1101 --monitor   # use the name from ls /dev/cu.usbmodem*
```

### Flash fails partway, "failed to connect", or timeouts
- Close anything else that has the port open (another `--monitor`, Arduino IDE, `screen`). Only one program can use it.
- Put the board in download mode by hand: **hold BOOT, tap RESET (RST), release BOOT**, then flash again.
- Try a slower speed: `myrmic flash --baud 115200 --monitor`.
- Unplug and re-plug the board. The port name may change afterwards, so re-check `ls /dev/cu.usbmodem*`.

### Board boots but never says "Wifi connected"
- The Wi-Fi name and password are **baked in at build time**. Re-run `export WIFI_SSID=... WIFI_PASS=...`
  in the *same* terminal, then `myrmic flash` again.
- The SSID is case-sensitive. Watch for spaces and quotes.
- The **ESP32-C6 only does 2.4 GHz Wi-Fi** (the C5 also does 5 GHz). If the router has separate
  2.4/5 GHz network names, use the 2.4 GHz one.

### Board has Wi-Fi but stays on "Scouting for Zenoh nodes..."
It can't find your laptop's runtime.
1. Is your runtime running? `myrmic network` in Terminal 1.
2. **macOS firewall:** if a pop-up asked "allow incoming connections" for `myrmic`, it must be **Allow**.
   Check System Settings → Network → Firewall → Options and set `myrmic` to "Allow incoming connections".
3. Is the Mac on the **same Wi-Fi** as the board (the event router, not a phone hotspot or ethernet)?
4. If the network blocks multicast, tell the board your laptop's address directly:
   ```sh
   ipconfig getifaddr en0          # your Mac's IP, e.g. 192.168.1.68
   grep "can be reached at: tcp/1" ~/.local/share/myrmic/*/logs/runtime.*.log | tail -1
                                   # shows the runtime's port, e.g. tcp/192.168.1.68:65031
   export TCP_DIRECT_ADDR="192.168.1.68:65031"
   myrmic flash --monitor
   ```
   The port changes each time the runtime restarts. If you restart it, look up the port again and reflash.

### `myrmic network` shows only your laptop
Same causes as the previous section: firewall, different Wi-Fi, or multicast blocked. Also give it a few
seconds after the board prints `Registering exec runtime`.

### Build fails: `failed to find tool "clang"`, `unknown target riscv32`, or libclang errors
The terminal is using Apple's clang instead of LLVM 18. Either open a **new** terminal (it reads `~/.zshrc`),
or run:
```sh
source ~/.zshrc
which clang    # must point into ~/opt/clang+llvm-18.1.8...
```

### `wamrc` errors, "wamrc not found", or "Library not loaded: libLTO.dylib"
`~/opt` was moved or deleted, or `~/.cargo/bin` isn't on PATH. Check `wamrc --version` → `wamrc 2.4.4`.

### `no C linker found`
Xcode command line tools are missing or broken: `xcode-select --install`.

### Deploy hangs or says no node matches
- The board must be in `myrmic network` first.
- Board deploys need `--platform riscv32imac --tag esp32c6` (use your chip's tag if it's a C5/C61).
- Give it time: `--timeout 90s`. The first deploy compiles the cell.
- Only **one cell per board** at a time on ESP32. Remove the old one with `myrmic delete <name>`.

### `myrmic telemetry logs` shows "No log records found"
Run `myrmic telemetry set-db-retention 1h` once, then send the command again. Logs from before that
aren't kept. Laptop-side logs are also always in `~/.local/share/myrmic/<id>/logs/`.

### "runtime already running" or a stuck runtime
```sh
myrmic runtimes stop
pkill -f "myrmic runtimes"     # if stop doesn't work
```

### Board seems frozen or in a reboot loop
Press RESET. Watch `myrmic flash --monitor` (or just reflash). A panic message there is useful to show
the organisers.

### Board is a C5 or C61, not a C6
Scaffold for that chip: `myrmic new --firmware=esp32c5 ...` (or `esp32c61`), and deploy with `--tag esp32c5`.

---

## Asking for help

Say up front: *"I'm on macOS (M1). CLI built from source, wamrc built against LLVM 18."* Their guide
assumes Linux, so the Mac is the first thing that matters. The useful things to show them:
- the output of `myrmic flash --monitor`
- `myrmic network`
- the runtime log: `ls ~/.local/share/myrmic/*/logs/`

## Last resort

If something is truly Mac-specific and blocks you, pair with someone on Linux for the flashing step. A
board flashed from any laptop on the same Wi-Fi still joins the swarm, and your Mac can keep deploying
cells to it.
