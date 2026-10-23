(module $bench.wasm
  (type (;0;) (func (param i32 i32) (result i32)))
  (type (;1;) (func (param i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32) (result i32)))
  (type (;3;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;4;) (func (result i32)))
  (type (;5;) (func (param i32 i32 i32)))
  (type (;6;) (func (param i32 i32)))
  (type (;7;) (func (result i64)))
  (type (;8;) (func (param i32)))
  (type (;9;) (func (param i32 i32 i64 i32 i32 i64)))
  (type (;10;) (func (param i32 i32 i32 i32)))
  (type (;11;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;12;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;13;) (func (param i64 i64 i64 i64 i32) (result i32)))
  (type (;14;) (func))
  (type (;15;) (func (param i64) (result i64)))
  (type (;16;) (func (param i32 i32 i32 i32 i32)))
  (type (;17;) (func (param i64 i32)))
  (type (;18;) (func (param i32 i32 i32 i64)))
  (type (;19;) (func (param i32 i32 i32 i64 i32)))
  (type (;20;) (func (param i32 i64 i64 i32)))
  (type (;21;) (func (param i32 i64)))
  (type (;22;) (func (param i32 i32 i32 i32 i32 i32 i32)))
  (type (;23;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;24;) (func (param i32 i64 i64 i64)))
  (type (;25;) (func (param i32 i64 i64 i64 i64)))
  (type (;26;) (func (param i32 f64)))
  (type (;27;) (func (param i64 i64) (result f64)))
  (import "gpio" "is_pin_supported" (func $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions4gpio16is_pin_supported (type 2)))
  (import "db" "key_get" (func $_RNvNtNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions2db2kv11c_functions7key_get (type 3)))
  (import "time" "uptime_host" (func $_RNvNtCsh49aHnobDmh_5bench3raw11uptime_host (type 0)))
  (import "cell" "cancel_timer" (func $_RNvNtNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions4cell6timers11c_functions12cancel_timer (type 2)))
  (import "arguments" "get_arguments" (func $_RNvNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions9arguments11c_functions13get_arguments (type 0)))
  (import "cell" "create_timer" (func $_RNvNtNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions4cell6timers11c_functions12create_timer (type 0)))
  (import "logging" "log_host" (func $_RNvNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions7logging11c_functions8log_host (type 1)))
  (import "tap" "tap_list_len" (func $_RNvNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions3tap11c_functions12tap_list_len (type 4)))
  (import "error" "report_error" (func $_RNvNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions6errors11c_functions12report_error (type 0)))
  (func $_RINvXs_NvMNtCsjAdaHq5oevx_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsh49aHnobDmh_5bench (type 5) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 4
    i32.add
    local.get 2
    i32.const 0
    call $_RNvMs5_NtCsjAdaHq5oevx_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9YH6pJqOsRA_5serde
    local.get 3
    i32.load offset=8
    local.set 4
    block  ;; label = @1
      local.get 3
      i32.load offset=4
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=12
      local.set 5
      local.get 0
      i32.const 0
      i32.store offset=8
      local.get 0
      local.get 5
      i32.store offset=4
      local.get 0
      local.get 4
      i32.store
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 5
          local.get 1
          local.get 2
          memory.copy
        end
        local.get 0
        local.get 2
        i32.store offset=8
      end
      local.get 3
      i32.const 16
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 4
    local.get 3
    i32.load offset=12
    call $_RNvNtCsjAdaHq5oevx_5alloc7raw_vec12handle_error
    unreachable)
  (func $_RNvMs5_NtCsjAdaHq5oevx_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9YH6pJqOsRA_5serde (type 5) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          local.get 1
          br_if 1 (;@2;)
          local.get 0
          i64.const 4294967296
          i64.store offset=4 align=4
          i32.const 0
          local.set 1
          br 2 (;@1;)
        end
        local.get 0
        i32.const 0
        i32.store offset=4
        i32.const 1
        local.set 1
        br 1 (;@1;)
      end
      local.get 3
      i32.const 8
      i32.add
      local.get 1
      local.get 2
      call $_RNvMNtCsjAdaHq5oevx_5alloc5allocNtB2_6Global18alloc_impl_runtime
      block  ;; label = @2
        local.get 3
        i32.load offset=8
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 2
        i32.store offset=8
        local.get 0
        local.get 1
        i32.store offset=4
        i32.const 0
        local.set 1
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.store offset=8
      i32.const 1
      local.set 1
      local.get 0
      i32.const 1
      i32.store offset=4
    end
    local.get 0
    local.get 1
    i32.store
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_RNvNtCsjAdaHq5oevx_5alloc7raw_vec12handle_error (type 6) (param i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      call $_RNvNtCsjAdaHq5oevx_5alloc5alloc18handle_alloc_error
      unreachable
    end
    call $_RNvNtCsjAdaHq5oevx_5alloc7raw_vec17capacity_overflow
    unreachable)
  (func $_RNvCsh49aHnobDmh_5bench6now_us (type 7) (result i64)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 8
    i32.add
    call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions4time6uptime
    i64.const 0
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.load offset=8
      br_if 0 (;@1;)
      local.get 0
      i64.load offset=16
      i64.const 1000000
      i64.mul
      local.get 0
      i32.load offset=24
      i32.const 1000
      i32.div_u
      i64.extend_i32_u
      i64.add
      local.set 1
    end
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions4time6uptime (type 8) (param i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i64.const 0
    i64.store offset=7 align=1
    local.get 1
    i64.const 0
    i64.store
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 15
          call $_RNvNtCsh49aHnobDmh_5bench3raw11uptime_host
          local.tee 2
          i32.const -1
          i32.gt_s
          br_if 0 (;@3;)
          local.get 0
          i32.const 4
          i32.add
          local.get 2
          call $_RNvXs1_NtCsdwI7iSz8jyL_10myrmic_sdk5errorNtB5_8ApiErrorINtNtCsdmBIiMovVma_4core7convert4FromlE4from
          local.get 0
          i32.const 1
          i32.store
          br 1 (;@2;)
        end
        local.get 2
        i32.const 16
        i32.ge_u
        br_if 1 (;@1;)
        local.get 1
        i32.const 16
        i32.add
        local.get 1
        local.get 2
        call $_RINvNtCs2WOo28oSl5V_8postcard2de10from_bytesNtNtCsdmBIiMovVma_4core4time8DurationECsdwI7iSz8jyL_10myrmic_sdk
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.load offset=24
            local.tee 2
            i32.const -1
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.set 2
            local.get 0
            i32.const 0
            i32.store offset=4
            i32.const 1
            local.set 3
            i32.const 8
            local.set 4
            br 1 (;@3;)
          end
          local.get 0
          local.get 1
          i64.load offset=16
          i64.store offset=8
          i32.const 0
          local.set 3
          i32.const 16
          local.set 4
        end
        local.get 0
        local.get 4
        i32.add
        local.get 2
        i32.store
        local.get 0
        local.get 3
        i32.store
      end
      local.get 1
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 0
    local.get 2
    i32.const 15
    i32.const 41344
    call $_RNvNtNtCsdmBIiMovVma_4core5slice5index16slice_index_fail
    unreachable)
  (func $_RNvCsh49aHnobDmh_5bench6report (type 9) (param i32 i32 i64 i32 i32 i64)
    (local i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    local.get 6
    local.get 1
    i32.store offset=4
    local.get 6
    local.get 0
    i32.store
    local.get 6
    local.get 4
    i32.store offset=20
    local.get 6
    local.get 3
    i32.store offset=16
    local.get 6
    local.get 5
    i64.store offset=24
    local.get 6
    local.get 2
    i64.store offset=8
    local.get 6
    local.get 5
    i64.const 1000
    i64.mul
    local.get 2
    i64.div_u
    i64.store offset=32
    local.get 6
    i32.const 1
    i32.store offset=92
    local.get 6
    i32.const 1
    i32.store offset=84
    local.get 6
    i32.const 2
    i32.store offset=76
    local.get 6
    i32.const 1
    i32.store offset=68
    local.get 6
    i32.const 2
    i32.store offset=60
    local.get 6
    local.get 6
    i32.const 32
    i32.add
    i32.store offset=88
    local.get 6
    local.get 6
    i32.const 24
    i32.add
    i32.store offset=80
    local.get 6
    local.get 6
    i32.const 16
    i32.add
    i32.store offset=72
    local.get 6
    local.get 6
    i32.const 8
    i32.add
    i32.store offset=64
    local.get 6
    local.get 6
    i32.store offset=56
    local.get 6
    i32.const 44
    i32.add
    i32.const 36312
    local.get 6
    i32.const 56
    i32.add
    call $_RNvNtCsjAdaHq5oevx_5alloc3fmt6format
    local.get 6
    i32.const 56
    i32.add
    local.get 6
    i32.load offset=48
    local.tee 1
    local.get 6
    i32.load offset=52
    i32.const 2
    call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions7logging3log
    local.get 6
    i32.load offset=44
    local.get 1
    call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
    local.get 6
    i32.const 96
    i32.add
    global.set $__stack_pointer)
  (func $_RNvXsd_NtNtNtCsdmBIiMovVma_4core3fmt3num3impyNtB9_7Display3fmt (type 0) (param i32 i32) (result i32)
    (local i32 i32 i64 i64 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 20
    local.set 3
    local.get 0
    i64.load
    local.tee 4
    local.set 5
    block  ;; label = @1
      local.get 4
      i64.const 1000
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 20
      local.set 3
      local.get 4
      local.set 5
      loop  ;; label = @2
        local.get 2
        i32.const 12
        i32.add
        local.get 3
        i32.add
        local.tee 0
        i32.const -4
        i32.add
        local.get 5
        local.tee 6
        local.get 6
        i64.const 10000
        i64.div_u
        local.tee 5
        i64.const 10000
        i64.mul
        i64.sub
        i32.wrap_i64
        local.tee 7
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 8
        i32.const 1
        i32.shl
        i32.load16_u offset=39305 align=1
        i32.store16 align=1
        local.get 0
        i32.const -2
        i32.add
        local.get 7
        local.get 8
        i32.const 100
        i32.mul
        i32.sub
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.load16_u offset=39305 align=1
        i32.store16 align=1
        local.get 3
        i32.const -4
        i32.add
        local.set 3
        local.get 6
        i64.const 9999999
        i64.gt_u
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 5
      i64.const 9
      i64.le_u
      br_if 0 (;@1;)
      local.get 2
      i32.const 12
      i32.add
      local.get 3
      i32.const -2
      i32.add
      local.tee 3
      i32.add
      local.get 5
      i32.wrap_i64
      local.tee 0
      local.get 0
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 0
      i32.const 100
      i32.mul
      i32.sub
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.load16_u offset=39305 align=1
      i32.store16 align=1
      local.get 0
      i64.extend_i32_u
      local.set 5
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i64.eqz
        br_if 0 (;@2;)
        local.get 5
        i64.eqz
        br_if 1 (;@1;)
      end
      local.get 2
      i32.const 12
      i32.add
      local.get 3
      i32.const -1
      i32.add
      local.tee 3
      i32.add
      local.get 5
      i32.wrap_i64
      i32.const 1
      i32.shl
      i32.load8_u offset=39306
      i32.store8
    end
    local.get 1
    i32.const 1
    i32.const 1
    i32.const 0
    local.get 2
    i32.const 12
    i32.add
    local.get 3
    i32.add
    i32.const 20
    local.get 3
    i32.sub
    call $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter12pad_integral
    local.set 3
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $_RNvXs1i_NtCsdmBIiMovVma_4core3fmtReNtB6_7Display3fmtCs3wU1vCl2ErL_10serde_core (type 0) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter3pad)
  (func $_RNvNtCsjAdaHq5oevx_5alloc3fmt6format (type 5) (param i32 i32 i32)
    block  ;; label = @1
      local.get 2
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      i32.const 1
      i32.shr_u
      call $_RINvXs_NvMNtCsjAdaHq5oevx_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsh49aHnobDmh_5bench
      return
    end
    local.get 0
    local.get 1
    local.get 2
    call $_RNvNvNtCsjAdaHq5oevx_5alloc3fmt6format12format_inner)
  (func $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions7logging3log (type 10) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    i32.const 255
    i32.and
    call $_RNvNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions7logging11c_functions8log_host
    call $_RNvXNtCsdwI7iSz8jyL_10myrmic_sdk5errorlNtB2_9ErrorCode9to_result)
  (func $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common (type 6) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        br_if 0 (;@2;)
        i32.const 0
        local.set 0
        local.get 2
        i32.const 12
        i32.add
        local.set 3
        br 1 (;@1;)
      end
      local.get 2
      i32.const 1
      i32.store offset=12
      local.get 2
      i32.const 8
      i32.add
      local.set 3
    end
    local.get 3
    local.get 0
    i32.store
    block  ;; label = @1
      local.get 2
      i32.load offset=12
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.load offset=8
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      local.get 3
      call $_RNvXs_NtCsf2KWoDnNIRz_14embedded_alloc4llffNtB4_4HeapNtNtNtCsdmBIiMovVma_4core5alloc6global11GlobalAlloc7dealloc
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_RNvNvNtCsjAdaHq5oevx_5alloc3fmt6format12format_inner (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 2
                    i32.const 1
                    i32.and
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 2
                    i32.const 1
                    i32.shr_u
                    local.set 4
                    br 1 (;@7;)
                  end
                  local.get 1
                  i32.load8_u
                  local.tee 4
                  i32.eqz
                  br_if 1 (;@6;)
                  i32.const 0
                  local.set 5
                  local.get 1
                  local.set 6
                  i32.const 0
                  local.set 7
                  loop  ;; label = @8
                    local.get 6
                    i32.const 1
                    i32.add
                    local.set 6
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 4
                        i32.const 24
                        i32.shl
                        i32.const 24
                        i32.shr_s
                        i32.const -1
                        i32.gt_s
                        br_if 0 (;@10;)
                        block  ;; label = @11
                          local.get 4
                          i32.const 255
                          i32.and
                          i32.const 128
                          i32.ne
                          br_if 0 (;@11;)
                          local.get 5
                          local.get 6
                          i32.load16_u align=1
                          local.tee 4
                          i32.add
                          local.set 5
                          local.get 6
                          local.get 4
                          i32.add
                          i32.const 2
                          i32.add
                          local.set 6
                          br 2 (;@9;)
                        end
                        local.get 6
                        local.get 4
                        i32.const 3
                        i32.and
                        i32.const 8
                        i32.rotr
                        local.tee 8
                        i32.const 5
                        i32.shl
                        i32.const 1073741824
                        i32.and
                        local.get 8
                        i32.const 7
                        i32.shl
                        i32.or
                        i32.const 29
                        i32.shr_u
                        i32.add
                        local.get 4
                        i32.const 1
                        i32.shr_u
                        i32.const 2
                        i32.and
                        i32.add
                        local.get 4
                        i32.const 2
                        i32.shr_u
                        i32.const 2
                        i32.and
                        i32.add
                        local.set 6
                        local.get 5
                        i32.eqz
                        local.get 7
                        i32.or
                        local.set 7
                        br 1 (;@9;)
                      end
                      local.get 6
                      local.get 4
                      i32.const 255
                      i32.and
                      local.tee 4
                      i32.add
                      local.set 6
                      local.get 5
                      local.get 4
                      i32.add
                      local.set 5
                    end
                    local.get 6
                    i32.load8_u
                    local.tee 4
                    br_if 0 (;@8;)
                  end
                  i32.const 0
                  local.set 4
                  local.get 7
                  local.get 5
                  i32.const 16
                  i32.lt_u
                  i32.and
                  br_if 0 (;@7;)
                  local.get 5
                  i32.const 1
                  i32.shl
                  local.tee 4
                  i32.const -1
                  i32.le_s
                  br_if 4 (;@3;)
                end
                local.get 4
                br_if 1 (;@5;)
              end
              i32.const 1
              local.set 6
              i32.const 0
              local.set 4
              br 1 (;@4;)
            end
            local.get 4
            i32.const 1
            call $_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc
            local.tee 6
            i32.eqz
            br_if 2 (;@2;)
          end
          local.get 3
          i32.const 0
          i32.store offset=8
          local.get 3
          local.get 6
          i32.store offset=4
          local.get 3
          local.get 4
          i32.store
          local.get 3
          i32.const 36628
          local.get 1
          local.get 2
          call $_RNvNtCsdmBIiMovVma_4core3fmt5write
          i32.eqz
          br_if 2 (;@1;)
          i32.const 36668
          i32.const 86
          local.get 3
          i32.const 15
          i32.add
          i32.const 36652
          i32.const 36756
          call $_RNvNtCsdmBIiMovVma_4core6result13unwrap_failed
          unreachable
        end
        call $_RNvNtCsjAdaHq5oevx_5alloc7raw_vec17capacity_overflow
        unreachable
      end
      local.get 4
      call $_RNvNtCsjAdaHq5oevx_5alloc5alloc18handle_alloc_error
      unreachable
    end
    local.get 0
    local.get 3
    i32.load offset=8
    i32.store offset=8
    local.get 0
    local.get 3
    i64.load align=4
    i64.store align=4
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_RNvXs1g_NtCsdmBIiMovVma_4core3fmtRReNtB6_5Debug3fmtCsh49aHnobDmh_5bench (type 0) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    call $_RNvXs1g_NtCsdmBIiMovVma_4core3fmtReNtB6_5Debug3fmtCs3wU1vCl2ErL_10serde_core)
  (func $_RNvXs1g_NtCsdmBIiMovVma_4core3fmtReNtB6_5Debug3fmtCs3wU1vCl2ErL_10serde_core (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load offset=4
    local.set 3
    local.get 0
    i32.load
    local.set 4
    i32.const 1
    local.set 5
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 6
      i32.const 34
      local.get 1
      i32.load offset=4
      local.tee 7
      i32.load offset=16
      local.tee 8
      call_indirect (type 0)
      br_if 0 (;@1;)
      i32.const 0
      local.set 9
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          br_if 0 (;@3;)
          i32.const 0
          local.set 10
          br 1 (;@2;)
        end
        i32.const 0
        local.set 10
        local.get 3
        local.set 11
        local.get 4
        local.set 12
        block  ;; label = @3
          loop  ;; label = @4
            local.get 12
            local.get 11
            i32.add
            local.set 13
            i32.const 0
            local.set 0
            block  ;; label = @5
              loop  ;; label = @6
                local.get 12
                local.get 0
                i32.add
                local.tee 14
                i32.load8_u
                local.tee 1
                i32.const -127
                i32.add
                i32.const 255
                i32.and
                i32.const 161
                i32.lt_u
                br_if 1 (;@5;)
                local.get 1
                i32.const 34
                i32.eq
                br_if 1 (;@5;)
                local.get 1
                i32.const 92
                i32.eq
                br_if 1 (;@5;)
                local.get 11
                local.get 0
                i32.const 1
                i32.add
                local.tee 0
                i32.ne
                br_if 0 (;@6;)
              end
              local.get 10
              local.get 11
              i32.add
              local.set 10
              br 2 (;@3;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 14
                i32.load8_s
                local.tee 1
                i32.const -1
                i32.le_s
                br_if 0 (;@6;)
                local.get 14
                i32.const 1
                i32.add
                local.set 12
                local.get 1
                i32.const 255
                i32.and
                local.set 1
                br 1 (;@5;)
              end
              local.get 14
              i32.load8_u offset=1
              i32.const 63
              i32.and
              local.set 11
              local.get 1
              i32.const 31
              i32.and
              local.set 12
              block  ;; label = @6
                local.get 1
                i32.const -33
                i32.gt_u
                br_if 0 (;@6;)
                local.get 12
                i32.const 6
                i32.shl
                local.get 11
                i32.or
                local.set 1
                local.get 14
                i32.const 2
                i32.add
                local.set 12
                br 1 (;@5;)
              end
              local.get 11
              i32.const 6
              i32.shl
              local.get 14
              i32.load8_u offset=2
              i32.const 63
              i32.and
              i32.or
              local.set 11
              block  ;; label = @6
                local.get 1
                i32.const -16
                i32.ge_u
                br_if 0 (;@6;)
                local.get 11
                local.get 12
                i32.const 12
                i32.shl
                i32.or
                local.set 1
                local.get 14
                i32.const 3
                i32.add
                local.set 12
                br 1 (;@5;)
              end
              local.get 11
              i32.const 6
              i32.shl
              local.get 14
              i32.load8_u offset=3
              i32.const 63
              i32.and
              i32.or
              local.get 12
              i32.const 18
              i32.shl
              i32.const 1835008
              i32.and
              i32.or
              local.set 1
              local.get 14
              i32.const 4
              i32.add
              local.set 12
            end
            local.get 0
            local.get 10
            i32.add
            local.set 0
            local.get 2
            local.get 1
            i32.const 65537
            call $_RNvMNtNtCsdmBIiMovVma_4core4char7methodsc16escape_debug_ext
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.load8_u offset=13
                local.tee 14
                local.get 2
                i32.load8_u offset=12
                local.tee 11
                i32.sub
                local.tee 10
                i32.const 255
                i32.and
                i32.const 1
                i32.eq
                br_if 0 (;@6;)
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    local.get 9
                    i32.lt_u
                    br_if 0 (;@8;)
                    local.get 0
                    local.get 3
                    i32.gt_u
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      local.get 9
                      local.get 3
                      i32.eq
                      br_if 0 (;@9;)
                      block  ;; label = @10
                        local.get 9
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 4
                        local.get 9
                        i32.add
                        i32.load8_s
                        i32.const -65
                        i32.le_s
                        br_if 2 (;@8;)
                      end
                      local.get 0
                      local.get 3
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 4
                      local.get 0
                      i32.add
                      i32.load8_s
                      i32.const -65
                      i32.le_s
                      br_if 1 (;@8;)
                    end
                    local.get 6
                    local.get 4
                    local.get 9
                    i32.add
                    local.get 0
                    local.get 9
                    i32.sub
                    local.get 7
                    i32.load offset=12
                    local.tee 9
                    call_indirect (type 1)
                    i32.eqz
                    br_if 1 (;@7;)
                    br 3 (;@5;)
                  end
                  local.get 4
                  local.get 3
                  local.get 9
                  local.get 0
                  i32.const 40240
                  call $_RNvNtCsdmBIiMovVma_4core3str16slice_error_fail
                  unreachable
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 14
                    i32.const 129
                    i32.lt_u
                    br_if 0 (;@8;)
                    local.get 6
                    local.get 2
                    i32.load
                    local.get 8
                    call_indirect (type 0)
                    br_if 3 (;@5;)
                    br 1 (;@7;)
                  end
                  local.get 6
                  local.get 2
                  local.get 11
                  i32.add
                  local.get 10
                  local.get 9
                  call_indirect (type 1)
                  br_if 2 (;@5;)
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 1
                    i32.const 128
                    i32.ge_u
                    br_if 0 (;@8;)
                    i32.const 1
                    local.set 14
                    br 1 (;@7;)
                  end
                  block  ;; label = @8
                    local.get 1
                    i32.const 2048
                    i32.ge_u
                    br_if 0 (;@8;)
                    i32.const 2
                    local.set 14
                    br 1 (;@7;)
                  end
                  i32.const 3
                  i32.const 4
                  local.get 1
                  i32.const 65536
                  i32.lt_u
                  select
                  local.set 14
                end
                local.get 14
                local.get 0
                i32.add
                local.set 9
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  i32.const 128
                  i32.ge_u
                  br_if 0 (;@7;)
                  i32.const 1
                  local.set 1
                  br 1 (;@6;)
                end
                block  ;; label = @7
                  local.get 1
                  i32.const 2048
                  i32.ge_u
                  br_if 0 (;@7;)
                  i32.const 2
                  local.set 1
                  br 1 (;@6;)
                end
                i32.const 3
                i32.const 4
                local.get 1
                i32.const 65536
                i32.lt_u
                select
                local.set 1
              end
              local.get 1
              local.get 0
              i32.add
              local.set 10
              local.get 13
              local.get 12
              i32.sub
              local.tee 11
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
          end
          i32.const 1
          local.set 5
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 9
          local.get 10
          i32.gt_u
          br_if 0 (;@3;)
          local.get 10
          local.get 3
          i32.gt_u
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 9
            local.get 3
            i32.ne
            br_if 0 (;@4;)
            local.get 3
            local.set 9
            br 2 (;@2;)
          end
          block  ;; label = @4
            local.get 9
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            local.get 9
            i32.add
            i32.load8_s
            i32.const -65
            i32.le_s
            br_if 1 (;@3;)
          end
          block  ;; label = @4
            local.get 10
            local.get 3
            i32.ne
            br_if 0 (;@4;)
            local.get 3
            local.set 10
            br 2 (;@2;)
          end
          local.get 4
          local.get 10
          i32.add
          i32.load8_s
          i32.const -65
          i32.gt_s
          br_if 1 (;@2;)
        end
        local.get 4
        local.get 3
        local.get 9
        local.get 10
        i32.const 40256
        call $_RNvNtCsdmBIiMovVma_4core3str16slice_error_fail
        unreachable
      end
      local.get 6
      local.get 4
      local.get 9
      i32.add
      local.get 10
      local.get 9
      i32.sub
      local.get 7
      i32.load offset=12
      call_indirect (type 1)
      br_if 0 (;@1;)
      local.get 6
      i32.const 34
      local.get 8
      call_indirect (type 0)
      local.set 5
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 5)
  (func $_RNvXs1g_NtCsdmBIiMovVma_4core3fmtRlNtB6_5Debug3fmtCsh49aHnobDmh_5bench (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load offset=8
              local.tee 0
              i32.const 33554432
              i32.and
              br_if 0 (;@5;)
              local.get 0
              i32.const 67108864
              i32.and
              br_if 3 (;@2;)
              i32.const 10
              local.set 0
              block  ;; label = @6
                local.get 3
                i32.load
                local.tee 4
                local.get 4
                i32.const 31
                i32.shr_s
                local.tee 3
                i32.xor
                local.get 3
                i32.sub
                local.tee 5
                i32.const 1000
                i32.lt_u
                br_if 0 (;@6;)
                i32.const 10
                local.set 0
                loop  ;; label = @7
                  local.get 2
                  i32.const 6
                  i32.add
                  local.get 0
                  i32.add
                  local.tee 6
                  i32.const -4
                  i32.add
                  local.get 5
                  local.tee 3
                  local.get 3
                  i32.const 10000
                  i32.div_u
                  local.tee 5
                  i32.const 10000
                  i32.mul
                  i32.sub
                  local.tee 7
                  i32.const 65535
                  i32.and
                  i32.const 100
                  i32.div_u
                  local.tee 8
                  i32.const 1
                  i32.shl
                  i32.load16_u offset=39305 align=1
                  i32.store16 align=1
                  local.get 6
                  i32.const -2
                  i32.add
                  local.get 7
                  local.get 8
                  i32.const 100
                  i32.mul
                  i32.sub
                  i32.const 65535
                  i32.and
                  i32.const 1
                  i32.shl
                  i32.load16_u offset=39305 align=1
                  i32.store16 align=1
                  local.get 0
                  i32.const -4
                  i32.add
                  local.set 0
                  local.get 3
                  i32.const 9999999
                  i32.gt_u
                  br_if 0 (;@7;)
                end
              end
              local.get 5
              i32.const 9
              i32.gt_u
              br_if 1 (;@4;)
              local.get 5
              local.set 3
              br 2 (;@3;)
            end
            local.get 3
            i32.load
            local.set 3
            i32.const 9
            local.set 0
            loop  ;; label = @5
              local.get 2
              i32.const 6
              i32.add
              local.get 0
              i32.add
              i32.const -2
              i32.add
              local.get 3
              i32.const 15
              i32.and
              i32.load8_u offset=39102
              i32.store8
              local.get 0
              i32.const -1
              i32.add
              local.set 0
              local.get 3
              i32.const 4
              i32.shr_u
              local.tee 3
              br_if 0 (;@5;)
            end
            local.get 1
            i32.const 1
            i32.const 40210
            i32.const 2
            local.get 2
            i32.const 6
            i32.add
            local.get 0
            i32.add
            i32.const -1
            i32.add
            i32.const 9
            local.get 0
            i32.sub
            call $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter12pad_integral
            local.set 0
            br 3 (;@1;)
          end
          local.get 2
          i32.const 6
          i32.add
          local.get 0
          i32.const -2
          i32.add
          local.tee 0
          i32.add
          local.get 5
          local.get 5
          i32.const 65535
          i32.and
          i32.const 100
          i32.div_u
          local.tee 3
          i32.const 100
          i32.mul
          i32.sub
          i32.const 65535
          i32.and
          i32.const 1
          i32.shl
          i32.load16_u offset=39305 align=1
          i32.store16 align=1
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 4
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 2
          i32.const 6
          i32.add
          local.get 0
          i32.const -1
          i32.add
          local.tee 0
          i32.add
          local.get 3
          i32.const 1
          i32.shl
          i32.load8_u offset=39306
          i32.store8
        end
        local.get 1
        local.get 4
        i32.const -1
        i32.xor
        i32.const 31
        i32.shr_u
        i32.const 1
        i32.const 0
        local.get 2
        i32.const 6
        i32.add
        local.get 0
        i32.add
        i32.const 10
        local.get 0
        i32.sub
        call $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter12pad_integral
        local.set 0
        br 1 (;@1;)
      end
      local.get 3
      i32.load
      local.set 3
      i32.const 9
      local.set 0
      loop  ;; label = @2
        local.get 2
        i32.const 6
        i32.add
        local.get 0
        i32.add
        i32.const -2
        i32.add
        local.get 3
        i32.const 15
        i32.and
        i32.load8_u offset=40212
        i32.store8
        local.get 0
        i32.const -1
        i32.add
        local.set 0
        local.get 3
        i32.const 4
        i32.shr_u
        local.tee 3
        br_if 0 (;@2;)
      end
      local.get 1
      i32.const 1
      i32.const 40210
      i32.const 2
      local.get 2
      i32.const 6
      i32.add
      local.get 0
      i32.add
      i32.const -1
      i32.add
      i32.const 9
      local.get 0
      i32.sub
      call $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter12pad_integral
      local.set 0
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter12pad_integral (type 11) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    i32.const 43
    i32.const -1
    local.get 0
    i32.load offset=8
    local.tee 6
    i32.const 2097152
    i32.and
    local.tee 7
    select
    local.set 8
    local.get 7
    i32.const 21
    i32.shr_u
    i32.const 1
    local.get 1
    select
    local.get 5
    i32.add
    local.set 9
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.const 8388608
        i32.and
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      i32.const 0
      local.set 10
      block  ;; label = @2
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.set 7
        local.get 3
        local.set 11
        loop  ;; label = @3
          local.get 10
          local.get 7
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.set 10
          local.get 7
          i32.const 1
          i32.add
          local.set 7
          local.get 11
          i32.const -1
          i32.add
          local.tee 11
          br_if 0 (;@3;)
        end
      end
      local.get 10
      local.get 9
      i32.add
      local.set 9
    end
    local.get 8
    i32.const 45
    local.get 1
    select
    local.set 12
    block  ;; label = @1
      block  ;; label = @2
        local.get 9
        local.get 0
        i32.load16_u offset=12
        local.tee 8
        i32.ge_u
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 6
              i32.const 16777216
              i32.and
              br_if 0 (;@5;)
              local.get 8
              local.get 9
              i32.sub
              local.set 13
              i32.const 0
              local.set 7
              i32.const 0
              local.set 8
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 6
                    i32.const 29
                    i32.shr_u
                    i32.const 3
                    i32.and
                    br_table 2 (;@6;) 0 (;@8;) 1 (;@7;) 0 (;@8;) 2 (;@6;)
                  end
                  local.get 13
                  local.set 8
                  br 1 (;@6;)
                end
                local.get 13
                i32.const 65534
                i32.and
                i32.const 1
                i32.shr_u
                local.set 8
              end
              local.get 6
              i32.const 2097151
              i32.and
              local.set 1
              local.get 0
              i32.load offset=4
              local.set 9
              local.get 0
              i32.load
              local.set 11
              loop  ;; label = @6
                local.get 7
                i32.const 65535
                i32.and
                local.get 8
                i32.const 65535
                i32.and
                i32.ge_u
                br_if 2 (;@4;)
                i32.const 1
                local.set 10
                local.get 7
                i32.const 1
                i32.add
                local.set 7
                local.get 11
                local.get 1
                local.get 9
                i32.load offset=16
                call_indirect (type 0)
                i32.eqz
                br_if 0 (;@6;)
                br 5 (;@1;)
              end
            end
            local.get 0
            local.get 0
            i64.load offset=8 align=4
            local.tee 14
            i32.wrap_i64
            i32.const -1612709888
            i32.and
            i32.const 536870960
            i32.or
            i32.store offset=8
            i32.const 1
            local.set 10
            local.get 0
            i32.load
            local.tee 11
            local.get 0
            i32.load offset=4
            local.tee 1
            local.get 12
            local.get 2
            local.get 3
            call $_RNvNvMsa_NtCsdmBIiMovVma_4core3fmtNtB7_9Formatter12pad_integral12write_prefix
            br_if 3 (;@1;)
            i32.const 0
            local.set 7
            local.get 8
            local.get 9
            i32.sub
            i32.const 65535
            i32.and
            local.set 9
            loop  ;; label = @5
              local.get 7
              i32.const 65535
              i32.and
              local.get 9
              i32.ge_u
              br_if 2 (;@3;)
              i32.const 1
              local.set 10
              local.get 7
              i32.const 1
              i32.add
              local.set 7
              local.get 11
              i32.const 48
              local.get 1
              i32.load offset=16
              call_indirect (type 0)
              i32.eqz
              br_if 0 (;@5;)
              br 4 (;@1;)
            end
          end
          i32.const 1
          local.set 10
          local.get 11
          local.get 9
          local.get 12
          local.get 2
          local.get 3
          call $_RNvNvMsa_NtCsdmBIiMovVma_4core3fmtNtB7_9Formatter12pad_integral12write_prefix
          br_if 2 (;@1;)
          local.get 11
          local.get 4
          local.get 5
          local.get 9
          i32.load offset=12
          call_indirect (type 1)
          br_if 2 (;@1;)
          local.get 13
          local.get 8
          i32.sub
          i32.const 65535
          i32.and
          local.set 0
          i32.const 0
          local.set 7
          loop  ;; label = @4
            block  ;; label = @5
              local.get 7
              i32.const 65535
              i32.and
              local.get 0
              i32.lt_u
              br_if 0 (;@5;)
              i32.const 0
              return
            end
            i32.const 1
            local.set 10
            local.get 7
            i32.const 1
            i32.add
            local.set 7
            local.get 11
            local.get 1
            local.get 9
            i32.load offset=16
            call_indirect (type 0)
            i32.eqz
            br_if 0 (;@4;)
            br 3 (;@1;)
          end
        end
        i32.const 1
        local.set 10
        local.get 11
        local.get 4
        local.get 5
        local.get 1
        i32.load offset=12
        call_indirect (type 1)
        br_if 1 (;@1;)
        local.get 0
        local.get 14
        i64.store offset=8 align=4
        i32.const 0
        return
      end
      i32.const 1
      local.set 10
      local.get 0
      i32.load
      local.tee 7
      local.get 0
      i32.load offset=4
      local.tee 11
      local.get 12
      local.get 2
      local.get 3
      call $_RNvNvMsa_NtCsdmBIiMovVma_4core3fmtNtB7_9Formatter12pad_integral12write_prefix
      br_if 0 (;@1;)
      local.get 7
      local.get 4
      local.get 5
      local.get 11
      i32.load offset=12
      call_indirect (type 1)
      local.set 10
    end
    local.get 10)
  (func $_RNvXs3_NtCsdwI7iSz8jyL_10myrmic_sdk5errorNtB5_8ApiErrorNtNtCsdmBIiMovVma_4core3fmt5Debug3fmt (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 0
                          i32.load
                          br_table 0 (;@11;) 1 (;@10;) 2 (;@9;) 3 (;@8;) 4 (;@7;) 5 (;@6;) 6 (;@5;) 7 (;@4;) 8 (;@3;) 9 (;@2;) 0 (;@11;)
                        end
                        local.get 2
                        local.get 0
                        i32.const 4
                        i32.add
                        i32.store offset=8
                        local.get 1
                        i32.const 36400
                        i32.const 16
                        local.get 2
                        i32.const 8
                        i32.add
                        i32.const 36384
                        call $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish
                        local.set 1
                        br 9 (;@1;)
                      end
                      local.get 1
                      i32.load
                      i32.const 36416
                      i32.const 5
                      local.get 1
                      i32.load offset=4
                      i32.load offset=12
                      call_indirect (type 1)
                      local.set 1
                      br 8 (;@1;)
                    end
                    local.get 1
                    i32.load
                    i32.const 36421
                    i32.const 8
                    local.get 1
                    i32.load offset=4
                    i32.load offset=12
                    call_indirect (type 1)
                    local.set 1
                    br 7 (;@1;)
                  end
                  local.get 2
                  local.get 0
                  i32.const 4
                  i32.add
                  i32.store offset=8
                  local.get 1
                  i32.const 36448
                  i32.const 5
                  local.get 2
                  i32.const 8
                  i32.add
                  i32.const 36432
                  call $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish
                  local.set 1
                  br 6 (;@1;)
                end
                local.get 1
                i32.load
                i32.const 36453
                i32.const 8
                local.get 1
                i32.load offset=4
                i32.load offset=12
                call_indirect (type 1)
                local.set 1
                br 5 (;@1;)
              end
              local.get 1
              i32.load
              i32.const 36461
              i32.const 14
              local.get 1
              i32.load offset=4
              i32.load offset=12
              call_indirect (type 1)
              local.set 1
              br 4 (;@1;)
            end
            local.get 1
            i32.load
            i32.const 36475
            i32.const 8
            local.get 1
            i32.load offset=4
            i32.load offset=12
            call_indirect (type 1)
            local.set 1
            br 3 (;@1;)
          end
          local.get 1
          i32.load
          i32.const 36483
          i32.const 18
          local.get 1
          i32.load offset=4
          i32.load offset=12
          call_indirect (type 1)
          local.set 1
          br 2 (;@1;)
        end
        local.get 1
        i32.load
        i32.const 36501
        i32.const 11
        local.get 1
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 1)
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      local.get 0
      i32.const 8
      i32.add
      i32.store offset=4
      local.get 1
      i32.load
      i32.const 36512
      i32.const 12
      local.get 1
      i32.load offset=4
      i32.load offset=12
      call_indirect (type 1)
      local.set 3
      local.get 2
      i32.const 0
      i32.store8 offset=13
      local.get 2
      local.get 3
      i32.store8 offset=12
      local.get 2
      local.get 1
      i32.store offset=8
      local.get 2
      i32.const 8
      i32.add
      i32.const 36524
      i32.const 8
      local.get 0
      i32.const 4
      i32.add
      i32.const 3
      call $_RNvMs1_NtNtCsdmBIiMovVma_4core3fmt8buildersNtB5_11DebugStruct5field
      i32.const 36532
      i32.const 6
      local.get 2
      i32.const 4
      i32.add
      i32.const 4
      call $_RNvMs1_NtNtCsdmBIiMovVma_4core3fmt8buildersNtB5_11DebugStruct5field
      local.set 4
      local.get 2
      i32.load8_u offset=13
      local.tee 0
      local.get 2
      i32.load8_u offset=12
      local.tee 3
      i32.or
      local.set 1
      local.get 0
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 3
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 4
        i32.load
        local.tee 1
        i32.load8_u offset=10
        i32.const 128
        i32.and
        br_if 0 (;@2;)
        local.get 1
        i32.load
        i32.const 39135
        i32.const 2
        local.get 1
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 1)
        local.set 1
        br 1 (;@1;)
      end
      local.get 1
      i32.load
      i32.const 39133
      i32.const 1
      local.get 1
      i32.load offset=4
      i32.load offset=12
      call_indirect (type 1)
      local.set 1
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
    i32.const 1
    i32.and)
  (func $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish (type 12) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    i32.const 1
    local.set 6
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 7
      local.get 1
      local.get 2
      local.get 0
      i32.load offset=4
      local.tee 8
      i32.load offset=12
      local.tee 9
      call_indirect (type 1)
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load8_u offset=10
          i32.const 128
          i32.and
          br_if 0 (;@3;)
          i32.const 1
          local.set 6
          local.get 7
          i32.const 39130
          i32.const 1
          local.get 9
          call_indirect (type 1)
          br_if 2 (;@1;)
          local.get 3
          local.get 0
          local.get 4
          i32.load offset=12
          call_indirect (type 0)
          br_if 2 (;@1;)
          local.get 0
          i32.load
          local.set 7
          local.get 0
          i32.load offset=4
          i32.load offset=12
          local.set 9
          br 1 (;@2;)
        end
        local.get 7
        i32.const 39131
        i32.const 2
        local.get 9
        call_indirect (type 1)
        br_if 1 (;@1;)
        i32.const 1
        local.set 6
        local.get 5
        i32.const 1
        i32.store8 offset=15
        local.get 5
        local.get 8
        i32.store offset=4
        local.get 5
        local.get 7
        i32.store
        local.get 5
        i32.const 39140
        i32.store offset=20
        local.get 5
        local.get 0
        i64.load offset=8 align=4
        i64.store offset=24 align=4
        local.get 5
        local.get 5
        i32.const 15
        i32.add
        i32.store offset=8
        local.get 5
        local.get 5
        i32.store offset=16
        local.get 3
        local.get 5
        i32.const 16
        i32.add
        local.get 4
        i32.load offset=12
        call_indirect (type 0)
        br_if 1 (;@1;)
        local.get 5
        i32.load offset=16
        i32.const 39128
        i32.const 2
        local.get 5
        i32.load offset=20
        i32.load offset=12
        call_indirect (type 1)
        br_if 1 (;@1;)
      end
      local.get 7
      i32.const 39134
      i32.const 1
      local.get 9
      call_indirect (type 1)
      local.set 6
    end
    local.get 5
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 6)
  (func $_RNvXsW_NtNtCsdmBIiMovVma_4core3fmt3nummNtB7_5Debug3fmt (type 0) (param i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 1
      i32.load offset=8
      local.tee 2
      i32.const 33554432
      i32.and
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 2
        i32.const 67108864
        i32.and
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        call $_RNvXs8_NtNtNtCsdmBIiMovVma_4core3fmt3num3impmNtB9_7Display3fmt
        return
      end
      local.get 0
      local.get 1
      call $_RNvXsw_NtNtCsdmBIiMovVma_4core3fmt3nummNtB7_8UpperHex3fmt
      return
    end
    local.get 0
    local.get 1
    call $_RNvXsu_NtNtCsdmBIiMovVma_4core3fmt3nummNtB7_8LowerHex3fmt)
  (func $_RNvMs1_NtNtCsdmBIiMovVma_4core3fmt8buildersNtB5_11DebugStruct5field (type 12) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    i32.const 1
    local.set 6
    block  ;; label = @1
      local.get 0
      i32.load8_u offset=4
      br_if 0 (;@1;)
      local.get 0
      i32.load8_u offset=5
      local.set 7
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 8
        i32.load8_u offset=10
        i32.const 128
        i32.and
        br_if 0 (;@2;)
        i32.const 1
        local.set 6
        local.get 8
        i32.load
        i32.const 39121
        i32.const 39118
        local.get 7
        i32.const 1
        i32.and
        local.tee 7
        select
        i32.const 2
        i32.const 3
        local.get 7
        select
        local.get 8
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 1)
        br_if 1 (;@1;)
        local.get 8
        i32.load
        local.get 1
        local.get 2
        local.get 8
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 1)
        br_if 1 (;@1;)
        local.get 8
        i32.load
        i32.const 39123
        i32.const 2
        local.get 8
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 1)
        br_if 1 (;@1;)
        local.get 3
        local.get 8
        local.get 4
        call_indirect (type 0)
        local.set 6
        br 1 (;@1;)
      end
      i32.const 1
      local.set 6
      block  ;; label = @2
        local.get 7
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 8
        i32.load
        i32.const 39125
        i32.const 3
        local.get 8
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 1)
        br_if 1 (;@1;)
      end
      i32.const 1
      local.set 6
      local.get 5
      i32.const 1
      i32.store8 offset=15
      local.get 5
      i32.const 39140
      i32.store offset=20
      local.get 5
      local.get 8
      i64.load align=4
      i64.store align=4
      local.get 5
      local.get 8
      i64.load offset=8 align=4
      i64.store offset=24 align=4
      local.get 5
      local.get 5
      i32.const 15
      i32.add
      i32.store offset=8
      local.get 5
      local.get 5
      i32.store offset=16
      local.get 5
      local.get 1
      local.get 2
      call $_RNvXs0_NtNtCsdmBIiMovVma_4core3fmt8buildersNtB5_10PadAdapterNtB7_5Write9write_str
      br_if 0 (;@1;)
      local.get 5
      i32.const 39123
      i32.const 2
      call $_RNvXs0_NtNtCsdmBIiMovVma_4core3fmt8buildersNtB5_10PadAdapterNtB7_5Write9write_str
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 3
        local.get 5
        i32.const 16
        i32.add
        local.get 4
        call_indirect (type 0)
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        local.set 6
        br 1 (;@1;)
      end
      local.get 5
      i32.load offset=16
      i32.const 39128
      i32.const 2
      local.get 5
      i32.load offset=20
      i32.load offset=12
      call_indirect (type 1)
      local.set 6
    end
    local.get 0
    i32.const 1
    i32.store8 offset=5
    local.get 0
    local.get 6
    i32.store8 offset=4
    local.get 5
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_RNvXs1g_NtCsdmBIiMovVma_4core3fmtRmNtB6_5Debug3fmtCs31HxFg2iDf6_9sha1_smol (type 0) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      local.get 1
      i32.load offset=8
      local.tee 2
      i32.const 33554432
      i32.and
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 2
        i32.const 67108864
        i32.and
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        call $_RNvXs8_NtNtNtCsdmBIiMovVma_4core3fmt3num3impmNtB9_7Display3fmt
        return
      end
      local.get 0
      local.get 1
      call $_RNvXsw_NtNtCsdmBIiMovVma_4core3fmt3nummNtB7_8UpperHex3fmt
      return
    end
    local.get 0
    local.get 1
    call $_RNvXsu_NtNtCsdmBIiMovVma_4core3fmt3nummNtB7_8LowerHex3fmt)
  (func $_RNvXs4_NtCsdmBIiMovVma_4core6optionINtB5_6OptionINtNtCsjAdaHq5oevx_5alloc6borrow3CoweEENtNtB7_5clone5Clone5cloneCsh49aHnobDmh_5bench (type 6) (param i32 i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 2
      i32.const -2
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=8
      local.set 3
      local.get 1
      i32.load offset=4
      local.set 1
      block  ;; label = @2
        local.get 2
        i32.const -1
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        local.get 3
        call $_RINvXs_NvMNtCsjAdaHq5oevx_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsdwI7iSz8jyL_10myrmic_sdk
        return
      end
      local.get 0
      local.get 3
      i32.store offset=8
      local.get 0
      local.get 1
      i32.store offset=4
      local.get 0
      i32.const -1
      i32.store
      return
    end
    local.get 0
    i32.const -2
    i32.store)
  (func $_RINvXs_NvMNtCsjAdaHq5oevx_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsdwI7iSz8jyL_10myrmic_sdk (type 5) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    call $_RNvMs5_NtCsjAdaHq5oevx_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdwI7iSz8jyL_10myrmic_sdk
    local.get 3
    i32.load offset=8
    local.set 4
    local.get 3
    i32.load offset=12
    local.set 5
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 0
    local.get 5
    i32.store offset=4
    local.get 0
    local.get 4
    i32.store
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        local.get 1
        local.get 2
        memory.copy
      end
      local.get 0
      local.get 2
      i32.store offset=8
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_RNvXs8_NtNtNtCsdmBIiMovVma_4core3fmt3num3impmNtB9_7Display3fmt (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 10
    local.set 3
    local.get 0
    i32.load
    local.tee 4
    local.set 5
    block  ;; label = @1
      local.get 4
      i32.const 1000
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 10
      local.set 3
      local.get 4
      local.set 5
      loop  ;; label = @2
        local.get 2
        i32.const 6
        i32.add
        local.get 3
        i32.add
        local.tee 6
        i32.const -4
        i32.add
        local.get 5
        local.tee 0
        local.get 0
        i32.const 10000
        i32.div_u
        local.tee 5
        i32.const 10000
        i32.mul
        i32.sub
        local.tee 7
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 8
        i32.const 1
        i32.shl
        i32.load16_u offset=39305 align=1
        i32.store16 align=1
        local.get 6
        i32.const -2
        i32.add
        local.get 7
        local.get 8
        i32.const 100
        i32.mul
        i32.sub
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.load16_u offset=39305 align=1
        i32.store16 align=1
        local.get 3
        i32.const -4
        i32.add
        local.set 3
        local.get 0
        i32.const 9999999
        i32.gt_u
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        i32.const 9
        i32.gt_u
        br_if 0 (;@2;)
        local.get 5
        local.set 0
        br 1 (;@1;)
      end
      local.get 2
      i32.const 6
      i32.add
      local.get 3
      i32.const -2
      i32.add
      local.tee 3
      i32.add
      local.get 5
      local.get 5
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 0
      i32.const 100
      i32.mul
      i32.sub
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.load16_u offset=39305 align=1
      i32.store16 align=1
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 2
      i32.const 6
      i32.add
      local.get 3
      i32.const -1
      i32.add
      local.tee 3
      i32.add
      local.get 0
      i32.const 1
      i32.shl
      i32.load8_u offset=39306
      i32.store8
    end
    local.get 1
    i32.const 1
    i32.const 1
    i32.const 0
    local.get 2
    i32.const 6
    i32.add
    local.get 3
    i32.add
    i32.const 10
    local.get 3
    i32.sub
    call $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter12pad_integral
    local.set 3
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $_RNvXsw_NtNtCsdmBIiMovVma_4core3fmt3nummNtB7_8UpperHex3fmt (type 0) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 3
    i32.const 9
    local.set 0
    loop  ;; label = @1
      local.get 2
      i32.const 8
      i32.add
      local.get 0
      i32.add
      i32.const -2
      i32.add
      local.get 3
      i32.const 15
      i32.and
      i32.load8_u offset=40212
      i32.store8
      local.get 0
      i32.const -1
      i32.add
      local.set 0
      local.get 3
      i32.const 4
      i32.shr_u
      local.tee 3
      br_if 0 (;@1;)
    end
    local.get 1
    i32.const 1
    i32.const 40210
    i32.const 2
    local.get 2
    i32.const 8
    i32.add
    local.get 0
    i32.add
    i32.const -1
    i32.add
    i32.const 9
    local.get 0
    i32.sub
    call $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter12pad_integral
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_RNvXsu_NtNtCsdmBIiMovVma_4core3fmt3nummNtB7_8LowerHex3fmt (type 0) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 3
    i32.const 9
    local.set 0
    loop  ;; label = @1
      local.get 2
      i32.const 8
      i32.add
      local.get 0
      i32.add
      i32.const -2
      i32.add
      local.get 3
      i32.const 15
      i32.and
      i32.load8_u offset=39102
      i32.store8
      local.get 0
      i32.const -1
      i32.add
      local.set 0
      local.get 3
      i32.const 4
      i32.shr_u
      local.tee 3
      br_if 0 (;@1;)
    end
    local.get 1
    i32.const 1
    i32.const 40210
    i32.const 2
    local.get 2
    i32.const 8
    i32.add
    local.get 0
    i32.add
    i32.const -1
    i32.add
    i32.const 9
    local.get 0
    i32.sub
    call $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter12pad_integral
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $command_bench (type 13) (param i64 i64 i64 i64 i32) (result i32)
    (local i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 416
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              i32.eqz
              br_if 0 (;@5;)
              i32.const 38
              local.set 4
              i32.const 36538
              local.set 6
              br 1 (;@4;)
            end
            i32.const 1000
            local.set 4
            call $_RNvCsh49aHnobDmh_5bench6now_us
            local.set 7
            block  ;; label = @5
              loop  ;; label = @6
                local.get 4
                i32.eqz
                br_if 1 (;@5;)
                local.get 5
                call $_RNvCsh49aHnobDmh_5bench6now_us
                i64.store offset=40
                local.get 5
                i32.const 40
                i32.add
                local.set 6
                local.get 4
                i32.const -1
                i32.add
                local.set 4
                br 0 (;@6;)
              end
            end
            i32.const 35948
            i32.const 25
            i64.const 1000
            i32.const 35973
            i32.const 4
            call $_RNvCsh49aHnobDmh_5bench6now_us
            local.get 7
            i64.sub
            call $_RNvCsh49aHnobDmh_5bench6report
            block  ;; label = @5
              i32.const 0
              i32.load offset=71224
              br_if 0 (;@5;)
              i32.const 0
              i32.const -1
              i32.store offset=71224
              call $_RNvCsuH4bZJUquU_13bench_kernels4fill
              i32.const 0
              i32.const 0
              i32.load offset=71224
              i32.const 1
              i32.add
              i32.store offset=71224
              call $_RNvCsh49aHnobDmh_5bench6now_us
              local.set 8
              i64.const 0
              local.set 7
              block  ;; label = @6
                i32.const 0
                i32.load offset=71224
                br_if 0 (;@6;)
                i32.const 0
                i32.const -1
                i32.store offset=71224
                i64.const 0
                local.set 7
                i32.const 20
                local.set 4
                block  ;; label = @7
                  loop  ;; label = @8
                    local.get 4
                    i32.eqz
                    br_if 1 (;@7;)
                    local.get 4
                    i32.const -1
                    i32.add
                    local.set 4
                    local.get 7
                    call $_RNvCsuH4bZJUquU_13bench_kernels3sum
                    i64.extend_i32_u
                    i64.xor
                    local.set 7
                    br 0 (;@8;)
                  end
                end
                i32.const 0
                i32.const 0
                i32.load offset=71224
                i32.const 1
                i32.add
                i32.store offset=71224
                local.get 5
                local.get 7
                i64.store offset=32
              end
              i32.const 35977
              i32.const 3
              i64.const 40960
              i32.const 35980
              i32.const 4
              call $_RNvCsh49aHnobDmh_5bench6now_us
              local.get 8
              i64.sub
              call $_RNvCsh49aHnobDmh_5bench6report
              call $_RNvCsh49aHnobDmh_5bench6now_us
              local.set 8
              block  ;; label = @6
                i32.const 0
                i32.load offset=71224
                br_if 0 (;@6;)
                i32.const 0
                i32.const -1
                i32.store offset=71224
                i32.const 20
                local.set 4
                block  ;; label = @7
                  loop  ;; label = @8
                    local.get 4
                    i32.eqz
                    br_if 1 (;@7;)
                    local.get 4
                    i32.const -1
                    i32.add
                    local.set 4
                    call $_RNvCsuH4bZJUquU_13bench_kernels5scale
                    br 0 (;@8;)
                  end
                end
                i32.const 0
                i32.const 0
                i32.load offset=71224
                i32.const 1
                i32.add
                i32.store offset=71224
              end
              i32.const 35984
              i32.const 5
              i64.const 40960
              i32.const 35980
              i32.const 4
              call $_RNvCsh49aHnobDmh_5bench6now_us
              local.get 8
              i64.sub
              call $_RNvCsh49aHnobDmh_5bench6report
              call $_RNvCsh49aHnobDmh_5bench6now_us
              local.set 8
              block  ;; label = @6
                i32.const 0
                i32.load offset=62988
                br_if 0 (;@6;)
                i32.const 0
                i32.const -1
                i32.store offset=62988
                i32.const 50
                local.set 4
                block  ;; label = @7
                  loop  ;; label = @8
                    local.get 4
                    i32.eqz
                    br_if 1 (;@7;)
                    local.get 4
                    i32.const -1
                    i32.add
                    local.set 4
                    call $_RNvCsuH4bZJUquU_13bench_kernels4copy
                    br 0 (;@8;)
                  end
                end
                i32.const 0
                i32.const 0
                i32.load offset=62988
                i32.const 1
                i32.add
                i32.store offset=62988
              end
              i32.const 35989
              i32.const 9
              i64.const 200
              i32.const 35998
              i32.const 2
              call $_RNvCsh49aHnobDmh_5bench6now_us
              local.get 8
              i64.sub
              call $_RNvCsh49aHnobDmh_5bench6report
              call $_RNvCsh49aHnobDmh_5bench6now_us
              local.set 8
              local.get 5
              local.get 7
              call $_RNvCsuH4bZJUquU_13bench_kernels10xorshift64
              local.get 7
              i64.xor
              i64.store offset=32
              i32.const 36000
              i32.const 10
              i64.const 10000
              i32.const 36010
              i32.const 4
              call $_RNvCsh49aHnobDmh_5bench6now_us
              local.get 8
              i64.sub
              call $_RNvCsh49aHnobDmh_5bench6report
              i32.const 200
              local.set 4
              call $_RNvCsh49aHnobDmh_5bench6now_us
              local.set 7
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 4
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 5
                  i32.const 40
                  i32.add
                  call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions3tap8list_len
                  local.get 5
                  i32.load offset=40
                  local.set 6
                  local.get 5
                  local.get 5
                  i32.load offset=44
                  i32.store offset=44
                  local.get 5
                  local.get 6
                  i32.const -1
                  i32.eq
                  i32.store offset=40
                  local.get 5
                  i32.const 40
                  i32.add
                  local.set 6
                  local.get 4
                  i32.const -1
                  i32.add
                  local.set 4
                  br 0 (;@7;)
                end
              end
              i32.const 36014
              i32.const 26
              i64.const 200
              i32.const 35973
              i32.const 4
              call $_RNvCsh49aHnobDmh_5bench6now_us
              local.get 7
              i64.sub
              call $_RNvCsh49aHnobDmh_5bench6report
              i32.const 200
              local.set 4
              call $_RNvCsh49aHnobDmh_5bench6now_us
              local.set 7
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 4
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 5
                  i32.const 9
                  call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions4gpio16is_pin_supported
                  i32.const 1
                  i32.eq
                  i32.store8 offset=40
                  local.get 5
                  i32.const 40
                  i32.add
                  local.set 6
                  local.get 4
                  i32.const -1
                  i32.add
                  local.set 4
                  br 0 (;@7;)
                end
              end
              i32.const 36040
              i32.const 22
              i64.const 200
              i32.const 35973
              i32.const 4
              call $_RNvCsh49aHnobDmh_5bench6now_us
              local.get 7
              i64.sub
              call $_RNvCsh49aHnobDmh_5bench6report
              local.get 5
              i32.const 348
              i32.add
              i32.const 36
              i32.add
              local.set 9
              local.get 5
              i32.const 348
              i32.add
              i32.const 24
              i32.add
              local.set 10
              local.get 5
              i32.const 40
              i32.add
              i32.const 256
              i32.add
              local.set 11
              local.get 5
              i32.const 348
              i32.add
              i32.const 12
              i32.add
              local.set 12
              local.get 5
              i32.const 312
              i32.add
              i32.const 24
              i32.add
              local.set 13
              local.get 5
              i32.const 312
              i32.add
              i32.const 12
              i32.add
              local.set 14
              call $_RNvCsh49aHnobDmh_5bench6now_us
              local.set 7
              local.get 5
              i32.const 413
              i32.add
              local.set 15
              i32.const 0
              local.set 16
              loop  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 16
                            i32.const 10
                            i32.eq
                            br_if 0 (;@12;)
                            local.get 5
                            i32.const 348
                            i32.add
                            i32.const 35605
                            i32.const 11
                            call $_RINvXs_NvMNtCsjAdaHq5oevx_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsh49aHnobDmh_5bench
                            local.get 5
                            i32.const 40
                            i32.add
                            i32.const 0
                            i32.const 256
                            memory.fill
                            local.get 5
                            i32.const 300
                            i32.add
                            i32.const 8192
                            call $_RINvNtCsjAdaHq5oevx_5alloc3vec9from_elemhECsdwI7iSz8jyL_10myrmic_sdk
                            local.get 14
                            i32.const 35628
                            call $_RNvXs4_NtCsdmBIiMovVma_4core6optionINtB5_6OptionINtNtCsjAdaHq5oevx_5alloc6borrow3CoweEENtNtB7_5clone5Clone5cloneCsh49aHnobDmh_5bench
                            local.get 13
                            i32.const 35640
                            call $_RNvXs4_NtCsdmBIiMovVma_4core6optionINtB5_6OptionINtNtCsjAdaHq5oevx_5alloc6borrow3CoweEENtNtB7_5clone5Clone5cloneCsh49aHnobDmh_5bench
                            local.get 5
                            i32.const -2
                            i32.store offset=312
                            local.get 5
                            i32.load offset=304
                            local.set 17
                            local.get 5
                            i32.load offset=308
                            local.set 18
                            local.get 12
                            local.get 5
                            i32.const 312
                            i32.add
                            i32.const 36
                            memory.copy
                            local.get 5
                            local.get 11
                            i32.store offset=412
                            local.get 5
                            i32.load offset=360
                            local.set 4
                            local.get 5
                            local.get 5
                            i32.const 40
                            i32.add
                            i32.store offset=408
                            local.get 5
                            local.get 5
                            i32.const 40
                            i32.add
                            i32.store offset=404
                            local.get 4
                            i32.const -2
                            i32.eq
                            local.tee 19
                            br_if 1 (;@11;)
                            local.get 5
                            i32.const 404
                            i32.add
                            i32.const 1
                            call $_RNvMNtNtCs2WOo28oSl5V_8postcard3ser10serializerINtB2_10SerializerNtNtB4_7flavors5SliceE19try_push_varint_u32CsdwI7iSz8jyL_10myrmic_sdk
                            i32.const 255
                            i32.and
                            i32.const 255
                            i32.ne
                            br_if 3 (;@9;)
                            local.get 5
                            i32.const 404
                            i32.add
                            local.get 5
                            i32.load offset=364
                            local.get 5
                            i32.load offset=368
                            call $_RNvXs_NtNtCs2WOo28oSl5V_8postcard3ser10serializerQINtB4_10SerializerNtNtB6_7flavors5SliceENtNtCs3wU1vCl2ErL_10serde_core3ser10Serializer13serialize_strCsdwI7iSz8jyL_10myrmic_sdk
                            i32.const 255
                            i32.and
                            i32.const 255
                            i32.ne
                            br_if 3 (;@9;)
                            br 2 (;@10;)
                          end
                          i32.const 36062
                          i32.const 16
                          i64.const 10
                          i32.const 35973
                          i32.const 4
                          call $_RNvCsh49aHnobDmh_5bench6now_us
                          local.get 7
                          i64.sub
                          call $_RNvCsh49aHnobDmh_5bench6report
                          local.get 5
                          i32.const 1
                          i32.store offset=352
                          local.get 5
                          local.get 5
                          i32.const 32
                          i32.add
                          i32.store offset=348
                          local.get 5
                          i32.const 40
                          i32.add
                          i32.const 35510
                          local.get 5
                          i32.const 348
                          i32.add
                          call $_RNvNtCsjAdaHq5oevx_5alloc3fmt6format
                          local.get 5
                          i32.const 348
                          i32.add
                          local.get 5
                          i32.load offset=44
                          local.tee 4
                          local.get 5
                          i32.load offset=48
                          i32.const 2
                          call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions7logging3log
                          local.get 5
                          i32.load offset=40
                          local.get 4
                          call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
                          i32.const 0
                          local.set 4
                          br 8 (;@3;)
                        end
                        local.get 5
                        i32.const 404
                        i32.add
                        i32.const 0
                        call $_RNvMNtNtCs2WOo28oSl5V_8postcard3ser10serializerINtB2_10SerializerNtNtB4_7flavors5SliceE19try_push_varint_u32CsdwI7iSz8jyL_10myrmic_sdk
                        i32.const 255
                        i32.and
                        i32.const 255
                        i32.ne
                        br_if 1 (;@9;)
                      end
                      local.get 5
                      i32.const 404
                      i32.add
                      local.get 10
                      call $_RINvXs5_NtNtCs2WOo28oSl5V_8postcard3ser10serializerQINtB6_10SerializerNtNtB8_7flavors5SliceENtNtCs3wU1vCl2ErL_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCsdmBIiMovVma_4core6option6OptionINtNtCsjAdaHq5oevx_5alloc6borrow3CoweEEECsdwI7iSz8jyL_10myrmic_sdk
                      i32.const 255
                      i32.and
                      i32.const 255
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 404
                      i32.add
                      local.get 9
                      call $_RINvXs5_NtNtCs2WOo28oSl5V_8postcard3ser10serializerQINtB6_10SerializerNtNtB8_7flavors5SliceENtNtCs3wU1vCl2ErL_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCsdmBIiMovVma_4core6option6OptionINtNtCsjAdaHq5oevx_5alloc6borrow3CoweEEECsdwI7iSz8jyL_10myrmic_sdk
                      i32.const 255
                      i32.and
                      i32.const 255
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 404
                      i32.add
                      local.get 5
                      i32.load offset=352
                      local.get 5
                      i32.load offset=356
                      call $_RNvXs_NtNtCs2WOo28oSl5V_8postcard3ser10serializerQINtB4_10SerializerNtNtB6_7flavors5SliceENtNtCs3wU1vCl2ErL_10serde_core3ser10Serializer13serialize_strCsdwI7iSz8jyL_10myrmic_sdk
                      i32.const 255
                      i32.and
                      i32.const 255
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 5
                      i32.load offset=404
                      local.tee 20
                      br_if 1 (;@8;)
                    end
                    i32.const 1
                    local.set 18
                    i32.const 3
                    local.set 21
                    i32.const 41143
                    local.set 22
                    i32.const 23
                    local.set 20
                    br 1 (;@7;)
                  end
                  local.get 5
                  i32.const 404
                  i32.add
                  local.get 5
                  i32.const 40
                  i32.add
                  local.get 5
                  i32.load offset=408
                  local.get 20
                  i32.sub
                  local.get 17
                  local.get 18
                  call $_RNvNtNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions2db2kv11c_functions7key_get
                  call $_RNvXNtCsdwI7iSz8jyL_10myrmic_sdk5errorlNtB2_9ErrorCode9to_result
                  block  ;; label = @8
                    local.get 5
                    i32.load offset=404
                    local.tee 21
                    i32.const -1
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 5
                    i32.load offset=412
                    local.set 20
                    local.get 5
                    i32.load offset=408
                    local.set 22
                    i32.const 1
                    local.set 18
                    br 1 (;@7;)
                  end
                  local.get 5
                  local.get 17
                  i32.store offset=396
                  local.get 5
                  local.get 17
                  local.get 18
                  i32.add
                  i32.store offset=400
                  local.get 5
                  i32.const 24
                  i32.add
                  local.get 5
                  i32.const 396
                  i32.add
                  call $_RNvXs_NtNtCs2WOo28oSl5V_8postcard2de7flavorsNtB4_5SliceNtB4_6Flavor3pop.174
                  local.get 5
                  i32.load8_u offset=25
                  local.set 23
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 5
                      i32.load8_u offset=24
                      br_if 0 (;@9;)
                      local.get 23
                      i32.const 255
                      i32.and
                      local.set 18
                      i32.const -1
                      local.set 21
                      i32.const 9
                      local.set 23
                      block  ;; label = @10
                        local.get 18
                        br_table 2 (;@8;) 0 (;@10;) 1 (;@9;)
                      end
                      local.get 5
                      i32.const 404
                      i32.add
                      local.get 5
                      i32.const 396
                      i32.add
                      call $_RNvMs0_NtNtCs2WOo28oSl5V_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsdwI7iSz8jyL_10myrmic_sdk
                      block  ;; label = @10
                        local.get 5
                        i32.load8_u offset=404
                        i32.const 1
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 5
                        i32.load8_u offset=405
                        local.set 23
                        br 1 (;@9;)
                      end
                      local.get 5
                      i32.const 16
                      i32.add
                      i32.const 0
                      local.get 5
                      i32.load offset=408
                      local.tee 18
                      i32.const 1048576
                      local.get 18
                      i32.const 1048576
                      i32.lt_u
                      select
                      local.get 5
                      i32.load offset=400
                      local.get 5
                      i32.load offset=396
                      i32.sub
                      local.get 18
                      i32.lt_u
                      select
                      call $_RNvMs5_NtCsjAdaHq5oevx_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdwI7iSz8jyL_10myrmic_sdk
                      local.get 5
                      i32.const 0
                      i32.store offset=412
                      local.get 5
                      local.get 5
                      i64.load offset=16
                      i64.store offset=404 align=4
                      block  ;; label = @10
                        loop  ;; label = @11
                          local.get 18
                          i32.eqz
                          br_if 1 (;@10;)
                          local.get 5
                          i32.const 8
                          i32.add
                          local.get 5
                          i32.const 396
                          i32.add
                          call $_RNvXs_NtNtCs2WOo28oSl5V_8postcard2de7flavorsNtB4_5SliceNtB4_6Flavor3pop.174
                          local.get 5
                          i32.load8_u offset=9
                          local.set 23
                          block  ;; label = @12
                            local.get 5
                            i32.load8_u offset=8
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 5
                            i32.load offset=404
                            local.get 5
                            i32.load offset=408
                            call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
                            br 3 (;@9;)
                          end
                          local.get 5
                          i32.const 404
                          i32.add
                          local.get 23
                          call $_RNvMsF_NtCsjAdaHq5oevx_5alloc3vecINtB5_3VechE4pushCsdwI7iSz8jyL_10myrmic_sdk
                          local.get 18
                          i32.const -1
                          i32.add
                          local.set 18
                          br 0 (;@11;)
                        end
                      end
                      local.get 5
                      i64.load32_u offset=409 align=1
                      local.get 5
                      i32.const 404
                      i32.add
                      i32.const 11
                      i32.add
                      i64.load8_u
                      i64.const 48
                      i64.shl
                      local.get 15
                      i64.load16_u align=1
                      i64.const 32
                      i64.shl
                      i64.or
                      i64.or
                      local.set 24
                      local.get 5
                      i32.load8_u offset=408
                      local.set 23
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 5
                          i32.load offset=404
                          local.tee 21
                          i32.const 2
                          i32.add
                          br_table 0 (;@11;) 2 (;@9;) 1 (;@10;)
                        end
                        local.get 24
                        local.set 8
                        br 1 (;@9;)
                      end
                      local.get 24
                      local.set 8
                      local.get 23
                      local.set 25
                      local.get 21
                      i32.const -3
                      i32.ne
                      br_if 1 (;@8;)
                    end
                    i32.const 1
                    local.set 18
                    i32.const 3
                    local.set 21
                    i32.const 41166
                    local.set 22
                    i32.const 26
                    local.set 20
                    local.get 23
                    local.set 25
                    br 1 (;@7;)
                  end
                  local.get 8
                  i32.wrap_i64
                  i32.const 8
                  i32.shl
                  local.get 25
                  i32.const 255
                  i32.and
                  i32.or
                  local.set 22
                  local.get 8
                  i64.const 24
                  i64.shr_u
                  i32.wrap_i64
                  local.set 20
                  i32.const 0
                  local.set 18
                end
                block  ;; label = @7
                  local.get 19
                  br_if 0 (;@7;)
                  local.get 4
                  local.get 5
                  i32.load offset=364
                  call $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueINtNtCsjAdaHq5oevx_5alloc6borrow3CoweEECsdwI7iSz8jyL_10myrmic_sdk
                end
                local.get 5
                i32.load offset=372
                local.get 5
                i32.load offset=376
                call $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjAdaHq5oevx_5alloc6borrow3CoweEEECsdwI7iSz8jyL_10myrmic_sdk
                local.get 5
                i32.load offset=384
                local.get 5
                i32.load offset=388
                call $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjAdaHq5oevx_5alloc6borrow3CoweEEECsdwI7iSz8jyL_10myrmic_sdk
                local.get 5
                i32.load offset=348
                local.get 5
                i32.load offset=352
                call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 18
                    i32.eqz
                    br_if 0 (;@8;)
                    i32.const 2
                    local.set 4
                    i32.const 18
                    local.set 6
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 21
                                  br_table 8 (;@7;) 0 (;@15;) 0 (;@15;) 1 (;@14;) 2 (;@13;) 3 (;@12;) 4 (;@11;) 3 (;@12;) 5 (;@10;) 6 (;@9;) 8 (;@7;)
                                end
                                i32.const 19
                                local.set 6
                                br 7 (;@7;)
                              end
                              local.get 20
                              local.set 6
                              br 6 (;@7;)
                            end
                            i32.const 9
                            local.set 6
                            br 5 (;@7;)
                          end
                          i32.const 36
                          local.set 6
                          br 4 (;@7;)
                        end
                        i32.const 20
                        local.set 6
                        br 3 (;@7;)
                      end
                      i32.const 34
                      local.set 6
                      br 2 (;@7;)
                    end
                    i32.const 40
                    local.set 6
                    br 1 (;@7;)
                  end
                  block  ;; label = @8
                    local.get 21
                    i32.const -1
                    i32.ne
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 4
                    br 1 (;@7;)
                  end
                  local.get 20
                  i32.const 5
                  local.get 20
                  i32.const 5
                  i32.lt_u
                  select
                  local.set 23
                  i32.const 0
                  local.set 19
                  local.get 22
                  local.set 6
                  i32.const 0
                  local.set 18
                  block  ;; label = @8
                    loop  ;; label = @9
                      block  ;; label = @10
                        local.get 19
                        local.tee 4
                        local.get 23
                        i32.ne
                        br_if 0 (;@10;)
                        i32.const 30
                        local.set 6
                        i32.const 2
                        local.set 4
                        br 2 (;@8;)
                      end
                      local.get 6
                      i32.load8_s
                      local.tee 20
                      i32.const 127
                      i32.and
                      local.get 4
                      i32.const 7
                      i32.mul
                      i32.shl
                      local.get 18
                      i32.or
                      local.set 18
                      local.get 6
                      i32.const 1
                      i32.add
                      local.set 6
                      local.get 4
                      i32.const 1
                      i32.add
                      local.set 19
                      local.get 20
                      i32.const 0
                      i32.lt_s
                      br_if 0 (;@9;)
                    end
                    i32.const 30
                    local.get 18
                    local.get 4
                    i32.const 4
                    i32.eq
                    local.get 20
                    i32.const 15
                    i32.gt_u
                    i32.and
                    local.tee 4
                    select
                    local.set 6
                    i32.const 2
                    i32.const 1
                    local.get 4
                    select
                    local.set 4
                  end
                  local.get 21
                  local.get 22
                  call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
                end
                local.get 16
                i32.const 1
                i32.add
                local.set 16
                local.get 5
                i32.load offset=300
                local.get 17
                call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
                local.get 5
                local.get 6
                i32.store offset=44
                local.get 5
                local.get 4
                i32.store offset=40
                local.get 5
                i32.const 40
                i32.add
                local.set 4
                br 0 (;@6;)
              end
            end
            i32.const 62
            local.set 4
            i32.const 35676
            local.set 6
          end
          local.get 5
          local.get 4
          i32.store offset=408
          local.get 5
          local.get 6
          i32.store offset=404
          local.get 5
          i32.const 348
          i32.add
          local.get 6
          local.get 4
          call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions6errors12report_error
          local.get 5
          i32.load offset=348
          i32.const -1
          i32.ne
          br_if 1 (;@2;)
          local.get 5
          i32.const 2
          i32.store offset=44
          local.get 5
          local.get 5
          i32.const 404
          i32.add
          i32.store offset=40
          local.get 5
          i32.const 348
          i32.add
          i32.const 33279
          local.get 5
          i32.const 40
          i32.add
          call $_RNvNtCsjAdaHq5oevx_5alloc3fmt6format
          local.get 5
          i32.const 312
          i32.add
          local.get 5
          i32.load offset=352
          local.tee 4
          local.get 5
          i32.load offset=356
          i32.const 4
          call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions7logging3log
          local.get 5
          i32.load offset=312
          i32.const -1
          i32.ne
          br_if 2 (;@1;)
          local.get 5
          i32.load offset=348
          local.get 4
          call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
          i32.const -1
          local.set 4
        end
        local.get 5
        i32.const 416
        i32.add
        global.set $__stack_pointer
        local.get 4
        return
      end
      local.get 5
      local.get 5
      i32.load offset=356
      i32.store offset=48
      local.get 5
      local.get 5
      i64.load offset=348 align=4
      i64.store offset=40
      i32.const 40376
      i32.const 43
      local.get 5
      i32.const 40
      i32.add
      i32.const 36368
      i32.const 35868
      call $_RNvNtCsdmBIiMovVma_4core6result13unwrap_failed
      unreachable
    end
    local.get 5
    local.get 5
    i32.load offset=320
    i32.store offset=48
    local.get 5
    local.get 5
    i64.load offset=312 align=4
    i64.store offset=40
    i32.const 40376
    i32.const 43
    local.get 5
    i32.const 40
    i32.add
    i32.const 36368
    i32.const 35868
    call $_RNvNtCsdmBIiMovVma_4core6result13unwrap_failed
    unreachable)
  (func $_RNvCsuH4bZJUquU_13bench_kernels4fill (type 14)
    (local i32 i32)
    i32.const 0
    local.set 0
    i32.const 4
    local.set 1
    block  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.const 8196
        i32.eq
        br_if 1 (;@1;)
        local.get 1
        i32.const 71224
        i32.add
        local.get 0
        i32.store
        local.get 0
        i32.const -1640531535
        i32.add
        local.set 0
        local.get 1
        i32.const 4
        i32.add
        local.set 1
        br 0 (;@2;)
      end
    end)
  (func $_RNvCsuH4bZJUquU_13bench_kernels3sum (type 4) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    i32.const 2048
    i32.store offset=12
    local.get 0
    i32.const 71228
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    local.set 1
    local.get 0
    i32.load offset=12
    i32.const 2
    i32.shl
    local.set 1
    local.get 0
    i32.load offset=8
    local.set 0
    i32.const 0
    local.set 2
    block  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.const -4
        i32.add
        local.set 1
        local.get 0
        i32.load
        local.get 2
        i32.add
        local.set 2
        local.get 0
        i32.const 4
        i32.add
        local.set 0
        br 0 (;@2;)
      end
    end
    local.get 2)
  (func $_RNvCsuH4bZJUquU_13bench_kernels5scale (type 14)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    i32.const 2048
    i32.store offset=12
    local.get 0
    i32.const 71228
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    local.set 1
    local.get 0
    i32.load offset=12
    i32.const 2
    i32.shl
    local.set 1
    local.get 0
    i32.load offset=8
    local.set 0
    block  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 0
        i32.load
        i32.const 3
        i32.mul
        i32.const 1
        i32.add
        i32.store
        local.get 1
        i32.const -4
        i32.add
        local.set 1
        local.get 0
        i32.const 4
        i32.add
        local.set 0
        br 0 (;@2;)
      end
    end)
  (func $_RNvCsuH4bZJUquU_13bench_kernels4copy (type 14)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 4096
    i32.store offset=12
    local.get 0
    i32.const 67088
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    local.set 1
    local.get 0
    i32.load offset=8
    local.set 2
    local.get 0
    i32.load offset=12
    local.set 3
    local.get 0
    i32.const 4096
    i32.store offset=12
    local.get 0
    i32.const 62992
    i32.store offset=8
    block  ;; label = @1
      local.get 3
      local.get 0
      i32.load offset=12
      local.tee 1
      i32.ne
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 0
        i32.load offset=8
        local.get 3
        memory.copy
      end
      local.get 0
      i32.const 16
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 3
    local.get 1
    call $_RNvNvNtCsdmBIiMovVma_4core5slice20copy_from_slice_impl17len_mismatch_fail
    unreachable)
  (func $_RNvCsuH4bZJUquU_13bench_kernels10xorshift64 (type 15) (param i64) (result i64)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    i64.store
    local.get 1
    local.set 2
    local.get 1
    i64.load
    local.set 0
    local.get 1
    i32.const 10000
    i32.store offset=12
    local.get 1
    i32.const 12
    i32.add
    local.set 2
    local.get 0
    i64.const 1
    i64.or
    local.set 0
    local.get 1
    i32.load offset=12
    local.set 1
    block  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i64.const 13
        i64.shl
        local.get 0
        i64.xor
        local.tee 0
        i64.const 7
        i64.shr_u
        local.get 0
        i64.xor
        local.tee 0
        i64.const 17
        i64.shl
        local.get 0
        i64.xor
        local.set 0
        local.get 1
        i32.const -1
        i32.add
        local.set 1
        br 0 (;@2;)
      end
    end
    local.get 0)
  (func $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions3tap8list_len (type 8) (param i32)
    (local i32)
    block  ;; label = @1
      call $_RNvNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions3tap11c_functions12tap_list_len
      local.tee 1
      i32.const -1
      i32.gt_s
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $_RNvXs1_NtCsdwI7iSz8jyL_10myrmic_sdk5errorNtB5_8ApiErrorINtNtCsdmBIiMovVma_4core7convert4FromlE4from
      return
    end
    local.get 0
    i32.const -1
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4)
  (func $_RINvNtCsjAdaHq5oevx_5alloc3vec9from_elemhECsdwI7iSz8jyL_10myrmic_sdk (type 6) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 4
    i32.add
    local.get 1
    i32.const 1
    call $_RNvMs5_NtCsjAdaHq5oevx_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9YH6pJqOsRA_5serde
    local.get 2
    i32.load offset=8
    local.set 3
    block  ;; label = @1
      local.get 2
      i32.load offset=4
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 3
      local.get 2
      i32.load offset=12
      call $_RNvNtCsjAdaHq5oevx_5alloc7raw_vec12handle_error
      unreachable
    end
    local.get 2
    i32.load offset=12
    local.set 4
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    local.get 4
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_RNvMNtNtCs2WOo28oSl5V_8postcard3ser10serializerINtB2_10SerializerNtNtB4_7flavors5SliceE19try_push_varint_u32CsdwI7iSz8jyL_10myrmic_sdk (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 0
    i32.store8 offset=12
    local.get 2
    i32.const 0
    i32.store offset=8
    local.get 2
    local.get 1
    local.get 2
    i32.const 8
    i32.add
    call $_RNvNtCs2WOo28oSl5V_8postcard6varint10varint_u32.179
    i32.const 2
    local.set 1
    block  ;; label = @1
      local.get 2
      i32.load offset=4
      local.tee 3
      local.get 0
      i32.load offset=8
      local.get 0
      i32.load offset=4
      local.tee 4
      i32.sub
      i32.gt_u
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        local.get 2
        i32.load
        local.get 3
        memory.copy
      end
      local.get 0
      local.get 4
      local.get 3
      i32.add
      i32.store offset=4
      i32.const 255
      local.set 1
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_RNvXs_NtNtCs2WOo28oSl5V_8postcard3ser10serializerQINtB4_10SerializerNtNtB6_7flavors5SliceENtNtCs3wU1vCl2ErL_10serde_core3ser10Serializer13serialize_strCsdwI7iSz8jyL_10myrmic_sdk (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 0
    i32.store8 offset=12
    local.get 3
    i32.const 0
    i32.store offset=8
    local.get 3
    local.get 2
    local.get 3
    i32.const 8
    i32.add
    call $_RNvNtCs2WOo28oSl5V_8postcard6varint12varint_usize.178
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.load offset=4
        local.tee 4
        local.get 0
        i32.load offset=8
        local.tee 5
        local.get 0
        i32.load offset=4
        local.tee 6
        i32.sub
        i32.le_u
        br_if 0 (;@2;)
        i32.const 2
        local.set 4
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 6
        local.get 3
        i32.load
        local.get 4
        memory.copy
      end
      local.get 0
      local.get 6
      local.get 4
      i32.add
      local.tee 6
      i32.store offset=4
      i32.const 2
      local.set 4
      local.get 2
      local.get 5
      local.get 6
      i32.sub
      i32.gt_u
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 6
        local.get 1
        local.get 2
        memory.copy
      end
      local.get 0
      local.get 6
      local.get 2
      i32.add
      i32.store offset=4
      i32.const 255
      local.set 4
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 4)
  (func $_RINvXs5_NtNtCs2WOo28oSl5V_8postcard3ser10serializerQINtB6_10SerializerNtNtB8_7flavors5SliceENtNtCs3wU1vCl2ErL_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCsdmBIiMovVma_4core6option6OptionINtNtCsjAdaHq5oevx_5alloc6borrow3CoweEEECsdwI7iSz8jyL_10myrmic_sdk (type 0) (param i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load
        i32.const -2
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=4
        local.tee 2
        local.get 0
        i32.load offset=8
        i32.eq
        br_if 1 (;@1;)
        local.get 2
        i32.const 1
        i32.store8
        local.get 0
        local.get 2
        i32.const 1
        i32.add
        i32.store offset=4
        local.get 0
        local.get 1
        i32.load offset=4
        local.get 1
        i32.load offset=8
        call $_RNvXs_NtNtCs2WOo28oSl5V_8postcard3ser10serializerQINtB4_10SerializerNtNtB6_7flavors5SliceENtNtCs3wU1vCl2ErL_10serde_core3ser10Serializer13serialize_strCsdwI7iSz8jyL_10myrmic_sdk
        return
      end
      local.get 0
      i32.load offset=4
      local.tee 1
      local.get 0
      i32.load offset=8
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      i32.const 0
      i32.store8
      local.get 0
      local.get 1
      i32.const 1
      i32.add
      i32.store offset=4
      i32.const 255
      return
    end
    i32.const 2)
  (func $_RNvXNtCsdwI7iSz8jyL_10myrmic_sdk5errorlNtB2_9ErrorCode9to_result (type 6) (param i32 i32)
    block  ;; label = @1
      local.get 1
      br_if 0 (;@1;)
      local.get 0
      i32.const -1
      i32.store
      return
    end
    local.get 0
    local.get 1
    call $_RNvXs1_NtCsdwI7iSz8jyL_10myrmic_sdk5errorNtB5_8ApiErrorINtNtCsdmBIiMovVma_4core7convert4FromlE4from)
  (func $_RNvXs_NtNtCs2WOo28oSl5V_8postcard2de7flavorsNtB4_5SliceNtB4_6Flavor3pop.174 (type 6) (param i32 i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load
        local.tee 2
        local.get 1
        i32.load offset=4
        i32.eq
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        i32.const 4
        local.set 1
        br 1 (;@1;)
      end
      local.get 1
      local.get 2
      i32.const 1
      i32.add
      i32.store
      local.get 2
      i32.load8_u
      local.set 1
    end
    local.get 0
    local.get 1
    i32.store8 offset=1
    local.get 0
    local.get 3
    i32.store8)
  (func $_RNvMs0_NtNtCs2WOo28oSl5V_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsdwI7iSz8jyL_10myrmic_sdk (type 6) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const -1
    local.set 3
    i32.const 0
    local.set 4
    i32.const 0
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.const 4
              i32.eq
              br_if 0 (;@5;)
              local.get 2
              i32.const 8
              i32.add
              local.get 1
              call $_RNvXs_NtNtCs2WOo28oSl5V_8postcard2de7flavorsNtB4_5SliceNtB4_6Flavor3pop.174
              local.get 2
              i32.load8_u offset=9
              local.set 6
              local.get 2
              i32.load8_u offset=8
              i32.eqz
              br_if 1 (;@4;)
              local.get 0
              local.get 6
              i32.store8 offset=1
              br 3 (;@2;)
            end
            local.get 0
            i32.const 5
            i32.store8 offset=1
            br 2 (;@2;)
          end
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 6
          i32.const 127
          i32.and
          local.get 4
          i32.shl
          local.get 5
          i32.or
          local.set 5
          local.get 4
          i32.const 7
          i32.add
          local.set 4
          local.get 6
          i32.const 24
          i32.shl
          i32.const 24
          i32.shr_s
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 4
            i32.ne
            br_if 0 (;@4;)
            local.get 6
            i32.const 255
            i32.and
            i32.const 15
            i32.gt_u
            br_if 1 (;@3;)
          end
          local.get 0
          local.get 5
          i32.store offset=4
          i32.const 0
          local.set 3
          br 2 (;@1;)
        end
        local.get 0
        i32.const 5
        i32.store8 offset=1
      end
      i32.const 1
      local.set 3
    end
    local.get 0
    local.get 3
    i32.store8
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_RNvMs5_NtCsjAdaHq5oevx_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdwI7iSz8jyL_10myrmic_sdk (type 6) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 4
    i32.add
    local.get 1
    i32.const 0
    call $_RNvMs5_NtCsjAdaHq5oevx_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9YH6pJqOsRA_5serde
    local.get 2
    i32.load offset=8
    local.set 1
    block  ;; label = @1
      local.get 2
      i32.load offset=4
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.load offset=12
      call $_RNvNtCsjAdaHq5oevx_5alloc7raw_vec12handle_error
      unreachable
    end
    local.get 0
    local.get 2
    i32.load offset=12
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_RNvMsF_NtCsjAdaHq5oevx_5alloc3vecINtB5_3VechE4pushCsdwI7iSz8jyL_10myrmic_sdk (type 6) (param i32 i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=8
      local.tee 2
      local.get 0
      i32.load
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      call $_RNvMs4_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_
    end
    local.get 0
    local.get 2
    i32.const 1
    i32.add
    i32.store offset=8
    local.get 0
    i32.load offset=4
    local.get 2
    i32.add
    local.get 1
    i32.store8)
  (func $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueINtNtCsjAdaHq5oevx_5alloc6borrow3CoweEECsdwI7iSz8jyL_10myrmic_sdk (type 6) (param i32 i32)
    block  ;; label = @1
      local.get 0
      i32.const -1
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
    end)
  (func $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjAdaHq5oevx_5alloc6borrow3CoweEEECsdwI7iSz8jyL_10myrmic_sdk (type 6) (param i32 i32)
    block  ;; label = @1
      local.get 0
      i32.const -2
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueINtNtCsjAdaHq5oevx_5alloc6borrow3CoweEECsdwI7iSz8jyL_10myrmic_sdk
    end)
  (func $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions6errors12report_error (type 5) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_RNvNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions6errors11c_functions12report_error
    call $_RNvXNtCsdwI7iSz8jyL_10myrmic_sdk5errorlNtB2_9ErrorCode9to_result)
  (func $_RNvNtCsdmBIiMovVma_4core6result13unwrap_failed (type 16) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    local.get 1
    i32.store offset=4
    local.get 5
    local.get 0
    i32.store
    local.get 5
    local.get 3
    i32.store offset=12
    local.get 5
    local.get 2
    i32.store offset=8
    local.get 5
    i32.const 5
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 5
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=24
    local.get 5
    i32.const 6
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 5
    i64.extend_i32_u
    i64.or
    i64.store offset=16
    i32.const 33275
    local.get 5
    i32.const 16
    i32.add
    local.get 4
    call $_RNvNtCsdmBIiMovVma_4core9panicking9panic_fmt
    unreachable)
  (func $command_clock (type 13) (param i64 i64 i64 i64 i32) (result i32)
    (local i32 i64 i64 i32 i64 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              br_if 0 (;@5;)
              local.get 5
              i64.const 0
              i64.store offset=16
              local.get 5
              i64.const 0
              i64.store offset=8
              i64.const 1000
              local.set 6
              call $_RNvCsh49aHnobDmh_5bench6now_us
              local.set 7
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 6
                  i64.eqz
                  br_if 1 (;@6;)
                  local.get 5
                  i32.const 40
                  i32.add
                  call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions3tap8list_len
                  local.get 5
                  i32.load offset=40
                  local.set 4
                  local.get 5
                  local.get 5
                  i32.load offset=44
                  i32.store offset=44
                  local.get 5
                  local.get 4
                  i32.const -1
                  i32.eq
                  i32.store offset=40
                  local.get 5
                  i32.const 40
                  i32.add
                  local.set 4
                  local.get 6
                  i64.const -1
                  i64.add
                  local.set 6
                  br 0 (;@7;)
                end
              end
              i64.const 1000
              local.set 6
              i32.const 36078
              i32.const 32
              i64.const 1000
              i32.const 35973
              i32.const 4
              call $_RNvCsh49aHnobDmh_5bench6now_us
              local.get 7
              i64.sub
              call $_RNvCsh49aHnobDmh_5bench6report
              call $_RNvCsh49aHnobDmh_5bench6now_us
              local.set 7
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 6
                  i64.eqz
                  br_if 1 (;@6;)
                  local.get 5
                  local.get 5
                  i32.const 8
                  i32.add
                  i32.store offset=40
                  local.get 5
                  i32.const 40
                  i32.add
                  local.set 4
                  local.get 5
                  local.get 5
                  i32.load offset=40
                  i32.const 16
                  call $_RNvNtCsh49aHnobDmh_5bench3raw11uptime_host
                  i32.store offset=40
                  local.get 6
                  i64.const -1
                  i64.add
                  local.set 6
                  br 0 (;@7;)
                end
              end
              i64.const 1000
              local.set 6
              i32.const 36110
              i32.const 29
              i64.const 1000
              i32.const 35973
              i32.const 4
              call $_RNvCsh49aHnobDmh_5bench6now_us
              local.get 7
              i64.sub
              call $_RNvCsh49aHnobDmh_5bench6report
              local.get 5
              i32.const 8
              i32.add
              i32.const 16
              call $_RNvNtCsh49aHnobDmh_5bench3raw11uptime_host
              local.tee 4
              i32.const 0
              local.get 4
              i32.const 0
              i32.gt_s
              select
              local.set 8
              call $_RNvCsh49aHnobDmh_5bench6now_us
              local.set 9
              local.get 4
              i32.const 17
              i32.lt_s
              local.set 10
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 6
                  i64.eqz
                  br_if 1 (;@6;)
                  local.get 10
                  i32.eqz
                  br_if 4 (;@3;)
                  local.get 5
                  local.get 8
                  i32.store offset=44
                  local.get 5
                  local.get 5
                  i32.const 8
                  i32.add
                  i32.store offset=40
                  local.get 5
                  i32.const 40
                  i32.add
                  local.set 4
                  local.get 5
                  i32.const 40
                  i32.add
                  local.get 5
                  i32.load offset=40
                  local.get 5
                  i32.load offset=44
                  call $_RINvNtCs2WOo28oSl5V_8postcard2de10from_bytesNtNtCsdmBIiMovVma_4core4time8DurationECsdwI7iSz8jyL_10myrmic_sdk
                  local.get 5
                  i64.load offset=40
                  local.set 11
                  local.get 5
                  local.get 5
                  i32.load offset=48
                  local.tee 12
                  i32.store offset=48
                  local.get 5
                  local.get 7
                  local.get 11
                  local.get 12
                  i32.const -1
                  i32.eq
                  select
                  local.tee 7
                  i64.store offset=40
                  local.get 6
                  i64.const -1
                  i64.add
                  local.set 6
                  br 0 (;@7;)
                end
              end
              i64.const 1000
              local.set 6
              i32.const 36139
              i32.const 38
              i64.const 1000
              i32.const 35973
              i32.const 4
              call $_RNvCsh49aHnobDmh_5bench6now_us
              local.get 9
              i64.sub
              call $_RNvCsh49aHnobDmh_5bench6report
              call $_RNvCsh49aHnobDmh_5bench6now_us
              local.set 9
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 6
                  i64.eqz
                  br_if 1 (;@6;)
                  local.get 5
                  i32.const 40
                  i32.add
                  call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions4time6uptime
                  local.get 5
                  i64.load offset=48
                  local.set 11
                  local.get 5
                  i32.const -1
                  local.get 5
                  i32.load offset=56
                  local.get 5
                  i32.load offset=40
                  local.tee 4
                  select
                  i32.store offset=48
                  local.get 5
                  local.get 7
                  local.get 11
                  local.get 4
                  select
                  local.tee 7
                  i64.store offset=40
                  local.get 5
                  i32.const 40
                  i32.add
                  local.set 4
                  local.get 6
                  i64.const -1
                  i64.add
                  local.set 6
                  br 0 (;@7;)
                end
              end
              i64.const 1000
              local.set 6
              i32.const 36177
              i32.const 27
              i64.const 1000
              i32.const 35973
              i32.const 4
              call $_RNvCsh49aHnobDmh_5bench6now_us
              local.get 9
              i64.sub
              call $_RNvCsh49aHnobDmh_5bench6report
              local.get 5
              i32.const 40
              i32.add
              call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions4time6uptime
              i32.const 0
              local.get 5
              i32.load offset=56
              local.get 5
              i32.load offset=40
              local.tee 12
              select
              local.set 4
              i64.const 0
              local.get 5
              i64.load offset=48
              local.get 12
              select
              local.set 7
              call $_RNvCsh49aHnobDmh_5bench6now_us
              local.set 11
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 6
                  i64.eqz
                  br_if 1 (;@6;)
                  local.get 5
                  local.get 4
                  i32.store offset=48
                  local.get 5
                  local.get 7
                  i64.store offset=40
                  local.get 5
                  i32.const 40
                  i32.add
                  local.set 12
                  local.get 5
                  local.get 5
                  i64.load offset=40
                  i64.const 1000000
                  i64.mul
                  local.get 5
                  i32.load offset=48
                  i32.const 1000
                  i32.div_u
                  i64.extend_i32_u
                  i64.add
                  i64.store offset=24
                  local.get 5
                  i32.const 24
                  i32.add
                  local.set 12
                  local.get 6
                  i64.const -1
                  i64.add
                  local.set 6
                  br 0 (;@7;)
                end
              end
              i64.const 1000
              local.set 6
              i32.const 36204
              i32.const 47
              i64.const 1000
              i32.const 35973
              i32.const 4
              call $_RNvCsh49aHnobDmh_5bench6now_us
              local.get 11
              i64.sub
              call $_RNvCsh49aHnobDmh_5bench6report
              call $_RNvCsh49aHnobDmh_5bench6now_us
              local.set 11
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 6
                  i64.eqz
                  br_if 1 (;@6;)
                  local.get 5
                  local.get 4
                  i32.store offset=48
                  local.get 5
                  local.get 7
                  i64.store offset=40
                  local.get 5
                  i32.const 40
                  i32.add
                  local.set 12
                  local.get 5
                  local.get 5
                  i64.load offset=40
                  i64.const 1000000
                  i64.mul
                  local.get 5
                  i32.load offset=48
                  i32.const 1000
                  i32.div_u
                  i64.extend_i32_u
                  i64.add
                  i64.store offset=24
                  local.get 5
                  i32.const 24
                  i32.add
                  local.set 12
                  local.get 6
                  i64.const -1
                  i64.add
                  local.set 6
                  br 0 (;@7;)
                end
              end
              i32.const 36251
              i32.const 45
              i64.const 1000
              i32.const 35973
              i32.const 4
              call $_RNvCsh49aHnobDmh_5bench6now_us
              local.get 11
              i64.sub
              call $_RNvCsh49aHnobDmh_5bench6report
              local.get 5
              i32.const 40
              i32.add
              i32.const 36296
              i32.const 16
              call $_RINvXs_NvMNtCsjAdaHq5oevx_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsh49aHnobDmh_5bench
              local.get 5
              i32.const 24
              i32.add
              local.get 5
              i32.load offset=44
              local.tee 4
              local.get 5
              i32.load offset=48
              i32.const 2
              call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions7logging3log
              local.get 5
              i32.load offset=40
              local.get 4
              call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
              i32.const 0
              local.set 4
              br 1 (;@4;)
            end
            local.get 5
            i32.const 38
            i32.store offset=4
            local.get 5
            i32.const 36538
            i32.store
            local.get 5
            i32.const 8
            i32.add
            i32.const 36538
            i32.const 38
            call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions6errors12report_error
            local.get 5
            i32.load offset=8
            i32.const -1
            i32.ne
            br_if 2 (;@2;)
            local.get 5
            i32.const 2
            i32.store offset=44
            local.get 5
            local.get 5
            i32.store offset=40
            local.get 5
            i32.const 8
            i32.add
            i32.const 33279
            local.get 5
            i32.const 40
            i32.add
            call $_RNvNtCsjAdaHq5oevx_5alloc3fmt6format
            local.get 5
            i32.const 24
            i32.add
            local.get 5
            i32.load offset=12
            local.tee 4
            local.get 5
            i32.load offset=16
            i32.const 4
            call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions7logging3log
            local.get 5
            i32.load offset=24
            i32.const -1
            i32.ne
            br_if 3 (;@1;)
            local.get 5
            i32.load offset=8
            local.get 4
            call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
            i32.const -1
            local.set 4
          end
          local.get 5
          i32.const 64
          i32.add
          global.set $__stack_pointer
          local.get 4
          return
        end
        i32.const 0
        local.get 8
        i32.const 16
        i32.const 35660
        call $_RNvNtNtCsdmBIiMovVma_4core5slice5index16slice_index_fail
        unreachable
      end
      local.get 5
      local.get 5
      i32.load offset=16
      i32.store offset=48
      local.get 5
      local.get 5
      i64.load offset=8 align=4
      i64.store offset=40
      i32.const 40376
      i32.const 43
      local.get 5
      i32.const 40
      i32.add
      i32.const 36368
      i32.const 35884
      call $_RNvNtCsdmBIiMovVma_4core6result13unwrap_failed
      unreachable
    end
    local.get 5
    local.get 5
    i32.load offset=32
    i32.store offset=48
    local.get 5
    local.get 5
    i64.load offset=24 align=4
    i64.store offset=40
    i32.const 40376
    i32.const 43
    local.get 5
    i32.const 40
    i32.add
    i32.const 36368
    i32.const 35884
    call $_RNvNtCsdmBIiMovVma_4core6result13unwrap_failed
    unreachable)
  (func $_RINvNtCs2WOo28oSl5V_8postcard2de10from_bytesNtNtCsdmBIiMovVma_4core4time8DurationECsdwI7iSz8jyL_10myrmic_sdk (type 5) (param i32 i32 i32)
    (local i32 i64 i64 i64 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=16
    local.get 3
    local.get 1
    local.get 2
    i32.add
    i32.store offset=20
    i64.const -1
    local.set 4
    i64.const 0
    local.set 5
    i64.const 0
    local.set 6
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          i64.const 5
          local.set 7
          local.get 4
          i64.const 9
          i64.eq
          br_if 1 (;@2;)
          local.get 3
          i32.const 8
          i32.add
          local.get 3
          i32.const 16
          i32.add
          call $_RNvXs_NtNtCs2WOo28oSl5V_8postcard2de7flavorsNtB4_5SliceNtB4_6Flavor3pop.174
          local.get 3
          i32.load8_u offset=9
          local.set 1
          block  ;; label = @4
            local.get 3
            i32.load8_u offset=8
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i64.extend_i32_u
            i64.const 255
            i64.and
            local.set 7
            br 2 (;@2;)
          end
          local.get 4
          i64.const 1
          i64.add
          local.set 4
          local.get 1
          i64.extend_i32_u
          i64.const 127
          i64.and
          local.get 5
          i64.shl
          local.get 6
          i64.or
          local.set 6
          local.get 5
          i64.const 7
          i64.add
          local.set 5
          local.get 1
          i32.const 24
          i32.shl
          i32.const 24
          i32.shr_s
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
        end
        block  ;; label = @3
          local.get 4
          i64.const 9
          i64.ne
          br_if 0 (;@3;)
          local.get 1
          i32.const 255
          i32.and
          i32.const 1
          i32.gt_u
          br_if 1 (;@2;)
        end
        local.get 3
        i32.const 24
        i32.add
        local.get 3
        i32.const 16
        i32.add
        call $_RNvMs0_NtNtCs2WOo28oSl5V_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsdwI7iSz8jyL_10myrmic_sdk
        block  ;; label = @3
          local.get 3
          i32.load8_u offset=24
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          local.get 3
          i64.load8_u offset=25
          local.set 7
          br 1 (;@2;)
        end
        i64.const 14
        local.set 7
        local.get 6
        i64.const -1
        i64.xor
        local.get 3
        i32.load offset=28
        local.tee 1
        i32.const 1000000000
        i32.div_u
        local.tee 2
        i64.extend_i32_u
        local.tee 4
        i64.lt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 1000000000
              i32.ge_u
              br_if 0 (;@5;)
              local.get 6
              local.set 4
              br 1 (;@4;)
            end
            local.get 6
            local.get 4
            i64.add
            local.tee 4
            local.get 6
            i64.lt_u
            br_if 1 (;@3;)
            local.get 1
            local.get 2
            i32.const 1000000000
            i32.mul
            i32.sub
            local.set 1
          end
          local.get 0
          local.get 4
          i64.store
          br 2 (;@1;)
        end
        call $_RNvNtCsdmBIiMovVma_4core6option13expect_failed
        unreachable
      end
      local.get 0
      local.get 7
      i64.store8
      i32.const -1
      local.set 1
    end
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_RNvNtNtCsdmBIiMovVma_4core5slice5index16slice_index_fail (type 10) (param i32 i32 i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          local.get 2
          i32.gt_u
          br_if 0 (;@3;)
          local.get 1
          local.get 2
          i32.gt_u
          br_if 1 (;@2;)
          i32.const 7
          i64.extend_i32_u
          i64.const 32
          i64.shl
          local.set 5
          local.get 0
          local.get 1
          i32.le_u
          br_if 2 (;@1;)
          local.get 4
          local.get 0
          i32.store offset=8
          local.get 4
          local.get 1
          i32.store offset=12
          local.get 4
          local.get 5
          local.get 4
          i32.const 12
          i32.add
          i64.extend_i32_u
          i64.or
          i64.store offset=24
          local.get 4
          local.get 5
          local.get 4
          i32.const 8
          i32.add
          i64.extend_i32_u
          i64.or
          i64.store offset=16
          i32.const 32783
          local.get 4
          i32.const 16
          i32.add
          local.get 3
          call $_RNvNtCsdmBIiMovVma_4core9panicking9panic_fmt
          unreachable
        end
        local.get 4
        local.get 0
        i32.store offset=8
        local.get 4
        local.get 2
        i32.store offset=12
        local.get 4
        i32.const 7
        i64.extend_i32_u
        i64.const 32
        i64.shl
        local.tee 5
        local.get 4
        i32.const 12
        i32.add
        i64.extend_i32_u
        i64.or
        i64.store offset=24
        local.get 4
        local.get 5
        local.get 4
        i32.const 8
        i32.add
        i64.extend_i32_u
        i64.or
        i64.store offset=16
        i32.const 33037
        local.get 4
        i32.const 16
        i32.add
        local.get 3
        call $_RNvNtCsdmBIiMovVma_4core9panicking9panic_fmt
        unreachable
      end
      local.get 4
      local.get 1
      i32.store offset=8
      local.get 4
      local.get 2
      i32.store offset=12
      local.get 4
      i32.const 7
      i64.extend_i32_u
      i64.const 32
      i64.shl
      local.tee 5
      local.get 4
      i32.const 12
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=24
      local.get 4
      local.get 5
      local.get 4
      i32.const 8
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=16
      i32.const 33094
      local.get 4
      i32.const 16
      i32.add
      local.get 3
      call $_RNvNtCsdmBIiMovVma_4core9panicking9panic_fmt
      unreachable
    end
    local.get 4
    local.get 1
    i32.store offset=8
    local.get 4
    local.get 2
    i32.store offset=12
    local.get 4
    local.get 5
    local.get 4
    i32.const 12
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=24
    local.get 4
    local.get 5
    local.get 4
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=16
    i32.const 33094
    local.get 4
    i32.const 16
    i32.add
    local.get 3
    call $_RNvNtCsdmBIiMovVma_4core9panicking9panic_fmt
    unreachable)
  (func $command_on_tick (type 13) (param i64 i64 i64 i64 i32) (result i32)
    (local i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              i32.eqz
              br_if 0 (;@5;)
              i32.const 36538
              local.set 4
              i32.const 38
              local.set 6
              br 1 (;@4;)
            end
            call $_RNvCsh49aHnobDmh_5bench6now_us
            local.set 7
            block  ;; label = @5
              i32.const 0
              i32.load offset=71184
              i32.eqz
              br_if 0 (;@5;)
              i32.const 35676
              local.set 4
              i32.const 62
              local.set 6
              br 1 (;@4;)
            end
            block  ;; label = @5
              i32.const 0
              i64.load offset=71192
              local.tee 8
              i64.const 0
              i64.ne
              br_if 0 (;@5;)
              i32.const 0
              local.get 7
              i64.store offset=71200
            end
            i32.const 0
            local.set 4
            i32.const 0
            local.get 7
            i64.store offset=71208
            i32.const 0
            local.get 8
            i64.const 1
            i64.add
            i64.store offset=71192
            i32.const 0
            i32.const 0
            i32.store offset=71184
            br 1 (;@3;)
          end
          local.get 5
          local.get 6
          i32.store offset=4
          local.get 5
          local.get 4
          i32.store
          local.get 5
          i32.const 20
          i32.add
          local.get 4
          local.get 6
          call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions6errors12report_error
          local.get 5
          i32.load offset=20
          i32.const -1
          i32.ne
          br_if 1 (;@2;)
          local.get 5
          i32.const 2
          i32.store offset=36
          local.get 5
          local.get 5
          i32.store offset=32
          local.get 5
          i32.const 20
          i32.add
          i32.const 33279
          local.get 5
          i32.const 32
          i32.add
          call $_RNvNtCsjAdaHq5oevx_5alloc3fmt6format
          local.get 5
          i32.const 8
          i32.add
          local.get 5
          i32.load offset=24
          local.tee 4
          local.get 5
          i32.load offset=28
          i32.const 4
          call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions7logging3log
          local.get 5
          i32.load offset=8
          i32.const -1
          i32.ne
          br_if 2 (;@1;)
          local.get 5
          i32.load offset=20
          local.get 4
          call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
          i32.const -1
          local.set 4
        end
        local.get 5
        i32.const 48
        i32.add
        global.set $__stack_pointer
        local.get 4
        return
      end
      local.get 5
      local.get 5
      i32.load offset=28
      i32.store offset=40
      local.get 5
      local.get 5
      i64.load offset=20 align=4
      i64.store offset=32
      i32.const 40376
      i32.const 43
      local.get 5
      i32.const 32
      i32.add
      i32.const 36368
      i32.const 35900
      call $_RNvNtCsdmBIiMovVma_4core6result13unwrap_failed
      unreachable
    end
    local.get 5
    local.get 5
    i32.load offset=16
    i32.store offset=40
    local.get 5
    local.get 5
    i64.load offset=8 align=4
    i64.store offset=32
    i32.const 40376
    i32.const 43
    local.get 5
    i32.const 32
    i32.add
    i32.const 36368
    i32.const 35900
    call $_RNvNtCsdmBIiMovVma_4core6result13unwrap_failed
    unreachable)
  (func $command_tick_report (type 13) (param i64 i64 i64 i64 i32) (result i32)
    (local i32 i32 i64 i64 i64 i64 i64 i64)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              i32.eqz
              br_if 0 (;@5;)
              i32.const 36538
              local.set 4
              i32.const 38
              local.set 6
              br 1 (;@4;)
            end
            i32.const 0
            i32.load8_u offset=71216
            local.set 4
            i32.const 0
            i32.const 0
            i32.store8 offset=71216
            block  ;; label = @5
              local.get 4
              i32.eqz
              br_if 0 (;@5;)
              i32.const 0
              i32.load offset=71220
              call $_RNvNtNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions4cell6timers11c_functions12cancel_timer
              drop
            end
            block  ;; label = @5
              i32.const 0
              i32.load offset=71184
              i32.eqz
              br_if 0 (;@5;)
              i32.const 35676
              local.set 4
              i32.const 62
              local.set 6
              br 1 (;@4;)
            end
            i32.const 0
            i64.load offset=71208
            local.set 7
            i32.const 0
            i64.load offset=71200
            local.set 8
            local.get 5
            i32.const 0
            i64.load offset=71192
            local.tee 9
            i64.store offset=24
            i64.const 0
            local.set 10
            local.get 5
            i64.const 0
            local.get 7
            local.get 8
            i64.sub
            local.tee 11
            local.get 11
            local.get 7
            i64.gt_u
            select
            local.tee 12
            i64.store offset=32
            i64.const 0
            local.set 11
            block  ;; label = @5
              local.get 9
              i64.const 1
              i64.le_u
              br_if 0 (;@5;)
              local.get 12
              local.get 9
              i64.const -1
              i64.add
              i64.div_u
              local.set 11
            end
            local.get 5
            local.get 11
            i64.store offset=40
            block  ;; label = @5
              local.get 7
              local.get 8
              i64.le_u
              br_if 0 (;@5;)
              local.get 9
              i64.const 1000000
              i64.mul
              i64.const -1000000
              i64.add
              local.get 12
              i64.div_u
              local.set 10
            end
            local.get 5
            local.get 10
            i64.store offset=8
            local.get 5
            i32.const 1
            i32.store offset=92
            local.get 5
            i32.const 1
            i32.store offset=84
            local.get 5
            i32.const 1
            i32.store offset=76
            local.get 5
            i32.const 1
            i32.store offset=68
            local.get 5
            local.get 5
            i32.const 8
            i32.add
            i32.store offset=88
            local.get 5
            local.get 5
            i32.const 40
            i32.add
            i32.store offset=80
            local.get 5
            local.get 5
            i32.const 32
            i32.add
            i32.store offset=72
            local.get 5
            local.get 5
            i32.const 24
            i32.add
            i32.store offset=64
            local.get 5
            i32.const 52
            i32.add
            i32.const 35018
            local.get 5
            i32.const 64
            i32.add
            call $_RNvNtCsjAdaHq5oevx_5alloc3fmt6format
            local.get 5
            i32.const 64
            i32.add
            local.get 5
            i32.load offset=56
            local.tee 4
            local.get 5
            i32.load offset=60
            i32.const 2
            call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions7logging3log
            local.get 5
            i32.load offset=52
            local.get 4
            call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
            i32.const 0
            local.set 4
            br 1 (;@3;)
          end
          local.get 5
          local.get 6
          i32.store offset=44
          local.get 5
          local.get 4
          i32.store offset=40
          local.get 5
          i32.const 52
          i32.add
          local.get 4
          local.get 6
          call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions6errors12report_error
          local.get 5
          i32.load offset=52
          i32.const -1
          i32.ne
          br_if 1 (;@2;)
          local.get 5
          i32.const 2
          i32.store offset=68
          local.get 5
          local.get 5
          i32.const 40
          i32.add
          i32.store offset=64
          local.get 5
          i32.const 52
          i32.add
          i32.const 33279
          local.get 5
          i32.const 64
          i32.add
          call $_RNvNtCsjAdaHq5oevx_5alloc3fmt6format
          local.get 5
          i32.const 8
          i32.add
          local.get 5
          i32.load offset=56
          local.tee 4
          local.get 5
          i32.load offset=60
          i32.const 4
          call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions7logging3log
          local.get 5
          i32.load offset=8
          i32.const -1
          i32.ne
          br_if 2 (;@1;)
          local.get 5
          i32.load offset=52
          local.get 4
          call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
          i32.const -1
          local.set 4
        end
        local.get 5
        i32.const 96
        i32.add
        global.set $__stack_pointer
        local.get 4
        return
      end
      local.get 5
      local.get 5
      i32.load offset=60
      i32.store offset=72
      local.get 5
      local.get 5
      i64.load offset=52 align=4
      i64.store offset=64
      i32.const 40376
      i32.const 43
      local.get 5
      i32.const 64
      i32.add
      i32.const 36368
      i32.const 35932
      call $_RNvNtCsdmBIiMovVma_4core6result13unwrap_failed
      unreachable
    end
    local.get 5
    local.get 5
    i32.load offset=16
    i32.store offset=72
    local.get 5
    local.get 5
    i64.load offset=8 align=4
    i64.store offset=64
    i32.const 40376
    i32.const 43
    local.get 5
    i32.const 64
    i32.add
    i32.const 36368
    i32.const 35932
    call $_RNvNtCsdmBIiMovVma_4core6result13unwrap_failed
    unreachable)
  (func $command_tick_start (type 13) (param i64 i64 i64 i64 i32) (result i32)
    (local i32 i32 i32 i32 i32 i64 i32 f64 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 192
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 4
                  br_if 0 (;@7;)
                  i32.const 1000
                  local.set 6
                  br 1 (;@6;)
                end
                local.get 5
                i32.const 52
                i32.add
                local.get 4
                call $_RINvNtCsjAdaHq5oevx_5alloc3vec9from_elemhECsdwI7iSz8jyL_10myrmic_sdk
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 5
                                      i32.load offset=56
                                      local.tee 7
                                      local.get 5
                                      i32.load offset=60
                                      local.tee 4
                                      call $_RNvNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions9arguments11c_functions13get_arguments
                                      local.tee 8
                                      i32.const 0
                                      i32.ge_s
                                      br_if 0 (;@17;)
                                      local.get 5
                                      i32.const 64
                                      i32.add
                                      local.get 8
                                      call $_RNvXs1_NtCsdwI7iSz8jyL_10myrmic_sdk5errorNtB5_8ApiErrorINtNtCsdmBIiMovVma_4core7convert4FromlE4from
                                      local.get 5
                                      i32.load offset=64
                                      i32.const -1
                                      i32.ne
                                      br_if 1 (;@16;)
                                      local.get 5
                                      i32.load offset=68
                                      local.set 8
                                    end
                                    block  ;; label = @17
                                      local.get 8
                                      local.get 4
                                      i32.gt_u
                                      br_if 0 (;@17;)
                                      local.get 5
                                      local.get 8
                                      i32.store offset=60
                                      local.get 8
                                      local.set 4
                                    end
                                    local.get 5
                                    i32.load offset=52
                                    local.set 9
                                    local.get 5
                                    i32.const 0
                                    i32.store offset=84
                                    local.get 5
                                    local.get 4
                                    i32.store offset=80
                                    local.get 5
                                    local.get 7
                                    i32.store offset=76
                                    local.get 5
                                    i32.const 128
                                    i32.store8 offset=88
                                    local.get 5
                                    i32.const 0
                                    i32.store offset=72
                                    local.get 5
                                    i64.const 4294967296
                                    i64.store offset=64 align=4
                                    local.get 5
                                    i32.const 96
                                    i32.add
                                    local.get 5
                                    i32.const 64
                                    i32.add
                                    call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsdwI7iSz8jyL_10myrmic_sdk
                                    block  ;; label = @17
                                      local.get 5
                                      i32.load8_u offset=96
                                      i32.const 1
                                      i32.ne
                                      br_if 0 (;@17;)
                                      local.get 5
                                      i32.load offset=100
                                      local.set 6
                                      br 8 (;@9;)
                                    end
                                    local.get 5
                                    i32.load8_u offset=97
                                    i32.const 1
                                    i32.ne
                                    br_if 1 (;@15;)
                                    block  ;; label = @17
                                      local.get 5
                                      i32.load8_u offset=98
                                      local.tee 8
                                      i32.const 255
                                      i32.and
                                      i32.const 45
                                      i32.ne
                                      br_if 0 (;@17;)
                                      local.get 5
                                      local.get 5
                                      i32.load offset=84
                                      i32.const 1
                                      i32.add
                                      i32.store offset=84
                                      local.get 5
                                      i32.const 112
                                      i32.add
                                      local.get 5
                                      i32.const 64
                                      i32.add
                                      i32.const 0
                                      call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsdwI7iSz8jyL_10myrmic_sdk
                                      local.get 5
                                      i64.load offset=112
                                      local.tee 10
                                      i64.const -1
                                      i64.eq
                                      br_if 3 (;@14;)
                                      local.get 5
                                      i32.const 112
                                      i32.add
                                      i32.const 8
                                      i32.add
                                      local.set 8
                                      br 7 (;@10;)
                                    end
                                    block  ;; label = @17
                                      local.get 8
                                      i32.const -48
                                      i32.add
                                      i32.const 255
                                      i32.and
                                      i32.const 10
                                      i32.lt_u
                                      br_if 0 (;@17;)
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            local.get 5
                                                            i32.load offset=84
                                                            local.tee 8
                                                            local.get 5
                                                            i32.load offset=80
                                                            i32.ge_u
                                                            br_if 0 (;@28;)
                                                            local.get 5
                                                            i32.load offset=76
                                                            local.get 8
                                                            i32.add
                                                            i32.load8_u
                                                            local.tee 11
                                                            i32.const 34
                                                            i32.eq
                                                            br_if 6 (;@22;)
                                                            local.get 11
                                                            i32.const 45
                                                            i32.eq
                                                            br_if 5 (;@23;)
                                                            local.get 11
                                                            i32.const 102
                                                            i32.eq
                                                            br_if 4 (;@24;)
                                                            local.get 11
                                                            i32.const 110
                                                            i32.eq
                                                            br_if 10 (;@18;)
                                                            local.get 11
                                                            i32.const 116
                                                            i32.eq
                                                            br_if 3 (;@25;)
                                                            local.get 11
                                                            i32.const 91
                                                            i32.eq
                                                            br_if 1 (;@27;)
                                                            local.get 11
                                                            i32.const 123
                                                            i32.eq
                                                            br_if 2 (;@26;)
                                                            local.get 11
                                                            i32.const -48
                                                            i32.add
                                                            i32.const 255
                                                            i32.and
                                                            i32.const 10
                                                            i32.lt_u
                                                            br_if 7 (;@21;)
                                                          end
                                                          local.get 5
                                                          i32.const 10
                                                          i32.store offset=168
                                                          local.get 5
                                                          i32.const 64
                                                          i32.add
                                                          local.get 5
                                                          i32.const 168
                                                          i32.add
                                                          call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsdwI7iSz8jyL_10myrmic_sdk
                                                          local.set 8
                                                          br 15 (;@12;)
                                                        end
                                                        local.get 5
                                                        i32.const 10
                                                        i32.store8 offset=168
                                                        local.get 5
                                                        i32.const 168
                                                        i32.add
                                                        local.get 5
                                                        i32.const 191
                                                        i32.add
                                                        i32.const 41056
                                                        call $_RNvXs5_NtCsgzaNOZ9sV4N_10serde_json5errorNtB5_5ErrorNtNtCs3wU1vCl2ErL_10serde_core2de5Error12invalid_type
                                                        local.set 8
                                                        br 14 (;@12;)
                                                      end
                                                      local.get 5
                                                      i32.const 11
                                                      i32.store8 offset=168
                                                      local.get 5
                                                      i32.const 168
                                                      i32.add
                                                      local.get 5
                                                      i32.const 191
                                                      i32.add
                                                      i32.const 41056
                                                      call $_RNvXs5_NtCsgzaNOZ9sV4N_10serde_json5errorNtB5_5ErrorNtNtCs3wU1vCl2ErL_10serde_core2de5Error12invalid_type
                                                      local.set 8
                                                      br 13 (;@12;)
                                                    end
                                                    local.get 5
                                                    local.get 8
                                                    i32.const 1
                                                    i32.add
                                                    i32.store offset=84
                                                    local.get 5
                                                    i32.const 64
                                                    i32.add
                                                    i32.const 41075
                                                    i32.const 3
                                                    call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsdwI7iSz8jyL_10myrmic_sdk
                                                    local.tee 8
                                                    br_if 13 (;@11;)
                                                    local.get 5
                                                    i32.const 256
                                                    i32.store16 offset=168
                                                    local.get 5
                                                    i32.const 168
                                                    i32.add
                                                    local.get 5
                                                    i32.const 191
                                                    i32.add
                                                    i32.const 41056
                                                    call $_RNvXs5_NtCsgzaNOZ9sV4N_10serde_json5errorNtB5_5ErrorNtNtCs3wU1vCl2ErL_10serde_core2de5Error12invalid_type
                                                    local.set 8
                                                    br 12 (;@12;)
                                                  end
                                                  local.get 5
                                                  local.get 8
                                                  i32.const 1
                                                  i32.add
                                                  i32.store offset=84
                                                  local.get 5
                                                  i32.const 64
                                                  i32.add
                                                  i32.const 41078
                                                  i32.const 4
                                                  call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsdwI7iSz8jyL_10myrmic_sdk
                                                  local.tee 8
                                                  br_if 12 (;@11;)
                                                  local.get 5
                                                  i32.const 0
                                                  i32.store16 offset=168
                                                  local.get 5
                                                  i32.const 168
                                                  i32.add
                                                  local.get 5
                                                  i32.const 191
                                                  i32.add
                                                  i32.const 41056
                                                  call $_RNvXs5_NtCsgzaNOZ9sV4N_10serde_json5errorNtB5_5ErrorNtNtCs3wU1vCl2ErL_10serde_core2de5Error12invalid_type
                                                  local.set 8
                                                  br 11 (;@12;)
                                                end
                                                local.get 5
                                                local.get 8
                                                i32.const 1
                                                i32.add
                                                i32.store offset=84
                                                local.get 5
                                                i32.const 168
                                                i32.add
                                                local.get 5
                                                i32.const 64
                                                i32.add
                                                i32.const 0
                                                call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsdwI7iSz8jyL_10myrmic_sdk
                                                local.get 5
                                                i64.load offset=168
                                                i64.const -1
                                                i64.eq
                                                br_if 2 (;@20;)
                                                local.get 5
                                                i32.const 168
                                                i32.add
                                                local.get 5
                                                i32.const 191
                                                i32.add
                                                call $_RNvMs1_NtCsgzaNOZ9sV4N_10serde_json2deNtB5_12ParserNumber12invalid_type
                                                local.set 8
                                                br 10 (;@12;)
                                              end
                                              local.get 5
                                              i32.const 0
                                              i32.store offset=72
                                              local.get 5
                                              local.get 8
                                              i32.const 1
                                              i32.add
                                              i32.store offset=84
                                              local.get 5
                                              i32.const 96
                                              i32.add
                                              local.get 5
                                              i32.const 76
                                              i32.add
                                              local.get 5
                                              i32.const 64
                                              i32.add
                                              call $_RNvXs1_NtCsgzaNOZ9sV4N_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str
                                              local.get 5
                                              i32.load offset=100
                                              local.set 8
                                              local.get 5
                                              i32.load offset=96
                                              i32.const 2
                                              i32.eq
                                              br_if 10 (;@11;)
                                              local.get 5
                                              local.get 5
                                              i32.load offset=104
                                              i32.store offset=176
                                              local.get 5
                                              local.get 8
                                              i32.store offset=172
                                              local.get 5
                                              i32.const 5
                                              i32.store8 offset=168
                                              local.get 5
                                              i32.const 168
                                              i32.add
                                              local.get 5
                                              i32.const 191
                                              i32.add
                                              i32.const 41056
                                              call $_RNvXs5_NtCsgzaNOZ9sV4N_10serde_json5errorNtB5_5ErrorNtNtCs3wU1vCl2ErL_10serde_core2de5Error12invalid_type
                                              local.set 8
                                              br 9 (;@12;)
                                            end
                                            local.get 5
                                            i32.const 168
                                            i32.add
                                            local.get 5
                                            i32.const 64
                                            i32.add
                                            i32.const 1
                                            call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsdwI7iSz8jyL_10myrmic_sdk
                                            local.get 5
                                            i64.load offset=168
                                            i64.const -1
                                            i64.ne
                                            br_if 1 (;@19;)
                                          end
                                          local.get 5
                                          i32.load offset=176
                                          local.set 8
                                          br 8 (;@11;)
                                        end
                                        local.get 5
                                        i32.const 168
                                        i32.add
                                        local.get 5
                                        i32.const 191
                                        i32.add
                                        call $_RNvMs1_NtCsgzaNOZ9sV4N_10serde_json2deNtB5_12ParserNumber12invalid_type
                                        local.set 8
                                        br 6 (;@12;)
                                      end
                                      local.get 5
                                      local.get 8
                                      i32.const 1
                                      i32.add
                                      i32.store offset=84
                                      local.get 5
                                      i32.const 64
                                      i32.add
                                      i32.const 41072
                                      i32.const 3
                                      call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsdwI7iSz8jyL_10myrmic_sdk
                                      local.tee 8
                                      i32.eqz
                                      br_if 4 (;@13;)
                                      br 6 (;@11;)
                                    end
                                    local.get 5
                                    i32.const 128
                                    i32.add
                                    local.get 5
                                    i32.const 64
                                    i32.add
                                    i32.const 1
                                    call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsdwI7iSz8jyL_10myrmic_sdk
                                    block  ;; label = @17
                                      local.get 5
                                      i64.load offset=128
                                      local.tee 10
                                      i64.const -1
                                      i64.eq
                                      br_if 0 (;@17;)
                                      local.get 5
                                      i32.const 128
                                      i32.add
                                      i32.const 8
                                      i32.add
                                      local.set 8
                                      br 7 (;@10;)
                                    end
                                    local.get 5
                                    i32.load offset=136
                                    local.set 6
                                    br 7 (;@9;)
                                  end
                                  local.get 5
                                  i32.load offset=52
                                  local.get 7
                                  call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
                                  i32.const 24
                                  local.set 7
                                  i32.const 35738
                                  local.set 4
                                  br 11 (;@4;)
                                end
                                local.get 5
                                i32.const 5
                                i32.store offset=168
                                local.get 5
                                i32.const 64
                                i32.add
                                local.get 5
                                i32.const 168
                                i32.add
                                call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsdwI7iSz8jyL_10myrmic_sdk
                                local.set 6
                                br 5 (;@9;)
                              end
                              local.get 5
                              i32.load offset=120
                              local.set 6
                              br 4 (;@9;)
                            end
                            local.get 5
                            i32.const 7
                            i32.store8 offset=168
                            local.get 5
                            i32.const 168
                            i32.add
                            local.get 5
                            i32.const 191
                            i32.add
                            i32.const 41056
                            call $_RNvXs5_NtCsgzaNOZ9sV4N_10serde_json5errorNtB5_5ErrorNtNtCs3wU1vCl2ErL_10serde_core2de5Error12invalid_type
                            local.set 8
                          end
                          local.get 8
                          local.get 5
                          i32.const 64
                          i32.add
                          call $_RINvMs_NtCsgzaNOZ9sV4N_10serde_json5errorNtB5_5Error12fix_positionNCNvMs2_NtB7_2deINtB1a_12DeserializerNtNtB7_4read9SliceReadE12fix_position0ECsdwI7iSz8jyL_10myrmic_sdk
                          local.set 8
                        end
                        local.get 8
                        local.get 5
                        i32.const 64
                        i32.add
                        call $_RINvMs_NtCsgzaNOZ9sV4N_10serde_json5errorNtB5_5Error12fix_positionNCNvMs2_NtB7_2deINtB1a_12DeserializerNtNtB7_4read9SliceReadE12fix_position0ECsdwI7iSz8jyL_10myrmic_sdk
                        local.set 6
                        br 1 (;@9;)
                      end
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 10
                              i32.wrap_i64
                              br_table 2 (;@11;) 0 (;@13;) 1 (;@12;) 2 (;@11;)
                            end
                            local.get 8
                            i64.load
                            local.tee 10
                            i64.const 4294967296
                            i64.lt_u
                            br_if 4 (;@8;)
                            local.get 5
                            i32.const 1
                            i32.store8 offset=168
                            local.get 5
                            local.get 10
                            i64.store offset=176
                            local.get 5
                            i32.const 168
                            i32.add
                            local.get 5
                            i32.const 191
                            i32.add
                            call $_RNvXs5_NtCsgzaNOZ9sV4N_10serde_json5errorNtB5_5ErrorNtNtCs3wU1vCl2ErL_10serde_core2de5Error13invalid_value
                            local.set 8
                            br 2 (;@10;)
                          end
                          local.get 8
                          i64.load
                          local.tee 10
                          i64.const 4294967296
                          i64.lt_u
                          br_if 3 (;@8;)
                          local.get 5
                          i32.const 2
                          i32.store8 offset=168
                          local.get 5
                          local.get 10
                          i64.store offset=176
                          local.get 5
                          i32.const 168
                          i32.add
                          local.get 5
                          i32.const 191
                          i32.add
                          call $_RNvXs5_NtCsgzaNOZ9sV4N_10serde_json5errorNtB5_5ErrorNtNtCs3wU1vCl2ErL_10serde_core2de5Error13invalid_value
                          local.set 8
                          br 1 (;@10;)
                        end
                        local.get 8
                        f64.load
                        local.set 12
                        local.get 5
                        i32.const 3
                        i32.store8 offset=168
                        local.get 5
                        local.get 12
                        f64.store offset=176
                        local.get 5
                        i32.const 168
                        i32.add
                        local.get 5
                        i32.const 191
                        i32.add
                        i32.const 41056
                        call $_RNvXs5_NtCsgzaNOZ9sV4N_10serde_json5errorNtB5_5ErrorNtNtCs3wU1vCl2ErL_10serde_core2de5Error12invalid_type
                        local.set 8
                      end
                      local.get 8
                      local.get 5
                      i32.const 64
                      i32.add
                      call $_RINvMs_NtCsgzaNOZ9sV4N_10serde_json5errorNtB5_5Error12fix_positionNCNvMs2_NtB7_2deINtB1a_12DeserializerNtNtB7_4read9SliceReadE12fix_position0ECsdwI7iSz8jyL_10myrmic_sdk
                      local.set 6
                    end
                    i32.const 1
                    local.set 8
                    br 1 (;@7;)
                  end
                  local.get 5
                  i32.const 64
                  i32.add
                  call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE3endCsdwI7iSz8jyL_10myrmic_sdk
                  local.tee 8
                  local.get 10
                  i32.wrap_i64
                  local.get 8
                  select
                  local.set 6
                  local.get 8
                  i32.const 0
                  i32.ne
                  local.set 8
                end
                local.get 5
                i32.load offset=64
                local.get 5
                i32.load offset=68
                call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 8
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 8
                    br 1 (;@7;)
                  end
                  local.get 6
                  call $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueNtNtCsgzaNOZ9sV4N_10serde_json5error5ErrorECsdwI7iSz8jyL_10myrmic_sdk
                  local.get 5
                  i32.const 0
                  i32.store offset=84
                  local.get 5
                  local.get 4
                  i32.store offset=80
                  local.get 5
                  local.get 7
                  i32.store offset=76
                  local.get 5
                  i32.const 128
                  i32.store8 offset=88
                  local.get 5
                  i32.const 0
                  i32.store offset=72
                  local.get 5
                  i64.const 4294967296
                  i64.store offset=64 align=4
                  local.get 5
                  i32.const 96
                  i32.add
                  local.get 5
                  i32.const 64
                  i32.add
                  call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsdwI7iSz8jyL_10myrmic_sdk
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 5
                        i32.load8_u offset=96
                        i32.const 1
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 5
                        i32.load offset=100
                        local.set 8
                        br 1 (;@9;)
                      end
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 5
                                      i32.load8_u offset=97
                                      i32.const 1
                                      i32.ne
                                      br_if 0 (;@17;)
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              local.get 5
                                              i32.load8_u offset=98
                                              local.tee 8
                                              i32.const 34
                                              i32.eq
                                              br_if 0 (;@21;)
                                              block  ;; label = @22
                                                local.get 8
                                                i32.const 45
                                                i32.eq
                                                br_if 0 (;@22;)
                                                block  ;; label = @23
                                                  local.get 8
                                                  i32.const 102
                                                  i32.eq
                                                  br_if 0 (;@23;)
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      local.get 8
                                                      i32.const 110
                                                      i32.eq
                                                      br_if 0 (;@25;)
                                                      local.get 8
                                                      i32.const 116
                                                      i32.eq
                                                      br_if 1 (;@24;)
                                                      local.get 8
                                                      i32.const 91
                                                      i32.eq
                                                      br_if 5 (;@20;)
                                                      local.get 8
                                                      i32.const 123
                                                      i32.eq
                                                      br_if 6 (;@19;)
                                                      local.get 8
                                                      i32.const -48
                                                      i32.add
                                                      i32.const 255
                                                      i32.and
                                                      i32.const 10
                                                      i32.lt_u
                                                      br_if 7 (;@18;)
                                                      local.get 5
                                                      i32.const 10
                                                      i32.store offset=168
                                                      local.get 5
                                                      i32.const 64
                                                      i32.add
                                                      local.get 5
                                                      i32.const 168
                                                      i32.add
                                                      call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsdwI7iSz8jyL_10myrmic_sdk
                                                      local.get 5
                                                      i32.const 64
                                                      i32.add
                                                      call $_RINvMs_NtCsgzaNOZ9sV4N_10serde_json5errorNtB5_5Error12fix_positionNCNvMs2_NtB7_2deINtB1a_12DeserializerNtNtB7_4read9SliceReadE12fix_position0ECsdwI7iSz8jyL_10myrmic_sdk
                                                      local.set 8
                                                      br 16 (;@9;)
                                                    end
                                                    local.get 5
                                                    local.get 5
                                                    i32.load offset=84
                                                    i32.const 1
                                                    i32.add
                                                    i32.store offset=84
                                                    local.get 5
                                                    i32.const 64
                                                    i32.add
                                                    i32.const 41072
                                                    i32.const 3
                                                    call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsdwI7iSz8jyL_10myrmic_sdk
                                                    local.tee 8
                                                    br_if 15 (;@9;)
                                                    local.get 5
                                                    i32.const 7
                                                    i32.store8 offset=168
                                                    local.get 5
                                                    i32.const 168
                                                    i32.add
                                                    local.get 5
                                                    i32.const 191
                                                    i32.add
                                                    i32.const 41084
                                                    call $_RNvXs5_NtCsgzaNOZ9sV4N_10serde_json5errorNtB5_5ErrorNtNtCs3wU1vCl2ErL_10serde_core2de5Error12invalid_type
                                                    local.set 11
                                                    br 14 (;@10;)
                                                  end
                                                  local.get 5
                                                  local.get 5
                                                  i32.load offset=84
                                                  i32.const 1
                                                  i32.add
                                                  i32.store offset=84
                                                  local.get 5
                                                  i32.const 64
                                                  i32.add
                                                  i32.const 41075
                                                  i32.const 3
                                                  call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsdwI7iSz8jyL_10myrmic_sdk
                                                  local.tee 8
                                                  br_if 14 (;@9;)
                                                  local.get 5
                                                  i32.const 96
                                                  i32.add
                                                  i32.const 1
                                                  call $_RINvYNtNvXs5_NtCsgzaNOZ9sV4N_10serde_json6numberNtBb_6NumberNtNtCs3wU1vCl2ErL_10serde_core2de11Deserialize11deserialize13NumberVisitorNtBY_7Visitor10visit_boolNtNtBd_5error5ErrorECsdwI7iSz8jyL_10myrmic_sdk
                                                  br 12 (;@11;)
                                                end
                                                local.get 5
                                                local.get 5
                                                i32.load offset=84
                                                i32.const 1
                                                i32.add
                                                i32.store offset=84
                                                local.get 5
                                                i32.const 64
                                                i32.add
                                                i32.const 41078
                                                i32.const 4
                                                call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsdwI7iSz8jyL_10myrmic_sdk
                                                local.tee 8
                                                br_if 13 (;@9;)
                                                local.get 5
                                                i32.const 96
                                                i32.add
                                                i32.const 0
                                                call $_RINvYNtNvXs5_NtCsgzaNOZ9sV4N_10serde_json6numberNtBb_6NumberNtNtCs3wU1vCl2ErL_10serde_core2de11Deserialize11deserialize13NumberVisitorNtBY_7Visitor10visit_boolNtNtBd_5error5ErrorECsdwI7iSz8jyL_10myrmic_sdk
                                                br 11 (;@11;)
                                              end
                                              local.get 5
                                              local.get 5
                                              i32.load offset=84
                                              i32.const 1
                                              i32.add
                                              i32.store offset=84
                                              local.get 5
                                              i32.const 112
                                              i32.add
                                              local.get 5
                                              i32.const 64
                                              i32.add
                                              i32.const 0
                                              call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsdwI7iSz8jyL_10myrmic_sdk
                                              local.get 5
                                              i64.load offset=112
                                              i64.const -1
                                              i64.eq
                                              br_if 8 (;@13;)
                                              local.get 5
                                              i32.const 96
                                              i32.add
                                              local.get 5
                                              i32.const 112
                                              i32.add
                                              call $_RINvMs1_NtCsgzaNOZ9sV4N_10serde_json2deNtB6_12ParserNumber5visitNtNvXs5_NtB8_6numberNtB18_6NumberNtNtCs3wU1vCl2ErL_10serde_core2de11Deserialize11deserialize13NumberVisitorECsdwI7iSz8jyL_10myrmic_sdk
                                              br 10 (;@11;)
                                            end
                                            local.get 5
                                            i32.const 0
                                            i32.store offset=72
                                            local.get 5
                                            local.get 5
                                            i32.load offset=84
                                            i32.const 1
                                            i32.add
                                            i32.store offset=84
                                            local.get 5
                                            i32.const 148
                                            i32.add
                                            local.get 5
                                            i32.const 76
                                            i32.add
                                            local.get 5
                                            i32.const 64
                                            i32.add
                                            call $_RNvXs1_NtCsgzaNOZ9sV4N_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str
                                            local.get 5
                                            i32.load offset=152
                                            local.set 8
                                            local.get 5
                                            i32.load offset=148
                                            i32.const 2
                                            i32.eq
                                            br_if 11 (;@9;)
                                            local.get 5
                                            local.get 5
                                            i32.load offset=156
                                            i32.store offset=176
                                            local.get 5
                                            local.get 8
                                            i32.store offset=172
                                            local.get 5
                                            i32.const 5
                                            i32.store8 offset=168
                                            local.get 5
                                            i32.const 168
                                            i32.add
                                            local.get 5
                                            i32.const 191
                                            i32.add
                                            i32.const 41084
                                            call $_RNvXs5_NtCsgzaNOZ9sV4N_10serde_json5errorNtB5_5ErrorNtNtCs3wU1vCl2ErL_10serde_core2de5Error12invalid_type
                                            local.set 11
                                            br 10 (;@10;)
                                          end
                                          local.get 5
                                          local.get 5
                                          i32.load8_u offset=88
                                          local.tee 11
                                          i32.const -1
                                          i32.add
                                          local.tee 8
                                          i32.store8 offset=88
                                          local.get 8
                                          i32.const 255
                                          i32.and
                                          i32.eqz
                                          br_if 5 (;@14;)
                                          local.get 5
                                          local.get 5
                                          i32.load offset=84
                                          i32.const 1
                                          i32.add
                                          i32.store offset=84
                                          local.get 5
                                          i32.const 10
                                          i32.store8 offset=168
                                          local.get 5
                                          i32.const 168
                                          i32.add
                                          local.get 5
                                          i32.const 191
                                          i32.add
                                          i32.const 41084
                                          call $_RNvXs5_NtCsgzaNOZ9sV4N_10serde_json5errorNtB5_5ErrorNtNtCs3wU1vCl2ErL_10serde_core2de5Error12invalid_type
                                          local.set 8
                                          local.get 5
                                          local.get 11
                                          i32.store8 offset=88
                                          local.get 5
                                          i32.const 160
                                          i32.add
                                          local.get 5
                                          i32.const 64
                                          i32.add
                                          call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsdwI7iSz8jyL_10myrmic_sdk
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              local.get 5
                                              i32.load8_u offset=160
                                              i32.const 1
                                              i32.ne
                                              br_if 0 (;@21;)
                                              local.get 5
                                              i32.load offset=164
                                              local.set 11
                                              br 1 (;@20;)
                                            end
                                            block  ;; label = @21
                                              local.get 5
                                              i32.load8_u offset=161
                                              i32.const 1
                                              i32.ne
                                              br_if 0 (;@21;)
                                              block  ;; label = @22
                                                local.get 5
                                                i32.load8_u offset=162
                                                local.tee 11
                                                i32.const 93
                                                i32.eq
                                                br_if 0 (;@22;)
                                                block  ;; label = @23
                                                  local.get 11
                                                  i32.const 44
                                                  i32.eq
                                                  br_if 0 (;@23;)
                                                  local.get 5
                                                  i32.const 22
                                                  i32.store offset=168
                                                  local.get 5
                                                  i32.const 64
                                                  i32.add
                                                  local.get 5
                                                  i32.const 168
                                                  i32.add
                                                  call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsdwI7iSz8jyL_10myrmic_sdk
                                                  local.set 11
                                                  br 3 (;@20;)
                                                end
                                                local.get 5
                                                local.get 5
                                                i32.load offset=84
                                                i32.const 1
                                                i32.add
                                                i32.store offset=84
                                                local.get 5
                                                i32.const 148
                                                i32.add
                                                local.get 5
                                                i32.const 64
                                                i32.add
                                                call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsdwI7iSz8jyL_10myrmic_sdk
                                                block  ;; label = @23
                                                  local.get 5
                                                  i32.load8_u offset=148
                                                  local.tee 13
                                                  br_if 0 (;@23;)
                                                  local.get 5
                                                  i32.load8_u offset=149
                                                  i32.const 1
                                                  i32.ne
                                                  br_if 0 (;@23;)
                                                  local.get 5
                                                  i32.load8_u offset=150
                                                  i32.const 255
                                                  i32.and
                                                  i32.const 93
                                                  i32.ne
                                                  br_if 0 (;@23;)
                                                  local.get 5
                                                  i32.const 21
                                                  i32.store offset=168
                                                  local.get 5
                                                  i32.const 64
                                                  i32.add
                                                  local.get 5
                                                  i32.const 168
                                                  i32.add
                                                  call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsdwI7iSz8jyL_10myrmic_sdk
                                                  local.set 11
                                                  br 3 (;@20;)
                                                end
                                                local.get 5
                                                i32.const 22
                                                i32.store offset=168
                                                local.get 5
                                                i32.const 64
                                                i32.add
                                                local.get 5
                                                i32.const 168
                                                i32.add
                                                call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsdwI7iSz8jyL_10myrmic_sdk
                                                local.set 11
                                                local.get 13
                                                i32.eqz
                                                br_if 2 (;@20;)
                                                local.get 5
                                                i32.load offset=152
                                                call $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueNtNtCsgzaNOZ9sV4N_10serde_json5error5ErrorECsdwI7iSz8jyL_10myrmic_sdk
                                                br 2 (;@20;)
                                              end
                                              local.get 5
                                              local.get 5
                                              i32.load offset=84
                                              i32.const 1
                                              i32.add
                                              i32.store offset=84
                                              local.get 5
                                              local.get 8
                                              i32.store offset=104
                                              local.get 5
                                              i64.const -1
                                              i64.store offset=96
                                              br 5 (;@16;)
                                            end
                                            local.get 5
                                            i32.const 2
                                            i32.store offset=168
                                            local.get 5
                                            i32.const 64
                                            i32.add
                                            local.get 5
                                            i32.const 168
                                            i32.add
                                            call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsdwI7iSz8jyL_10myrmic_sdk
                                            local.set 11
                                          end
                                          local.get 5
                                          local.get 8
                                          i32.store offset=104
                                          local.get 5
                                          i64.const -1
                                          i64.store offset=96
                                          local.get 11
                                          call $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueNtNtCsgzaNOZ9sV4N_10serde_json5error5ErrorECsdwI7iSz8jyL_10myrmic_sdk
                                          br 8 (;@11;)
                                        end
                                        local.get 5
                                        local.get 5
                                        i32.load8_u offset=88
                                        local.tee 11
                                        i32.const -1
                                        i32.add
                                        local.tee 8
                                        i32.store8 offset=88
                                        local.get 8
                                        i32.const 255
                                        i32.and
                                        i32.eqz
                                        br_if 3 (;@15;)
                                        local.get 5
                                        local.get 5
                                        i32.load offset=84
                                        i32.const 1
                                        i32.add
                                        i32.store offset=84
                                        local.get 5
                                        i32.const 11
                                        i32.store8 offset=168
                                        local.get 5
                                        i32.const 168
                                        i32.add
                                        local.get 5
                                        i32.const 191
                                        i32.add
                                        i32.const 41084
                                        call $_RNvXs5_NtCsgzaNOZ9sV4N_10serde_json5errorNtB5_5ErrorNtNtCs3wU1vCl2ErL_10serde_core2de5Error12invalid_type
                                        local.set 8
                                        local.get 5
                                        local.get 11
                                        i32.store8 offset=88
                                        local.get 5
                                        i32.const 148
                                        i32.add
                                        local.get 5
                                        i32.const 64
                                        i32.add
                                        call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsdwI7iSz8jyL_10myrmic_sdk
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            local.get 5
                                            i32.load8_u offset=148
                                            i32.const 1
                                            i32.ne
                                            br_if 0 (;@20;)
                                            local.get 5
                                            i32.load offset=152
                                            local.set 11
                                            br 1 (;@19;)
                                          end
                                          block  ;; label = @20
                                            local.get 5
                                            i32.load8_u offset=149
                                            i32.const 1
                                            i32.ne
                                            br_if 0 (;@20;)
                                            block  ;; label = @21
                                              local.get 5
                                              i32.load8_u offset=150
                                              local.tee 11
                                              i32.const 125
                                              i32.eq
                                              br_if 0 (;@21;)
                                              block  ;; label = @22
                                                local.get 11
                                                i32.const 44
                                                i32.eq
                                                br_if 0 (;@22;)
                                                local.get 5
                                                i32.const 22
                                                i32.store offset=168
                                                local.get 5
                                                i32.const 64
                                                i32.add
                                                local.get 5
                                                i32.const 168
                                                i32.add
                                                call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsdwI7iSz8jyL_10myrmic_sdk
                                                local.set 11
                                                br 3 (;@19;)
                                              end
                                              local.get 5
                                              i32.const 21
                                              i32.store offset=168
                                              local.get 5
                                              i32.const 64
                                              i32.add
                                              local.get 5
                                              i32.const 168
                                              i32.add
                                              call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsdwI7iSz8jyL_10myrmic_sdk
                                              local.set 11
                                              br 2 (;@19;)
                                            end
                                            local.get 5
                                            local.get 5
                                            i32.load offset=84
                                            i32.const 1
                                            i32.add
                                            i32.store offset=84
                                            local.get 5
                                            local.get 8
                                            i32.store offset=104
                                            local.get 5
                                            i64.const -1
                                            i64.store offset=96
                                            br 4 (;@16;)
                                          end
                                          local.get 5
                                          i32.const 3
                                          i32.store offset=168
                                          local.get 5
                                          i32.const 64
                                          i32.add
                                          local.get 5
                                          i32.const 168
                                          i32.add
                                          call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsdwI7iSz8jyL_10myrmic_sdk
                                          local.set 11
                                        end
                                        local.get 5
                                        local.get 8
                                        i32.store offset=104
                                        local.get 5
                                        i64.const -1
                                        i64.store offset=96
                                        local.get 11
                                        call $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueNtNtCsgzaNOZ9sV4N_10serde_json5error5ErrorECsdwI7iSz8jyL_10myrmic_sdk
                                        br 2 (;@16;)
                                      end
                                      local.get 5
                                      i32.const 128
                                      i32.add
                                      local.get 5
                                      i32.const 64
                                      i32.add
                                      i32.const 1
                                      call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsdwI7iSz8jyL_10myrmic_sdk
                                      local.get 5
                                      i64.load offset=128
                                      i64.const -1
                                      i64.ne
                                      br_if 5 (;@12;)
                                      local.get 5
                                      i32.load offset=136
                                      local.set 8
                                      br 8 (;@9;)
                                    end
                                    local.get 5
                                    i32.const 5
                                    i32.store offset=168
                                    local.get 5
                                    i32.const 64
                                    i32.add
                                    local.get 5
                                    i32.const 168
                                    i32.add
                                    call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsdwI7iSz8jyL_10myrmic_sdk
                                    local.set 8
                                    br 7 (;@9;)
                                  end
                                  local.get 5
                                  i32.load offset=104
                                  local.set 11
                                  br 5 (;@10;)
                                end
                                local.get 5
                                i32.const 24
                                i32.store offset=168
                                local.get 5
                                i32.const 64
                                i32.add
                                local.get 5
                                i32.const 168
                                i32.add
                                call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsdwI7iSz8jyL_10myrmic_sdk
                                local.set 8
                                br 5 (;@9;)
                              end
                              local.get 5
                              i32.const 24
                              i32.store offset=168
                              local.get 5
                              i32.const 64
                              i32.add
                              local.get 5
                              i32.const 168
                              i32.add
                              call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsdwI7iSz8jyL_10myrmic_sdk
                              local.set 8
                              br 4 (;@9;)
                            end
                            local.get 5
                            i32.load offset=120
                            local.set 8
                            br 3 (;@9;)
                          end
                          local.get 5
                          i32.const 96
                          i32.add
                          local.get 5
                          i32.const 128
                          i32.add
                          call $_RINvMs1_NtCsgzaNOZ9sV4N_10serde_json2deNtB6_12ParserNumber5visitNtNvXs5_NtB8_6numberNtB18_6NumberNtNtCs3wU1vCl2ErL_10serde_core2de11Deserialize11deserialize13NumberVisitorECsdwI7iSz8jyL_10myrmic_sdk
                        end
                        local.get 5
                        i32.load offset=104
                        local.set 11
                        local.get 5
                        i64.load offset=96
                        local.tee 10
                        i64.const -1
                        i64.eq
                        br_if 0 (;@10;)
                        local.get 5
                        i64.load32_u offset=108
                        local.set 14
                        i64.const -1
                        local.get 10
                        local.get 5
                        i32.const 64
                        i32.add
                        call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE3endCsdwI7iSz8jyL_10myrmic_sdk
                        local.tee 8
                        select
                        local.set 10
                        local.get 14
                        i64.const 32
                        i64.shl
                        local.set 14
                        local.get 8
                        local.get 11
                        local.get 8
                        select
                        local.set 8
                        br 2 (;@8;)
                      end
                      local.get 11
                      local.get 5
                      i32.const 64
                      i32.add
                      call $_RINvMs_NtCsgzaNOZ9sV4N_10serde_json5errorNtB5_5Error12fix_positionNCNvMs2_NtB7_2deINtB1a_12DeserializerNtNtB7_4read9SliceReadE12fix_position0ECsdwI7iSz8jyL_10myrmic_sdk
                      local.set 8
                    end
                    i64.const 0
                    local.set 14
                    i64.const -1
                    local.set 10
                  end
                  local.get 5
                  i32.load offset=64
                  local.get 5
                  i32.load offset=68
                  call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
                  block  ;; label = @8
                    local.get 10
                    i64.const -1
                    i64.ne
                    br_if 0 (;@8;)
                    local.get 8
                    call $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueNtNtCsgzaNOZ9sV4N_10serde_json5error5ErrorECsdwI7iSz8jyL_10myrmic_sdk
                    i32.const 41100
                    local.set 8
                    i32.const 26
                    local.set 6
                    br 1 (;@7;)
                  end
                  local.get 14
                  local.get 8
                  i64.extend_i32_u
                  i64.or
                  local.set 14
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 10
                          i32.wrap_i64
                          br_table 0 (;@11;) 1 (;@10;) 2 (;@9;) 0 (;@11;)
                        end
                        local.get 14
                        f64.convert_i64_u
                        local.set 12
                        br 2 (;@8;)
                      end
                      local.get 14
                      f64.convert_i64_s
                      local.set 12
                      br 1 (;@8;)
                    end
                    local.get 14
                    f64.reinterpret_i64
                    local.set 12
                  end
                  local.get 5
                  i32.const 32
                  i32.add
                  local.get 12
                  call $__fixdfti
                  local.get 12
                  f64.const 0x1.fffffffep+31 (;=4.29497e+09;)
                  f64.le
                  local.get 12
                  f64.const 0x0p+0 (;=0;)
                  f64.ge
                  local.tee 11
                  local.get 12
                  i64.const 0
                  i64.const -1
                  local.get 5
                  i64.load offset=32
                  i64.const 0
                  local.get 12
                  f64.const -0x1p+127 (;=-1.70141e+38;)
                  f64.ge
                  local.tee 8
                  select
                  local.get 12
                  f64.const 0x1.fffffffffffffp+126 (;=1.70141e+38;)
                  f64.gt
                  local.tee 13
                  select
                  local.get 12
                  local.get 12
                  f64.ne
                  local.tee 6
                  select
                  i64.const 0
                  i64.const 9223372036854775807
                  local.get 5
                  i64.load offset=40
                  i64.const -9223372036854775808
                  local.get 8
                  select
                  local.get 13
                  select
                  local.get 6
                  select
                  call $__floattidf
                  f64.eq
                  i32.and
                  i32.and
                  local.set 13
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 12
                      f64.const 0x1p+32 (;=4.29497e+09;)
                      f64.lt
                      local.get 11
                      i32.and
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 12
                      i32.trunc_f64_u
                      local.set 6
                      br 1 (;@8;)
                    end
                    i32.const 0
                    local.set 6
                  end
                  i32.const 0
                  i32.const 41726
                  local.get 13
                  select
                  local.set 8
                  i32.const -1
                  local.get 6
                  i32.const 0
                  local.get 11
                  select
                  local.get 12
                  f64.const 0x1.fffffffep+31 (;=4.29497e+09;)
                  f64.gt
                  select
                  i32.const 56
                  local.get 13
                  select
                  local.set 6
                end
                local.get 9
                local.get 7
                call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
                local.get 8
                i32.eqz
                br_if 0 (;@6;)
                local.get 6
                i32.const 106
                local.get 4
                select
                local.set 7
                local.get 8
                i32.const 35762
                local.get 4
                select
                local.set 4
                br 1 (;@5;)
              end
              local.get 5
              local.get 6
              i64.extend_i32_u
              i64.store offset=128
              block  ;; label = @6
                i32.const 0
                i32.load offset=71184
                i32.eqz
                br_if 0 (;@6;)
                i32.const 62
                local.set 7
                i32.const 35676
                local.set 4
                br 1 (;@5;)
              end
              i32.const 0
              i64.const 0
              i64.store offset=71208
              i32.const 0
              i64.const 0
              i64.store offset=71200
              i32.const 0
              i64.const 0
              i64.store offset=71192
              local.get 5
              i32.const 168
              i32.add
              i32.const 32768
              i32.const 7
              call $_RINvXs_NvMNtCsjAdaHq5oevx_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsh49aHnobDmh_5bench
              local.get 5
              i32.load offset=172
              local.set 15
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 5
                        i32.load offset=176
                        local.tee 16
                        br_if 0 (;@10;)
                        i32.const 20
                        local.set 16
                        i32.const 40780
                        local.set 4
                        br 1 (;@9;)
                      end
                      local.get 5
                      i32.const 0
                      i32.store offset=80
                      local.get 5
                      local.get 15
                      i32.store offset=72
                      local.get 5
                      local.get 15
                      i32.store offset=64
                      local.get 5
                      local.get 16
                      i32.store offset=68
                      local.get 5
                      local.get 15
                      local.get 16
                      i32.add
                      local.tee 17
                      i32.store offset=76
                      local.get 5
                      i32.const 64
                      i32.add
                      i32.const 8
                      i32.add
                      local.set 13
                      local.get 15
                      local.set 9
                      local.get 17
                      local.set 7
                      block  ;; label = @10
                        loop  ;; label = @11
                          local.get 5
                          i32.const 24
                          i32.add
                          local.get 13
                          call $_RINvNtNtCsdmBIiMovVma_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs18QDUBBZXOQ_13myrmic_common
                          local.get 5
                          i32.load offset=24
                          i32.const 1
                          i32.ne
                          br_if 1 (;@10;)
                          local.get 5
                          i32.load offset=28
                          local.set 4
                          local.get 5
                          local.get 5
                          i32.load offset=80
                          local.get 7
                          i32.add
                          local.get 9
                          local.get 5
                          i32.load offset=76
                          local.tee 8
                          i32.add
                          i32.sub
                          local.get 5
                          i32.load offset=72
                          local.tee 9
                          i32.add
                          i32.store offset=80
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 4
                              i32.const -9
                              i32.add
                              local.tee 7
                              i32.const 23
                              i32.gt_u
                              br_if 0 (;@13;)
                              i32.const 1
                              local.get 7
                              i32.shl
                              i32.const 8388639
                              i32.and
                              br_if 1 (;@12;)
                            end
                            local.get 8
                            local.set 7
                            local.get 4
                            i32.const 133
                            i32.lt_u
                            br_if 1 (;@11;)
                            block  ;; label = @13
                              local.get 4
                              i32.const 8
                              i32.shr_u
                              local.tee 11
                              i32.eqz
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 11
                                  i32.const 48
                                  i32.eq
                                  br_if 0 (;@15;)
                                  local.get 11
                                  i32.const 32
                                  i32.eq
                                  br_if 1 (;@14;)
                                  local.get 8
                                  local.set 7
                                  local.get 11
                                  i32.const 22
                                  i32.ne
                                  br_if 4 (;@11;)
                                  local.get 8
                                  local.set 7
                                  local.get 4
                                  i32.const 5760
                                  i32.ne
                                  br_if 4 (;@11;)
                                  br 3 (;@12;)
                                end
                                local.get 8
                                local.set 7
                                local.get 4
                                i32.const 12288
                                i32.ne
                                br_if 3 (;@11;)
                                br 2 (;@12;)
                              end
                              local.get 8
                              local.set 7
                              local.get 4
                              i32.const 255
                              i32.and
                              i32.load8_u offset=40800
                              i32.const 2
                              i32.and
                              i32.eqz
                              br_if 2 (;@11;)
                              br 1 (;@12;)
                            end
                            local.get 8
                            local.set 7
                            local.get 4
                            i32.const 255
                            i32.and
                            i32.load8_u offset=40800
                            i32.const 1
                            i32.and
                            i32.eqz
                            br_if 1 (;@11;)
                          end
                        end
                        i32.const 30
                        local.set 16
                        i32.const 40750
                        local.set 4
                        br 1 (;@9;)
                      end
                      local.get 5
                      local.get 17
                      i32.store offset=68
                      local.get 5
                      local.get 15
                      i32.store offset=64
                      loop  ;; label = @10
                        local.get 5
                        i32.const 16
                        i32.add
                        local.get 5
                        i32.const 64
                        i32.add
                        call $_RINvNtNtCsdmBIiMovVma_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs18QDUBBZXOQ_13myrmic_common
                        local.get 5
                        i32.load offset=16
                        i32.const 1
                        i32.ne
                        br_if 2 (;@8;)
                        local.get 5
                        i32.load offset=20
                        local.tee 4
                        i32.const -1
                        i32.eq
                        br_if 2 (;@8;)
                        local.get 4
                        i32.const 95
                        i32.eq
                        br_if 0 (;@10;)
                        local.get 4
                        i32.const -58
                        i32.add
                        i32.const -11
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 4
                        i32.const 2097119
                        i32.and
                        i32.const -91
                        i32.add
                        i32.const -27
                        i32.gt_u
                        br_if 0 (;@10;)
                      end
                      i32.const 67
                      local.set 16
                      i32.const 40683
                      local.set 4
                    end
                    local.get 5
                    i32.load offset=168
                    local.get 15
                    call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
                    br 1 (;@7;)
                  end
                  local.get 5
                  i32.load offset=168
                  local.tee 9
                  i32.const -1
                  i32.ne
                  br_if 1 (;@6;)
                  local.get 15
                  local.set 4
                end
                local.get 5
                local.get 16
                i32.store offset=68
                local.get 5
                local.get 4
                i32.store offset=64
                i32.const 35532
                i32.const 35
                local.get 5
                i32.const 64
                i32.add
                i32.const 36352
                i32.const 35568
                call $_RNvNtCsdmBIiMovVma_4core6result13unwrap_failed
                unreachable
              end
              local.get 5
              i32.const 64
              i32.add
              local.get 15
              local.get 16
              call $_RINvXs_NvMNtCsjAdaHq5oevx_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsdwI7iSz8jyL_10myrmic_sdk
              local.get 5
              i32.load offset=64
              local.set 11
              local.get 5
              i32.load offset=68
              local.set 7
              local.get 5
              i32.load offset=72
              local.set 4
              local.get 5
              i32.const 0
              i32.store offset=72
              local.get 5
              i64.const 4294967296
              i64.store offset=64 align=4
              local.get 5
              i32.const 0
              i32.store8 offset=172
              local.get 5
              i32.const 0
              i32.store offset=168
              local.get 5
              i32.const 8
              i32.add
              local.get 4
              local.get 5
              i32.const 168
              i32.add
              call $_RNvNtCs2WOo28oSl5V_8postcard6varint12varint_usize.178
              local.get 5
              i32.const 64
              i32.add
              local.get 5
              i32.load offset=8
              local.get 5
              i32.load offset=12
              call $_RNvMs1_NtCsjAdaHq5oevx_5alloc3vecINtB5_3VechE17extend_from_sliceCs18QDUBBZXOQ_13myrmic_common
              local.get 5
              i32.const 64
              i32.add
              local.get 7
              local.get 4
              call $_RNvMs1_NtCsjAdaHq5oevx_5alloc3vecINtB5_3VechE17extend_from_sliceCs18QDUBBZXOQ_13myrmic_common
              i64.const 0
              local.get 5
              i32.const 64
              i32.add
              call $_RINvXsC_NtNtCs3wU1vCl2ErL_10serde_core3ser5implsyNtB8_9Serialize9serializeQINtNtNtCs2WOo28oSl5V_8postcard3ser10serializer10SerializerNtNtNtB1g_7flavors9alloc_vec8AllocVecEECsdwI7iSz8jyL_10myrmic_sdk
              local.get 6
              i32.const 1000000
              i32.div_u
              local.tee 4
              i32.const 1000
              i32.mul
              local.get 6
              local.get 4
              i32.const 1000000
              i32.mul
              i32.sub
              i32.const 1000
              i32.div_u
              i32.add
              i64.extend_i32_u
              local.get 5
              i32.const 64
              i32.add
              call $_RINvXsC_NtNtCs3wU1vCl2ErL_10serde_core3ser5implsyNtB8_9Serialize9serializeQINtNtNtCs2WOo28oSl5V_8postcard3ser10serializer10SerializerNtNtNtB1g_7flavors9alloc_vec8AllocVecEECsdwI7iSz8jyL_10myrmic_sdk
              i32.const 1
              local.set 4
              local.get 5
              i32.const 64
              i32.add
              i32.const 1
              call $_RNvMsF_NtCsjAdaHq5oevx_5alloc3vecINtB5_3VechE4pushCsdwI7iSz8jyL_10myrmic_sdk
              local.get 5
              i32.const 0
              i32.store8 offset=172
              local.get 5
              i32.const 0
              i32.store offset=168
              local.get 5
              i32.const 2000
              local.get 5
              i32.const 168
              i32.add
              call $_RNvNtCs2WOo28oSl5V_8postcard6varint10varint_u32.179
              local.get 5
              i32.const 64
              i32.add
              local.get 5
              i32.load
              local.get 5
              i32.load offset=4
              call $_RNvMs1_NtCsjAdaHq5oevx_5alloc3vecINtB5_3VechE17extend_from_sliceCs18QDUBBZXOQ_13myrmic_common
              local.get 5
              i32.const 64
              i32.add
              i32.const 0
              call $_RNvMsF_NtCsjAdaHq5oevx_5alloc3vecINtB5_3VechE4pushCsdwI7iSz8jyL_10myrmic_sdk
              block  ;; label = @6
                block  ;; label = @7
                  local.get 5
                  i32.load offset=64
                  local.tee 13
                  i32.const -1
                  i32.eq
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 5
                    i32.load offset=68
                    local.tee 6
                    local.get 5
                    i32.load offset=72
                    call $_RNvNtNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions4cell6timers11c_functions12create_timer
                    local.tee 8
                    i32.const -1
                    i32.gt_s
                    br_if 0 (;@8;)
                    local.get 5
                    i32.const 64
                    i32.add
                    local.get 8
                    call $_RNvXs1_NtCsdwI7iSz8jyL_10myrmic_sdk5errorNtB5_8ApiErrorINtNtCsdmBIiMovVma_4core7convert4FromlE4from
                    local.get 5
                    i32.load offset=64
                    i32.const -1
                    i32.eq
                    local.set 4
                    local.get 5
                    i32.load offset=68
                    local.set 8
                  end
                  local.get 13
                  local.get 6
                  call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
                  local.get 11
                  local.get 7
                  call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
                  local.get 9
                  local.get 15
                  call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
                  local.get 4
                  br_if 1 (;@6;)
                  i32.const 21
                  local.set 7
                  i32.const 35584
                  local.set 4
                  br 2 (;@5;)
                end
                local.get 5
                i32.const 2
                i32.store8 offset=64
                i32.const 41360
                i32.const 29
                local.get 5
                i32.const 64
                i32.add
                i32.const 41280
                i32.const 41392
                call $_RNvNtCsdmBIiMovVma_4core6result13unwrap_failed
                unreachable
              end
              i32.const 0
              local.set 4
              i32.const 0
              local.get 8
              i32.store offset=71220
              i32.const 0
              i32.const 1
              i32.store8 offset=71216
              local.get 5
              i32.const 1
              i32.store offset=172
              local.get 5
              local.get 5
              i32.const 128
              i32.add
              i32.store offset=168
              local.get 5
              i32.const 64
              i32.add
              i32.const 34970
              local.get 5
              i32.const 168
              i32.add
              call $_RNvNtCsjAdaHq5oevx_5alloc3fmt6format
              local.get 5
              i32.const 168
              i32.add
              local.get 5
              i32.load offset=68
              local.tee 7
              local.get 5
              i32.load offset=72
              i32.const 2
              call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions7logging3log
              local.get 5
              i32.load offset=64
              local.get 7
              call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
            end
            local.get 4
            br_if 0 (;@4;)
            i32.const 0
            local.set 4
            br 1 (;@3;)
          end
          local.get 5
          local.get 7
          i32.store offset=116
          local.get 5
          local.get 4
          i32.store offset=112
          local.get 5
          i32.const 168
          i32.add
          local.get 4
          local.get 7
          call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions6errors12report_error
          local.get 5
          i32.load offset=168
          i32.const -1
          i32.ne
          br_if 1 (;@2;)
          local.get 5
          i32.const 2
          i32.store offset=68
          local.get 5
          local.get 5
          i32.const 112
          i32.add
          i32.store offset=64
          local.get 5
          i32.const 168
          i32.add
          i32.const 33279
          local.get 5
          i32.const 64
          i32.add
          call $_RNvNtCsjAdaHq5oevx_5alloc3fmt6format
          local.get 5
          i32.const 128
          i32.add
          local.get 5
          i32.load offset=172
          local.tee 4
          local.get 5
          i32.load offset=176
          i32.const 4
          call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions7logging3log
          local.get 5
          i32.load offset=128
          i32.const -1
          i32.ne
          br_if 2 (;@1;)
          local.get 5
          i32.load offset=168
          local.get 4
          call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
          i32.const -1
          local.set 4
        end
        local.get 5
        i32.const 192
        i32.add
        global.set $__stack_pointer
        local.get 4
        return
      end
      local.get 5
      local.get 5
      i32.load offset=176
      i32.store offset=72
      local.get 5
      local.get 5
      i64.load offset=168 align=4
      i64.store offset=64
      i32.const 40376
      i32.const 43
      local.get 5
      i32.const 64
      i32.add
      i32.const 36368
      i32.const 35916
      call $_RNvNtCsdmBIiMovVma_4core6result13unwrap_failed
      unreachable
    end
    local.get 5
    local.get 5
    i32.load offset=136
    i32.store offset=72
    local.get 5
    local.get 5
    i64.load offset=128 align=4
    i64.store offset=64
    i32.const 40376
    i32.const 43
    local.get 5
    i32.const 64
    i32.add
    i32.const 36368
    i32.const 35916
    call $_RNvNtCsdmBIiMovVma_4core6result13unwrap_failed
    unreachable)
  (func $_RNvXs1_NtCsdwI7iSz8jyL_10myrmic_sdk5errorNtB5_8ApiErrorINtNtCsdmBIiMovVma_4core7convert4FromlE4from (type 6) (param i32 i32)
    (local i32)
    i32.const 6
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.const 13
                i32.add
                br_table 2 (;@4;) 1 (;@5;) 5 (;@1;) 0 (;@6;)
              end
              local.get 1
              i32.const -127
              i32.eq
              br_if 3 (;@2;)
              local.get 1
              i32.const -116
              i32.eq
              br_if 2 (;@3;)
              local.get 0
              local.get 1
              i32.store offset=4
              i32.const 0
              local.set 2
              br 4 (;@1;)
            end
            i32.const 5
            local.set 2
            br 3 (;@1;)
          end
          i32.const 7
          local.set 2
          br 2 (;@1;)
        end
        i32.const 8
        local.set 2
        br 1 (;@1;)
      end
      local.get 0
      i32.const 27
      i32.store offset=8
      local.get 0
      i32.const 41408
      i32.store offset=4
      i32.const 3
      local.set 2
    end
    local.get 0
    local.get 2
    i32.store)
  (func $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsdwI7iSz8jyL_10myrmic_sdk (type 6) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 1
    i32.load offset=20
    local.tee 2
    local.get 1
    i32.load offset=16
    local.tee 3
    local.get 2
    local.get 3
    i32.gt_u
    select
    local.set 4
    local.get 1
    i32.load offset=12
    local.set 5
    loop  ;; label = @1
      block  ;; label = @2
        local.get 2
        local.get 3
        i32.ge_u
        br_if 0 (;@2;)
        local.get 5
        local.get 2
        i32.add
        i32.load8_u
        local.set 6
      end
      block  ;; label = @2
        local.get 4
        local.get 2
        i32.eq
        br_if 0 (;@2;)
        local.get 6
        i32.const 255
        i32.and
        i32.const -9
        i32.add
        local.tee 7
        i32.const 23
        i32.gt_u
        br_if 0 (;@2;)
        i32.const 1
        local.get 7
        i32.shl
        i32.const 8388627
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        i32.store offset=20
        br 1 (;@1;)
      end
    end
    local.get 0
    local.get 6
    i32.store8 offset=2
    local.get 0
    i32.const 0
    i32.store8
    local.get 0
    local.get 2
    local.get 3
    i32.lt_u
    i32.store8 offset=1)
  (func $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsdwI7iSz8jyL_10myrmic_sdk (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 8
    i32.add
    local.get 1
    call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE9next_charCsdwI7iSz8jyL_10myrmic_sdk
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.load8_u offset=8
                i32.const 1
                i32.ne
                br_if 0 (;@6;)
                local.get 3
                i32.load offset=12
                local.set 4
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 3
                i32.load8_u offset=9
                i32.const 1
                i32.ne
                br_if 0 (;@6;)
                local.get 3
                i32.load8_u offset=10
                local.tee 5
                i32.const 255
                i32.and
                i32.const 48
                i32.ne
                br_if 2 (;@4;)
                block  ;; label = @7
                  local.get 1
                  i32.load offset=20
                  local.tee 4
                  local.get 1
                  i32.load offset=16
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 1
                  i32.load offset=12
                  local.get 4
                  i32.add
                  i32.load8_u
                  i32.const -48
                  i32.add
                  i32.const 255
                  i32.and
                  i32.const 10
                  i32.lt_u
                  br_if 4 (;@3;)
                end
                local.get 0
                local.get 1
                local.get 2
                i64.const 0
                call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE12parse_numberCsdwI7iSz8jyL_10myrmic_sdk
                br 5 (;@1;)
              end
              local.get 3
              i32.const 5
              i32.store offset=16
              local.get 1
              local.get 3
              i32.const 16
              i32.add
              call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsdwI7iSz8jyL_10myrmic_sdk
              local.set 4
            end
            local.get 0
            i64.const -1
            i64.store
            local.get 0
            local.get 4
            i32.store offset=8
            br 3 (;@1;)
          end
          local.get 5
          i32.const -49
          i32.add
          i32.const 255
          i32.and
          i32.const 9
          i32.lt_u
          br_if 1 (;@2;)
          local.get 3
          i32.const 13
          i32.store offset=16
          local.get 1
          local.get 3
          i32.const 16
          i32.add
          call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsdwI7iSz8jyL_10myrmic_sdk
          local.set 4
          local.get 0
          i64.const -1
          i64.store
          local.get 0
          local.get 4
          i32.store offset=8
          br 2 (;@1;)
        end
        local.get 3
        i32.const 13
        i32.store offset=16
        local.get 1
        local.get 3
        i32.const 16
        i32.add
        call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsdwI7iSz8jyL_10myrmic_sdk
        local.set 4
        local.get 0
        i64.const -1
        i64.store
        local.get 0
        local.get 4
        i32.store offset=8
        br 1 (;@1;)
      end
      local.get 1
      i32.load offset=20
      local.tee 4
      local.get 1
      i32.load offset=16
      local.tee 6
      local.get 4
      local.get 6
      i32.gt_u
      select
      local.set 7
      local.get 5
      i32.const -48
      i32.add
      i64.extend_i32_u
      i64.const 255
      i64.and
      local.set 8
      local.get 1
      i32.load offset=12
      local.set 9
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 7
            local.get 4
            i32.eq
            br_if 0 (;@4;)
            local.get 9
            local.get 4
            i32.add
            i32.load8_u
            i32.const -48
            i32.add
            local.tee 5
            i32.const 255
            i32.and
            local.tee 6
            i32.const 10
            i32.lt_u
            br_if 1 (;@3;)
          end
          local.get 0
          local.get 1
          local.get 2
          local.get 8
          call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE12parse_numberCsdwI7iSz8jyL_10myrmic_sdk
          br 2 (;@1;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 8
            i64.const 1844674407370955161
            i64.lt_u
            br_if 0 (;@4;)
            local.get 8
            i64.const 1844674407370955161
            i64.ne
            br_if 1 (;@3;)
            local.get 6
            i32.const 5
            i32.gt_u
            br_if 1 (;@3;)
          end
          local.get 1
          local.get 4
          i32.const 1
          i32.add
          local.tee 4
          i32.store offset=20
          local.get 8
          i64.const 10
          i64.mul
          local.get 5
          i64.extend_i32_u
          i64.const 255
          i64.and
          i64.add
          local.set 8
          br 1 (;@2;)
        end
      end
      local.get 3
      i32.const 16
      i32.add
      local.get 1
      local.get 2
      local.get 8
      call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE18parse_long_integerCsdwI7iSz8jyL_10myrmic_sdk
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.load offset=16
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          local.get 3
          i32.load offset=20
          i32.store offset=8
          i64.const -1
          local.set 8
          br 1 (;@2;)
        end
        local.get 0
        local.get 3
        f64.load offset=24
        f64.store offset=8
        i64.const 0
        local.set 8
      end
      local.get 0
      local.get 8
      i64.store
    end
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsdwI7iSz8jyL_10myrmic_sdk (type 0) (param i32 i32) (result i32)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    local.get 0
    i32.load offset=12
    local.get 0
    i32.load offset=16
    local.tee 3
    local.get 0
    i32.load offset=20
    i32.const 1
    i32.add
    local.tee 0
    local.get 3
    local.get 0
    local.get 3
    i32.lt_u
    select
    call $_RNvMs_NtCsgzaNOZ9sV4N_10serde_json4readNtB4_9SliceRead17position_of_index
    local.get 2
    i64.load offset=8
    local.set 4
    call $_RNvNtCsjAdaHq5oevx_5alloc5boxed14box_new_uninit.333
    local.tee 0
    local.get 4
    i64.store offset=12 align=4
    local.get 0
    local.get 1
    i32.load offset=8
    i32.store offset=8
    local.get 0
    local.get 1
    i64.load align=4
    i64.store align=4
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_RNvXs5_NtCsgzaNOZ9sV4N_10serde_json5errorNtB5_5ErrorNtNtCs3wU1vCl2ErL_10serde_core2de5Error12invalid_type (type 1) (param i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 2
    i32.store offset=12
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    local.get 0
    i64.load offset=8
    i64.store offset=24
    local.get 3
    local.get 0
    i64.load
    i64.store offset=16
    local.get 3
    i32.const 8
    i32.store offset=44
    local.get 3
    i32.const 9
    i32.store offset=36
    local.get 3
    local.get 3
    i32.const 8
    i32.add
    i32.store offset=40
    local.get 3
    local.get 3
    i32.const 16
    i32.add
    i32.store offset=32
    i32.const 33190
    local.get 3
    i32.const 32
    i32.add
    call $_RINvXs5_NtCsgzaNOZ9sV4N_10serde_json5errorNtB6_5ErrorNtNtCs3wU1vCl2ErL_10serde_core2de5Error6customNtNtCsdmBIiMovVma_4core3fmt9ArgumentsEB8_
    local.set 0
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsdwI7iSz8jyL_10myrmic_sdk (type 1) (param i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          loop  ;; label = @4
            block  ;; label = @5
              local.get 2
              br_if 0 (;@5;)
              i32.const 0
              local.set 2
              br 4 (;@1;)
            end
            local.get 3
            i32.const 12
            i32.add
            local.get 0
            call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE9next_charCsdwI7iSz8jyL_10myrmic_sdk
            local.get 3
            i32.load8_u offset=12
            br_if 2 (;@2;)
            local.get 3
            i32.load8_u offset=13
            i32.const 1
            i32.ne
            br_if 1 (;@3;)
            block  ;; label = @5
              local.get 3
              i32.load8_u offset=14
              local.get 1
              i32.load8_u
              i32.ne
              br_if 0 (;@5;)
              local.get 1
              i32.const 1
              i32.add
              local.set 1
              local.get 2
              i32.const -1
              i32.add
              local.set 2
              br 1 (;@4;)
            end
          end
          local.get 3
          i32.const 9
          i32.store offset=20
          local.get 0
          local.get 3
          i32.const 20
          i32.add
          call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsdwI7iSz8jyL_10myrmic_sdk
          local.set 2
          br 2 (;@1;)
        end
        local.get 3
        i32.const 5
        i32.store offset=20
        local.get 0
        local.get 3
        i32.const 20
        i32.add
        call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsdwI7iSz8jyL_10myrmic_sdk
        local.set 2
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=16
      local.set 2
    end
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 2)
  (func $_RNvMs1_NtCsgzaNOZ9sV4N_10serde_json2deNtB5_12ParserNumber12invalid_type (type 0) (param i32 i32) (result i32)
    (local i32 f64 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load
            br_table 0 (;@4;) 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          local.get 0
          f64.load offset=8
          local.set 3
          local.get 2
          i32.const 3
          i32.store8
          local.get 2
          local.get 3
          f64.store offset=8
          local.get 2
          local.get 1
          i32.const 41056
          call $_RNvXs5_NtCsgzaNOZ9sV4N_10serde_json5errorNtB5_5ErrorNtNtCs3wU1vCl2ErL_10serde_core2de5Error12invalid_type
          local.set 0
          br 2 (;@1;)
        end
        local.get 0
        i64.load offset=8
        local.set 4
        local.get 2
        i32.const 1
        i32.store8
        local.get 2
        local.get 4
        i64.store offset=8
        local.get 2
        local.get 1
        i32.const 41056
        call $_RNvXs5_NtCsgzaNOZ9sV4N_10serde_json5errorNtB5_5ErrorNtNtCs3wU1vCl2ErL_10serde_core2de5Error12invalid_type
        local.set 0
        br 1 (;@1;)
      end
      local.get 0
      i64.load offset=8
      local.set 4
      local.get 2
      i32.const 2
      i32.store8
      local.get 2
      local.get 4
      i64.store offset=8
      local.get 2
      local.get 1
      i32.const 41056
      call $_RNvXs5_NtCsgzaNOZ9sV4N_10serde_json5errorNtB5_5ErrorNtNtCs3wU1vCl2ErL_10serde_core2de5Error12invalid_type
      local.set 0
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_RNvXs1_NtCsgzaNOZ9sV4N_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        loop  ;; label = @11
                          local.get 1
                          i32.load offset=8
                          local.tee 4
                          local.get 1
                          i32.load offset=4
                          local.tee 5
                          i32.eq
                          br_if 2 (;@9;)
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 4
                                  local.get 5
                                  i32.ge_u
                                  br_if 0 (;@15;)
                                  local.get 1
                                  i32.load
                                  local.tee 6
                                  local.get 4
                                  i32.add
                                  i32.load8_u
                                  local.tee 7
                                  i32.const 34
                                  i32.eq
                                  br_if 2 (;@13;)
                                  local.get 7
                                  i32.const 92
                                  i32.eq
                                  br_if 2 (;@13;)
                                  local.get 7
                                  i32.const 32
                                  i32.lt_u
                                  br_if 2 (;@13;)
                                  local.get 3
                                  local.get 4
                                  i32.const 1
                                  i32.add
                                  local.tee 8
                                  local.get 6
                                  local.get 5
                                  i32.const 42080
                                  call $_RNvXs5_NtNtCsdmBIiMovVma_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgzaNOZ9sV4N_10serde_json
                                  local.get 3
                                  i32.load
                                  i32.const -8
                                  i32.add
                                  local.set 9
                                  i32.const 0
                                  local.get 3
                                  i32.load offset=4
                                  local.tee 10
                                  i32.const 2147483640
                                  i32.and
                                  i32.sub
                                  local.set 7
                                  loop  ;; label = @16
                                    local.get 7
                                    i32.eqz
                                    br_if 2 (;@14;)
                                    local.get 7
                                    i32.const 8
                                    i32.add
                                    local.set 7
                                    local.get 9
                                    i32.const 8
                                    i32.add
                                    local.tee 9
                                    i64.load align=1
                                    local.tee 11
                                    i64.const 2459565876494606882
                                    i64.xor
                                    i64.const -72340172838076673
                                    i64.add
                                    local.get 11
                                    i64.const -2314885530818453536
                                    i64.add
                                    i64.or
                                    local.get 11
                                    i64.const 6655295901103053916
                                    i64.xor
                                    i64.const -72340172838076673
                                    i64.add
                                    i64.or
                                    local.get 11
                                    i64.const -1
                                    i64.xor
                                    i64.and
                                    i64.const -9187201950435737472
                                    i64.and
                                    local.tee 11
                                    i64.eqz
                                    br_if 0 (;@16;)
                                  end
                                  local.get 1
                                  local.get 9
                                  local.get 6
                                  i32.sub
                                  local.get 11
                                  i64.ctz
                                  i32.wrap_i64
                                  i32.const 3
                                  i32.shr_u
                                  i32.add
                                  local.tee 7
                                  i32.store offset=8
                                  br 3 (;@12;)
                                end
                                local.get 4
                                local.get 5
                                i32.const 42064
                                call $_RNvNtCsdmBIiMovVma_4core9panicking18panic_bounds_check
                                unreachable
                              end
                              local.get 1
                              local.get 10
                              i32.const -8
                              i32.and
                              local.get 8
                              i32.add
                              i32.store offset=8
                              local.get 1
                              call $_RNvMs_NtCsgzaNOZ9sV4N_10serde_json4readNtB4_9SliceRead19skip_to_escape_slow
                              local.get 1
                              i32.load offset=4
                              local.set 5
                              local.get 1
                              i32.load offset=8
                              local.set 7
                              br 1 (;@12;)
                            end
                            local.get 4
                            local.set 7
                          end
                          local.get 7
                          local.get 5
                          i32.eq
                          br_if 2 (;@9;)
                          local.get 7
                          local.get 5
                          i32.ge_u
                          br_if 3 (;@8;)
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 1
                              i32.load
                              local.tee 9
                              local.get 7
                              i32.add
                              i32.load8_u
                              local.tee 6
                              i32.const 92
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 6
                              i32.const 34
                              i32.eq
                              br_if 1 (;@12;)
                              local.get 1
                              local.get 7
                              i32.const 1
                              i32.add
                              i32.store offset=8
                              local.get 3
                              i32.const 16
                              i32.store offset=20
                              local.get 0
                              local.get 1
                              local.get 3
                              i32.const 20
                              i32.add
                              call $_RINvNtCsgzaNOZ9sV4N_10serde_json4read5errorNtB2_9SliceReadINtB2_9ReferenceeEEB4_
                              br 12 (;@1;)
                            end
                            local.get 7
                            local.get 4
                            i32.lt_u
                            br_if 5 (;@7;)
                            local.get 2
                            local.get 9
                            local.get 4
                            i32.add
                            local.get 7
                            local.get 4
                            i32.sub
                            call $_RNvMs1_NtCsjAdaHq5oevx_5alloc3vecINtB5_3VechE17extend_from_sliceCsgzaNOZ9sV4N_10serde_json
                            local.get 1
                            local.get 7
                            i32.const 1
                            i32.add
                            local.tee 4
                            i32.store offset=8
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 4
                                local.get 5
                                i32.ge_u
                                br_if 0 (;@14;)
                                local.get 1
                                local.get 7
                                i32.const 2
                                i32.add
                                i32.store offset=8
                                local.get 3
                                local.get 9
                                local.get 4
                                i32.add
                                i32.load8_u
                                local.tee 7
                                i32.store8 offset=13
                                br 1 (;@13;)
                              end
                              local.get 3
                              i32.const 4
                              i32.store offset=20
                              local.get 3
                              i32.const 12
                              i32.add
                              local.get 1
                              local.get 3
                              i32.const 20
                              i32.add
                              call $_RINvNtCsgzaNOZ9sV4N_10serde_json4read5errorNtB2_9SliceReadhEB4_
                              block  ;; label = @14
                                local.get 3
                                i32.load8_u offset=12
                                i32.const 1
                                i32.ne
                                br_if 0 (;@14;)
                                local.get 3
                                i32.load offset=16
                                local.set 7
                                br 12 (;@2;)
                              end
                              local.get 3
                              i32.load8_u offset=13
                              local.set 7
                            end
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  local.get 7
                                                  i32.const 255
                                                  i32.and
                                                  local.tee 7
                                                  i32.const -110
                                                  i32.add
                                                  br_table 7 (;@16;) 1 (;@22;) 1 (;@22;) 1 (;@22;) 8 (;@15;) 1 (;@22;) 9 (;@14;) 10 (;@13;) 0 (;@23;)
                                                end
                                                block  ;; label = @23
                                                  local.get 7
                                                  i32.const -98
                                                  i32.add
                                                  br_table 5 (;@18;) 1 (;@22;) 1 (;@22;) 1 (;@22;) 6 (;@17;) 0 (;@23;)
                                                end
                                                local.get 7
                                                i32.const 34
                                                i32.eq
                                                br_if 1 (;@21;)
                                                local.get 7
                                                i32.const 47
                                                i32.eq
                                                br_if 3 (;@19;)
                                                local.get 7
                                                i32.const 92
                                                i32.eq
                                                br_if 2 (;@20;)
                                              end
                                              local.get 3
                                              i32.const 12
                                              i32.store offset=20
                                              local.get 1
                                              local.get 3
                                              i32.const 20
                                              i32.add
                                              call $_RINvNtCsgzaNOZ9sV4N_10serde_json4read5errorNtB2_9SliceReaduEB4_
                                              local.set 7
                                              br 19 (;@2;)
                                            end
                                            local.get 2
                                            i32.const 34
                                            call $_RNvMsF_NtCsjAdaHq5oevx_5alloc3vecINtB5_3VechE4pushCsgzaNOZ9sV4N_10serde_json
                                            br 9 (;@11;)
                                          end
                                          local.get 2
                                          i32.const 92
                                          call $_RNvMsF_NtCsjAdaHq5oevx_5alloc3vecINtB5_3VechE4pushCsgzaNOZ9sV4N_10serde_json
                                          br 8 (;@11;)
                                        end
                                        local.get 2
                                        i32.const 47
                                        call $_RNvMsF_NtCsjAdaHq5oevx_5alloc3vecINtB5_3VechE4pushCsgzaNOZ9sV4N_10serde_json
                                        br 7 (;@11;)
                                      end
                                      local.get 2
                                      i32.const 8
                                      call $_RNvMsF_NtCsjAdaHq5oevx_5alloc3vecINtB5_3VechE4pushCsgzaNOZ9sV4N_10serde_json
                                      br 6 (;@11;)
                                    end
                                    local.get 2
                                    i32.const 12
                                    call $_RNvMsF_NtCsjAdaHq5oevx_5alloc3vecINtB5_3VechE4pushCsgzaNOZ9sV4N_10serde_json
                                    br 5 (;@11;)
                                  end
                                  local.get 2
                                  i32.const 10
                                  call $_RNvMsF_NtCsjAdaHq5oevx_5alloc3vecINtB5_3VechE4pushCsgzaNOZ9sV4N_10serde_json
                                  br 4 (;@11;)
                                end
                                local.get 2
                                i32.const 13
                                call $_RNvMsF_NtCsjAdaHq5oevx_5alloc3vecINtB5_3VechE4pushCsgzaNOZ9sV4N_10serde_json
                                br 3 (;@11;)
                              end
                              local.get 2
                              i32.const 9
                              call $_RNvMsF_NtCsjAdaHq5oevx_5alloc3vecINtB5_3VechE4pushCsgzaNOZ9sV4N_10serde_json
                              br 2 (;@11;)
                            end
                            local.get 3
                            i32.const 20
                            i32.add
                            local.get 1
                            call $_RNvXs1_NtCsgzaNOZ9sV4N_10serde_json4readNtB5_9SliceReadNtB5_4Read17decode_hex_escape
                            local.get 3
                            i32.load16_u offset=20
                            i32.const 1
                            i32.eq
                            br_if 9 (;@3;)
                            block  ;; label = @13
                              local.get 3
                              i32.load16_u offset=22
                              local.tee 7
                              i32.const 64512
                              i32.and
                              i32.const 56320
                              i32.ne
                              br_if 0 (;@13;)
                              local.get 3
                              i32.const 20
                              i32.store offset=20
                              local.get 1
                              local.get 3
                              i32.const 20
                              i32.add
                              call $_RINvNtCsgzaNOZ9sV4N_10serde_json4read5errorNtB2_9SliceReaduEB4_
                              local.set 7
                              br 11 (;@2;)
                            end
                            block  ;; label = @13
                              local.get 7
                              i32.const 9216
                              i32.add
                              i32.const 65535
                              i32.and
                              i32.const 64512
                              i32.lt_u
                              br_if 0 (;@13;)
                              local.get 3
                              i32.const 20
                              i32.add
                              local.get 1
                              call $_RINvNtCsgzaNOZ9sV4N_10serde_json4read11peek_or_eofNtB2_9SliceReadEB4_
                              local.get 3
                              i32.load8_u offset=20
                              i32.const 1
                              i32.eq
                              br_if 10 (;@3;)
                              local.get 3
                              i32.load8_u offset=21
                              local.set 9
                              local.get 1
                              local.get 1
                              i32.load offset=8
                              local.tee 4
                              i32.const 1
                              i32.add
                              i32.store offset=8
                              local.get 9
                              i32.const 92
                              i32.ne
                              br_if 3 (;@10;)
                              local.get 3
                              i32.const 20
                              i32.add
                              local.get 1
                              call $_RINvNtCsgzaNOZ9sV4N_10serde_json4read11peek_or_eofNtB2_9SliceReadEB4_
                              local.get 3
                              i32.load8_u offset=20
                              br_if 10 (;@3;)
                              local.get 3
                              i32.load8_u offset=21
                              local.set 9
                              local.get 1
                              local.get 4
                              i32.const 2
                              i32.add
                              i32.store offset=8
                              local.get 9
                              i32.const 117
                              i32.ne
                              br_if 7 (;@6;)
                              local.get 3
                              i32.const 20
                              i32.add
                              local.get 1
                              call $_RNvXs1_NtCsgzaNOZ9sV4N_10serde_json4readNtB5_9SliceReadNtB5_4Read17decode_hex_escape
                              local.get 3
                              i32.load16_u offset=20
                              br_if 10 (;@3;)
                              block  ;; label = @14
                                local.get 3
                                i32.load16_u offset=22
                                local.tee 9
                                i32.const 8192
                                i32.add
                                i32.const 65535
                                i32.and
                                i32.const 64511
                                i32.gt_u
                                br_if 0 (;@14;)
                                local.get 3
                                i32.const 20
                                i32.store offset=20
                                local.get 1
                                local.get 3
                                i32.const 20
                                i32.add
                                call $_RINvNtCsgzaNOZ9sV4N_10serde_json4read5errorNtB2_9SliceReaduEB4_
                                local.set 7
                                br 12 (;@2;)
                              end
                              local.get 7
                              i32.const 10240
                              i32.add
                              i32.const 65535
                              i32.and
                              i32.const 10
                              i32.shl
                              local.get 9
                              i32.const 9216
                              i32.add
                              i32.const 65535
                              i32.and
                              i32.add
                              i32.const 65536
                              i32.add
                              local.get 2
                              call $_RNvNtCsgzaNOZ9sV4N_10serde_json4read19push_wtf8_codepoint
                              br 2 (;@11;)
                            end
                            local.get 7
                            local.get 2
                            call $_RNvNtCsgzaNOZ9sV4N_10serde_json4read19push_wtf8_codepoint
                            br 1 (;@11;)
                          end
                        end
                        block  ;; label = @11
                          local.get 2
                          i32.load offset=8
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 7
                          local.get 4
                          i32.lt_u
                          br_if 6 (;@5;)
                          local.get 2
                          local.get 9
                          local.get 4
                          i32.add
                          local.get 7
                          local.get 4
                          i32.sub
                          call $_RNvMs1_NtCsjAdaHq5oevx_5alloc3vecINtB5_3VechE17extend_from_sliceCsgzaNOZ9sV4N_10serde_json
                          i32.const 1
                          local.set 9
                          local.get 1
                          local.get 7
                          i32.const 1
                          i32.add
                          i32.store offset=8
                          local.get 3
                          i32.const 20
                          i32.add
                          local.get 1
                          local.get 2
                          i32.load offset=4
                          local.get 2
                          i32.load offset=8
                          call $_RNvYINvNtCsgzaNOZ9sV4N_10serde_json4read6as_strNtB5_9SliceReadEINtNtNtCsdmBIiMovVma_4core3ops8function6FnOnceTRBJ_RShEE9call_onceB7_
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 3
                              i32.load offset=20
                              local.tee 7
                              br_if 0 (;@13;)
                              i32.const 2
                              local.set 9
                              local.get 3
                              i32.load offset=24
                              local.set 7
                              br 1 (;@12;)
                            end
                            local.get 0
                            local.get 3
                            i32.load offset=24
                            i32.store offset=8
                          end
                          local.get 0
                          local.get 9
                          i32.store
                          local.get 0
                          local.get 7
                          i32.store offset=4
                          br 10 (;@1;)
                        end
                        local.get 7
                        local.get 4
                        i32.lt_u
                        br_if 6 (;@4;)
                        local.get 1
                        local.get 7
                        i32.const 1
                        i32.add
                        i32.store offset=8
                        local.get 3
                        i32.const 20
                        i32.add
                        local.get 1
                        local.get 9
                        local.get 4
                        i32.add
                        local.get 7
                        local.get 4
                        i32.sub
                        call $_RNvYINvNtCsgzaNOZ9sV4N_10serde_json4read6as_strNtB5_9SliceReadEINtNtNtCsdmBIiMovVma_4core3ops8function6FnOnceTRBJ_RShEE9call_onceB7_
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 3
                            i32.load offset=20
                            local.tee 7
                            br_if 0 (;@12;)
                            i32.const 2
                            local.set 9
                            local.get 3
                            i32.load offset=24
                            local.set 7
                            br 1 (;@11;)
                          end
                          local.get 0
                          local.get 3
                          i32.load offset=24
                          i32.store offset=8
                          i32.const 0
                          local.set 9
                        end
                        local.get 0
                        local.get 9
                        i32.store
                        local.get 0
                        local.get 7
                        i32.store offset=4
                        br 9 (;@1;)
                      end
                      local.get 3
                      i32.const 23
                      i32.store offset=20
                      local.get 1
                      local.get 3
                      i32.const 20
                      i32.add
                      call $_RINvNtCsgzaNOZ9sV4N_10serde_json4read5errorNtB2_9SliceReaduEB4_
                      local.set 7
                      br 7 (;@2;)
                    end
                    local.get 3
                    i32.const 4
                    i32.store offset=20
                    local.get 0
                    local.get 1
                    local.get 3
                    i32.const 20
                    i32.add
                    call $_RINvNtCsgzaNOZ9sV4N_10serde_json4read5errorNtB2_9SliceReadINtB2_9ReferenceeEEB4_
                    br 7 (;@1;)
                  end
                  local.get 7
                  local.get 5
                  i32.const 41916
                  call $_RNvNtCsdmBIiMovVma_4core9panicking18panic_bounds_check
                  unreachable
                end
                local.get 4
                local.get 7
                local.get 5
                i32.const 41964
                call $_RNvNtNtCsdmBIiMovVma_4core5slice5index16slice_index_fail
                unreachable
              end
              local.get 3
              i32.const 23
              i32.store offset=20
              local.get 1
              local.get 3
              i32.const 20
              i32.add
              call $_RINvNtCsgzaNOZ9sV4N_10serde_json4read5errorNtB2_9SliceReaduEB4_
              local.set 7
              br 3 (;@2;)
            end
            local.get 4
            local.get 7
            local.get 5
            i32.const 41932
            call $_RNvNtNtCsdmBIiMovVma_4core5slice5index16slice_index_fail
            unreachable
          end
          local.get 4
          local.get 7
          local.get 5
          i32.const 41948
          call $_RNvNtNtCsdmBIiMovVma_4core5slice5index16slice_index_fail
          unreachable
        end
        local.get 3
        i32.load offset=24
        local.set 7
      end
      local.get 0
      i32.const 2
      i32.store
      local.get 0
      local.get 7
      i32.store offset=4
    end
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_RINvMs_NtCsgzaNOZ9sV4N_10serde_json5errorNtB5_5Error12fix_positionNCNvMs2_NtB7_2deINtB1a_12DeserializerNtNtB7_4read9SliceReadE12fix_position0ECsdwI7iSz8jyL_10myrmic_sdk (type 0) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=12
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      return
    end
    local.get 1
    local.get 0
    call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsdwI7iSz8jyL_10myrmic_sdk
    local.set 1
    local.get 0
    call $_RNvXs8_NtCsjAdaHq5oevx_5alloc5boxedINtB5_3BoxNtNtCsgzaNOZ9sV4N_10serde_json5error9ErrorImplENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCsdwI7iSz8jyL_10myrmic_sdk
    local.get 1)
  (func $_RNvXs5_NtCsgzaNOZ9sV4N_10serde_json5errorNtB5_5ErrorNtNtCs3wU1vCl2ErL_10serde_core2de5Error13invalid_value (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 41056
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    local.get 0
    i64.load offset=8
    i64.store offset=24
    local.get 2
    local.get 0
    i64.load
    i64.store offset=16
    local.get 2
    i32.const 8
    i32.store offset=44
    local.get 2
    i32.const 9
    i32.store offset=36
    local.get 2
    local.get 2
    i32.const 8
    i32.add
    i32.store offset=40
    local.get 2
    local.get 2
    i32.const 16
    i32.add
    i32.store offset=32
    i32.const 33159
    local.get 2
    i32.const 32
    i32.add
    call $_RINvXs5_NtCsgzaNOZ9sV4N_10serde_json5errorNtB6_5ErrorNtNtCs3wU1vCl2ErL_10serde_core2de5Error6customNtNtCsdmBIiMovVma_4core3fmt9ArgumentsEB8_
    local.set 0
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE3endCsdwI7iSz8jyL_10myrmic_sdk (type 2) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 12
    i32.add
    local.get 0
    call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsdwI7iSz8jyL_10myrmic_sdk
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load8_u offset=12
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=16
        local.set 2
        br 1 (;@1;)
      end
      i32.const 0
      local.set 2
      local.get 1
      i32.load8_u offset=13
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.const 22
      i32.store offset=20
      local.get 0
      local.get 1
      i32.const 20
      i32.add
      call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsdwI7iSz8jyL_10myrmic_sdk
      local.set 2
    end
    local.get 1
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 2)
  (func $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueNtNtCsgzaNOZ9sV4N_10serde_json5error5ErrorECsdwI7iSz8jyL_10myrmic_sdk (type 8) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=8
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      i32.const 1
      local.get 1
      call $_RNvXs_NtCsf2KWoDnNIRz_14embedded_alloc4llffNtB4_4HeapNtNtNtCsdmBIiMovVma_4core5alloc6global11GlobalAlloc7dealloc
    end
    local.get 0
    call $_RNvXs8_NtCsjAdaHq5oevx_5alloc5boxedINtB5_3BoxNtNtCsgzaNOZ9sV4N_10serde_json5error9ErrorImplENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCsdwI7iSz8jyL_10myrmic_sdk)
  (func $_RINvYNtNvXs5_NtCsgzaNOZ9sV4N_10serde_json6numberNtBb_6NumberNtNtCs3wU1vCl2ErL_10serde_core2de11Deserialize11deserialize13NumberVisitorNtBY_7Visitor10visit_boolNtNtBd_5error5ErrorECsdwI7iSz8jyL_10myrmic_sdk (type 6) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 0
    i32.store8 offset=8
    local.get 2
    local.get 1
    i32.store8 offset=9
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 31
    i32.add
    i32.const 41084
    call $_RNvXs5_NtCsgzaNOZ9sV4N_10serde_json5errorNtB5_5ErrorNtNtCs3wU1vCl2ErL_10serde_core2de5Error12invalid_type
    local.set 1
    local.get 0
    i64.const -1
    i64.store
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_RINvMs1_NtCsgzaNOZ9sV4N_10serde_json2deNtB6_12ParserNumber5visitNtNvXs5_NtB8_6numberNtB18_6NumberNtNtCs3wU1vCl2ErL_10serde_core2de11Deserialize11deserialize13NumberVisitorECsdwI7iSz8jyL_10myrmic_sdk (type 6) (param i32 i32)
    (local i32 f64 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.load
            br_table 0 (;@4;) 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              f64.load offset=8
              local.tee 3
              i64.reinterpret_f64
              i64.const 9223372036854775807
              i64.and
              i64.const 9218868437227405311
              i64.gt_s
              br_if 0 (;@5;)
              local.get 0
              local.get 3
              f64.store offset=8
              i64.const 2
              local.set 4
              br 1 (;@4;)
            end
            local.get 2
            i32.const 8
            i32.add
            i32.const 17
            call $_RNvMs5_NtCsjAdaHq5oevx_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdwI7iSz8jyL_10myrmic_sdk
            local.get 2
            i32.load offset=8
            local.set 5
            local.get 2
            i32.load offset=12
            local.tee 1
            i32.const 0
            i64.load offset=41126 align=1
            i64.store align=1
            local.get 1
            i32.const 0
            i64.load offset=41134 align=1
            i64.store offset=8 align=1
            local.get 1
            i32.const 0
            i32.load8_u offset=41142
            i32.store8 offset=16
            local.get 2
            i32.const 17
            i32.store offset=28
            local.get 2
            local.get 1
            i32.store offset=24
            local.get 2
            local.get 5
            i32.store offset=20
            local.get 0
            local.get 2
            i32.const 20
            i32.add
            call $_RNvNtCsgzaNOZ9sV4N_10serde_json5error10make_error
            i32.store offset=8
            i64.const -1
            local.set 4
          end
          local.get 0
          local.get 4
          i64.store
          br 2 (;@1;)
        end
        local.get 0
        i64.const 0
        i64.store
        local.get 0
        local.get 1
        i64.load offset=8
        i64.store offset=8
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i64.load offset=8
      local.tee 4
      i64.store offset=8
      local.get 0
      local.get 4
      i64.const 63
      i64.shr_u
      i64.store
    end
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_RINvNtNtCsdmBIiMovVma_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs18QDUBBZXOQ_13myrmic_common (type 6) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load
        local.tee 2
        local.get 1
        i32.load offset=4
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        local.set 3
        br 1 (;@1;)
      end
      i32.const 1
      local.set 3
      local.get 1
      local.get 2
      i32.const 1
      i32.add
      i32.store
      local.get 2
      i32.load8_u
      local.tee 4
      i32.const 24
      i32.shl
      i32.const 24
      i32.shr_s
      i32.const -1
      i32.gt_s
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 2
      i32.add
      i32.store
      local.get 2
      i32.load8_u offset=1
      i32.const 63
      i32.and
      local.set 5
      local.get 4
      i32.const 31
      i32.and
      local.set 6
      block  ;; label = @2
        local.get 4
        i32.const 223
        i32.gt_u
        br_if 0 (;@2;)
        local.get 6
        i32.const 6
        i32.shl
        local.get 5
        i32.or
        local.set 4
        br 1 (;@1;)
      end
      local.get 1
      local.get 2
      i32.const 3
      i32.add
      i32.store
      local.get 5
      i32.const 6
      i32.shl
      local.get 2
      i32.load8_u offset=2
      i32.const 63
      i32.and
      i32.or
      local.set 5
      block  ;; label = @2
        local.get 4
        i32.const 240
        i32.ge_u
        br_if 0 (;@2;)
        local.get 5
        local.get 6
        i32.const 12
        i32.shl
        i32.or
        local.set 4
        br 1 (;@1;)
      end
      local.get 1
      local.get 2
      i32.const 4
      i32.add
      i32.store
      local.get 5
      i32.const 6
      i32.shl
      local.get 2
      i32.load8_u offset=3
      i32.const 63
      i32.and
      i32.or
      local.get 6
      i32.const 18
      i32.shl
      i32.const 1835008
      i32.and
      i32.or
      local.set 4
    end
    local.get 0
    local.get 4
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store)
  (func $_RNvNtCs2WOo28oSl5V_8postcard6varint12varint_usize.178 (type 5) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    i32.const 0
    local.set 4
    block  ;; label = @1
      loop  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 5
          i32.ne
          br_if 0 (;@3;)
          i32.const 5
          local.set 1
          br 2 (;@1;)
        end
        local.get 2
        local.get 4
        i32.add
        local.tee 5
        local.get 1
        i32.store8
        block  ;; label = @3
          local.get 1
          i32.const 127
          i32.gt_u
          br_if 0 (;@3;)
          local.get 3
          i32.const 8
          i32.add
          local.get 2
          local.get 4
          i32.const 41328
          call $_RNvXse_NtCsdmBIiMovVma_4core5arrayAhj5_INtNtNtB7_3ops5index8IndexMutINtNtBG_5range16RangeToInclusivejEE9index_mutCsdwI7iSz8jyL_10myrmic_sdk
          local.get 3
          i32.load offset=12
          local.set 1
          local.get 3
          i32.load offset=8
          local.set 2
          br 2 (;@1;)
        end
        local.get 5
        local.get 1
        i32.const 128
        i32.or
        i32.store8
        local.get 1
        i32.const 7
        i32.shr_u
        local.set 1
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 2
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_RNvMs1_NtCsjAdaHq5oevx_5alloc3vecINtB5_3VechE17extend_from_sliceCs18QDUBBZXOQ_13myrmic_common (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          local.get 0
          i32.load
          local.tee 4
          local.get 0
          i32.load offset=8
          local.tee 5
          i32.sub
          i32.le_u
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                local.get 5
                i32.add
                local.tee 6
                local.get 2
                i32.ge_u
                br_if 0 (;@6;)
                i32.const 0
                local.set 2
                br 1 (;@5;)
              end
              i32.const 0
              local.set 7
              local.get 3
              i32.const 20
              i32.add
              local.set 8
              block  ;; label = @6
                local.get 6
                local.get 4
                i32.const 1
                i32.shl
                local.tee 9
                local.get 6
                local.get 9
                i32.gt_u
                select
                local.tee 6
                i32.const 8
                local.get 6
                i32.const 8
                i32.gt_u
                select
                local.tee 6
                i32.const 0
                i32.lt_s
                br_if 0 (;@6;)
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 4
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 4
                    local.get 3
                    i32.const 28
                    i32.add
                    local.set 9
                    br 1 (;@7;)
                  end
                  local.get 0
                  i32.load offset=4
                  local.set 7
                  local.get 3
                  i32.const 1
                  i32.store offset=28
                  local.get 3
                  i32.const 24
                  i32.add
                  local.set 9
                end
                local.get 9
                local.get 4
                i32.store
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 3
                    i32.load offset=28
                    i32.eqz
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      local.get 3
                      i32.load offset=24
                      local.tee 4
                      br_if 0 (;@9;)
                      local.get 3
                      i32.const 8
                      i32.add
                      local.get 6
                      i32.const 0
                      call $_RNvMNtCsjAdaHq5oevx_5alloc5allocNtB2_6Global18alloc_impl_runtime
                      local.get 3
                      i32.load offset=8
                      local.set 4
                      br 2 (;@7;)
                    end
                    local.get 7
                    local.get 4
                    i32.const 1
                    local.get 6
                    call $_RNvCs1njKG4L9aB3_7___rustc14___rust_realloc
                    local.set 4
                    br 1 (;@7;)
                  end
                  local.get 3
                  local.get 6
                  i32.const 0
                  call $_RNvMNtCsjAdaHq5oevx_5alloc5allocNtB2_6Global18alloc_impl_runtime
                  local.get 3
                  i32.load
                  local.set 4
                end
                local.get 4
                br_if 2 (;@4;)
                local.get 3
                i32.const 1
                i32.store offset=20
                local.get 3
                i32.const 16
                i32.add
                local.set 8
                local.get 6
                local.set 7
              end
              local.get 8
              local.get 7
              i32.store
              local.get 3
              i32.load offset=16
              local.set 0
              local.get 3
              i32.load offset=20
              local.set 2
            end
            local.get 2
            local.get 0
            call $_RNvNtCsjAdaHq5oevx_5alloc7raw_vec12handle_error
            unreachable
          end
          local.get 0
          local.get 6
          i32.store
          local.get 0
          local.get 4
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=4
        local.set 4
      end
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      local.get 5
      i32.add
      local.get 1
      local.get 2
      memory.copy
    end
    local.get 0
    local.get 5
    local.get 2
    i32.add
    i32.store offset=8
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_RINvXsC_NtNtCs3wU1vCl2ErL_10serde_core3ser5implsyNtB8_9Serialize9serializeQINtNtNtCs2WOo28oSl5V_8postcard3ser10serializer10SerializerNtNtNtB1g_7flavors9alloc_vec8AllocVecEECsdwI7iSz8jyL_10myrmic_sdk (type 17) (param i64 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 0
    local.set 3
    local.get 2
    i32.const 0
    i32.store16 offset=24
    local.get 2
    i64.const 0
    i64.store offset=16
    loop  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 10
            i32.ne
            br_if 0 (;@4;)
            i32.const 10
            local.set 3
            local.get 2
            i32.const 16
            i32.add
            local.set 4
            br 1 (;@3;)
          end
          local.get 2
          i32.const 16
          i32.add
          local.get 3
          i32.add
          local.tee 4
          local.get 0
          i32.wrap_i64
          local.tee 5
          i32.store8
          local.get 0
          i64.const 127
          i64.gt_u
          br_if 1 (;@2;)
          local.get 2
          i32.const 8
          i32.add
          local.get 3
          local.get 2
          i32.const 16
          i32.add
          i32.const 10
          i32.const 41312
          call $_RNvXsa_NtNtCsdmBIiMovVma_4core5slice5indexINtNtNtB9_3ops5range16RangeToInclusivejEINtB5_10SliceIndexShE9index_mutCsdwI7iSz8jyL_10myrmic_sdk
          local.get 2
          i32.load offset=12
          local.set 3
          local.get 2
          i32.load offset=8
          local.set 4
        end
        local.get 1
        local.get 4
        local.get 3
        call $_RNvMs1_NtCsjAdaHq5oevx_5alloc3vecINtB5_3VechE17extend_from_sliceCs18QDUBBZXOQ_13myrmic_common
        local.get 2
        i32.const 32
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 4
      local.get 5
      i32.const 128
      i32.or
      i32.store8
      local.get 0
      i64.const 7
      i64.shr_u
      local.set 0
      local.get 3
      i32.const 1
      i32.add
      local.set 3
      br 0 (;@1;)
    end)
  (func $_RNvNtCs2WOo28oSl5V_8postcard6varint10varint_u32.179 (type 5) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    i32.const 0
    local.set 4
    block  ;; label = @1
      loop  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 5
          i32.ne
          br_if 0 (;@3;)
          i32.const 5
          local.set 1
          br 2 (;@1;)
        end
        local.get 2
        local.get 4
        i32.add
        local.tee 5
        local.get 1
        i32.store8
        block  ;; label = @3
          local.get 1
          i32.const 127
          i32.gt_u
          br_if 0 (;@3;)
          local.get 3
          i32.const 8
          i32.add
          local.get 2
          local.get 4
          i32.const 41296
          call $_RNvXse_NtCsdmBIiMovVma_4core5arrayAhj5_INtNtNtB7_3ops5index8IndexMutINtNtBG_5range16RangeToInclusivejEE9index_mutCsdwI7iSz8jyL_10myrmic_sdk
          local.get 3
          i32.load offset=12
          local.set 1
          local.get 3
          i32.load offset=8
          local.set 2
          br 2 (;@1;)
        end
        local.get 5
        local.get 1
        i32.const 128
        i32.or
        i32.store8
        local.get 1
        i32.const 7
        i32.shr_u
        local.set 1
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 2
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_RNvCs1njKG4L9aB3_7___rustc26___rust_alloc_error_handler (type 8) (param i32)
    local.get 0
    call $_RNvCs1njKG4L9aB3_7___rustc25___rdl_alloc_error_handler
    unreachable)
  (func $_RNvCs1njKG4L9aB3_7___rustc25___rdl_alloc_error_handler (type 8) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=4
    local.get 1
    i32.const 7
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 1
    i32.const 4
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=8
    local.get 1
    i32.const 8
    i32.add
    call $_RNvNtCsdmBIiMovVma_4core9panicking18panic_nounwind_fmt
    unreachable)
  (func $_RNvNtCsdmBIiMovVma_4core9panicking18panic_nounwind_fmt (type 8) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=16
    local.get 1
    i32.const 35098
    i32.store offset=12
    local.get 1
    i32.const 0
    i32.store16 offset=28
    local.get 1
    i32.const 36576
    i32.store offset=24
    local.get 1
    local.get 1
    i32.const 12
    i32.add
    i32.store offset=20
    local.get 1
    i32.const 20
    i32.add
    call $_RNvCs1njKG4L9aB3_7___rustc17rust_begin_unwind
    unreachable)
  (func $_RNvNtCsjAdaHq5oevx_5alloc5alloc18handle_alloc_error (type 8) (param i32)
    local.get 0
    call $_RNvCs1njKG4L9aB3_7___rustc26___rust_alloc_error_handler
    unreachable)
  (func $_RNvNtCsjAdaHq5oevx_5alloc7raw_vec17capacity_overflow (type 14)
    i32.const 36592
    i32.const 35
    i32.const 36612
    call $_RNvNtCsdmBIiMovVma_4core9panicking9panic_fmt
    unreachable)
  (func $_RINvNvMs2_NtCsjAdaHq5oevx_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalEBa_ (type 5) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 2
      local.get 1
      i32.add
      local.tee 1
      local.get 2
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      call $_RNvNtCsjAdaHq5oevx_5alloc7raw_vec12handle_error
      unreachable
    end
    local.get 3
    i32.const 4
    i32.add
    local.get 0
    i32.load
    local.tee 2
    local.get 0
    i32.load offset=4
    local.get 1
    local.get 2
    i32.const 1
    i32.shl
    local.tee 2
    local.get 1
    local.get 2
    i32.gt_u
    select
    local.tee 2
    i32.const 8
    local.get 2
    i32.const 8
    i32.gt_u
    select
    local.tee 2
    call $_RNvMs5_NtCsjAdaHq5oevx_5alloc7raw_vecNtB5_11RawVecInner11finish_growB7_
    block  ;; label = @1
      local.get 3
      i32.load offset=4
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=8
      local.get 3
      i32.load offset=12
      call $_RNvNtCsjAdaHq5oevx_5alloc7raw_vec12handle_error
      unreachable
    end
    local.get 3
    i32.load offset=8
    local.set 1
    local.get 0
    local.get 2
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_RNvMs5_NtCsjAdaHq5oevx_5alloc7raw_vecNtB5_11RawVecInner11finish_growB7_ (type 10) (param i32 i32 i32 i32)
    (local i32)
    i32.const 0
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 0
        i32.ge_s
        br_if 0 (;@2;)
        i32.const 1
        local.set 1
        i32.const 4
        local.set 2
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 1
          i32.const 1
          local.get 3
          call $_RNvCs1njKG4L9aB3_7___rustc14___rust_realloc
          local.set 4
          br 1 (;@2;)
        end
        local.get 3
        i32.const 1
        call $_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc
        local.set 4
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          br_if 0 (;@3;)
          i32.const 1
          local.set 1
          local.get 0
          i32.const 1
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 0
        local.get 4
        i32.store offset=4
        i32.const 0
        local.set 1
      end
      i32.const 8
      local.set 2
      local.get 3
      local.set 4
    end
    local.get 0
    local.get 2
    i32.add
    local.get 4
    i32.store
    local.get 0
    local.get 1
    i32.store)
  (func $_RNvCs1njKG4L9aB3_7___rustc14___rust_realloc (type 3) (param i32 i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 2
      local.get 3
      call $_RNvXs_NtCsf2KWoDnNIRz_14embedded_alloc4llffNtB4_4HeapNtNtNtCsdmBIiMovVma_4core5alloc6global11GlobalAlloc5alloc
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 3
        local.get 1
        local.get 3
        local.get 1
        i32.lt_u
        select
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        local.get 0
        local.get 3
        memory.copy
      end
      local.get 0
      local.get 2
      local.get 1
      call $_RNvXs_NtCsf2KWoDnNIRz_14embedded_alloc4llffNtB4_4HeapNtNtNtCsdmBIiMovVma_4core5alloc6global11GlobalAlloc7dealloc
    end
    local.get 4)
  (func $_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc (type 0) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    call $_RNvXs_NtCsf2KWoDnNIRz_14embedded_alloc4llffNtB4_4HeapNtNtNtCsdmBIiMovVma_4core5alloc6global11GlobalAlloc5alloc)
  (func $_RNvNtCsdmBIiMovVma_4core9panicking9panic_fmt (type 5) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=16
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.const 1
    i32.store16 offset=28
    local.get 3
    local.get 2
    i32.store offset=24
    local.get 3
    local.get 3
    i32.const 12
    i32.add
    i32.store offset=20
    local.get 3
    i32.const 20
    i32.add
    call $_RNvCs1njKG4L9aB3_7___rustc17rust_begin_unwind
    unreachable)
  (func $_RNvMs4_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_ (type 8) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 4
    i32.add
    local.get 0
    i32.load
    local.tee 2
    local.get 0
    i32.load offset=4
    local.get 2
    i32.const 1
    i32.shl
    local.tee 2
    i32.const 8
    local.get 2
    i32.const 8
    i32.gt_u
    select
    local.tee 2
    call $_RNvMs5_NtCsjAdaHq5oevx_5alloc7raw_vecNtB5_11RawVecInner11finish_growB7_
    block  ;; label = @1
      local.get 1
      i32.load offset=4
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=8
      local.get 1
      i32.load offset=12
      call $_RNvNtCsjAdaHq5oevx_5alloc7raw_vec12handle_error
      unreachable
    end
    local.get 1
    i32.load offset=8
    local.set 3
    local.get 0
    local.get 2
    i32.store
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_RNvNtCsdmBIiMovVma_4core3fmt5write (type 3) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 2
          i32.load8_u
          local.tee 5
          br_if 1 (;@2;)
          i32.const 0
          local.set 5
          br 2 (;@1;)
        end
        local.get 0
        local.get 2
        local.get 3
        i32.const 1
        i32.shr_u
        local.get 1
        i32.load offset=12
        call_indirect (type 1)
        local.set 5
        br 1 (;@1;)
      end
      local.get 1
      i32.load offset=12
      local.set 6
      i32.const 0
      local.set 7
      loop  ;; label = @2
        local.get 2
        i32.const 1
        i32.add
        local.set 8
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 5
                  i32.const 24
                  i32.shl
                  i32.const 24
                  i32.shr_s
                  i32.const -1
                  i32.gt_s
                  br_if 0 (;@7;)
                  local.get 5
                  i32.const 255
                  i32.and
                  local.tee 9
                  i32.const 128
                  i32.eq
                  br_if 1 (;@6;)
                  local.get 9
                  i32.const 192
                  i32.ne
                  br_if 3 (;@4;)
                  local.get 4
                  local.get 1
                  i32.store offset=4
                  local.get 4
                  local.get 0
                  i32.store
                  local.get 4
                  i64.const 1610612768
                  i64.store offset=8 align=4
                  local.get 3
                  local.get 7
                  i32.const 3
                  i32.shl
                  i32.add
                  local.tee 5
                  i32.load
                  local.get 4
                  local.get 5
                  i32.load offset=4
                  call_indirect (type 0)
                  i32.eqz
                  br_if 2 (;@5;)
                  i32.const 1
                  local.set 5
                  br 6 (;@1;)
                end
                block  ;; label = @7
                  local.get 0
                  local.get 8
                  local.get 5
                  i32.const 255
                  i32.and
                  local.tee 5
                  local.get 6
                  call_indirect (type 1)
                  br_if 0 (;@7;)
                  local.get 8
                  local.get 5
                  i32.add
                  local.set 2
                  br 4 (;@3;)
                end
                i32.const 1
                local.set 5
                br 5 (;@1;)
              end
              block  ;; label = @6
                local.get 0
                local.get 2
                i32.const 3
                i32.add
                local.tee 5
                local.get 2
                i32.load16_u offset=1 align=1
                local.tee 2
                local.get 6
                call_indirect (type 1)
                br_if 0 (;@6;)
                local.get 5
                local.get 2
                i32.add
                local.set 2
                br 3 (;@3;)
              end
              i32.const 1
              local.set 5
              br 4 (;@1;)
            end
            local.get 7
            i32.const 1
            i32.add
            local.set 7
            local.get 8
            local.set 2
            br 1 (;@3;)
          end
          i32.const 1610612768
          local.set 10
          block  ;; label = @4
            local.get 5
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.const 5
            i32.add
            local.set 8
            local.get 2
            i32.load offset=1 align=1
            local.set 10
          end
          i32.const 0
          local.set 9
          block  ;; label = @4
            block  ;; label = @5
              local.get 5
              i32.const 2
              i32.and
              br_if 0 (;@5;)
              i32.const 0
              local.set 11
              local.get 8
              local.set 2
              br 1 (;@4;)
            end
            local.get 8
            i32.const 2
            i32.add
            local.set 2
            local.get 8
            i32.load16_u align=1
            local.set 11
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 5
              i32.const 4
              i32.and
              br_if 0 (;@5;)
              local.get 2
              local.set 8
              br 1 (;@4;)
            end
            local.get 2
            i32.const 2
            i32.add
            local.set 8
            local.get 2
            i32.load16_u align=1
            local.set 9
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 5
              i32.const 8
              i32.and
              br_if 0 (;@5;)
              local.get 8
              local.set 2
              br 1 (;@4;)
            end
            local.get 8
            i32.const 2
            i32.add
            local.set 2
            local.get 8
            i32.load16_u align=1
            local.set 7
          end
          block  ;; label = @4
            local.get 5
            i32.const 16
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 11
            i32.const 65535
            i32.and
            i32.const 3
            i32.shl
            i32.add
            i32.load16_u offset=4
            local.set 11
          end
          block  ;; label = @4
            local.get 5
            i32.const 32
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 9
            i32.const 65535
            i32.and
            i32.const 3
            i32.shl
            i32.add
            i32.load16_u offset=4
            local.set 9
          end
          local.get 4
          local.get 9
          i32.store16 offset=14
          local.get 4
          local.get 11
          i32.store16 offset=12
          local.get 4
          local.get 10
          i32.store offset=8
          local.get 4
          local.get 1
          i32.store offset=4
          local.get 4
          local.get 0
          i32.store
          block  ;; label = @4
            local.get 3
            local.get 7
            i32.const 3
            i32.shl
            i32.add
            local.tee 5
            i32.load
            local.get 4
            local.get 5
            i32.load offset=4
            call_indirect (type 0)
            i32.eqz
            br_if 0 (;@4;)
            i32.const 1
            local.set 5
            br 3 (;@1;)
          end
          local.get 7
          i32.const 1
          i32.add
          local.set 7
        end
        local.get 2
        i32.load8_u
        local.tee 5
        br_if 0 (;@2;)
      end
      i32.const 0
      local.set 5
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 5)
  (func $_RNvXsK_NtCsdmBIiMovVma_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt (type 0) (param i32 i32) (result i32)
    local.get 1
    i32.load
    i32.const 36772
    i32.const 5
    local.get 1
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 1))
  (func $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueNtNtCsjAdaHq5oevx_5alloc6string6StringEBF_ (type 8) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.get 1
      i32.const 1
      call $_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc
    end)
  (func $_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc (type 5) (param i32 i32 i32)
    local.get 0
    local.get 2
    local.get 1
    call $_RNvXs_NtCsf2KWoDnNIRz_14embedded_alloc4llffNtB4_4HeapNtNtNtCsdmBIiMovVma_4core5alloc6global11GlobalAlloc7dealloc)
  (func $_RNvXsZ_NtCsjAdaHq5oevx_5alloc6stringNtB5_6StringNtNtCsdmBIiMovVma_4core3fmt5Write9write_str (type 1) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          local.get 0
          i32.load
          local.get 0
          i32.load offset=8
          local.tee 3
          i32.sub
          i32.le_u
          br_if 0 (;@3;)
          local.get 0
          local.get 3
          local.get 2
          call $_RINvNvMs2_NtCsjAdaHq5oevx_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalEBa_
          local.get 0
          i32.load offset=8
          local.set 3
          br 1 (;@2;)
        end
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.get 3
      i32.add
      local.get 1
      local.get 2
      memory.copy
    end
    local.get 0
    local.get 3
    local.get 2
    i32.add
    i32.store offset=8
    i32.const 0)
  (func $_RNvXsZ_NtCsjAdaHq5oevx_5alloc6stringNtB5_6StringNtNtCsdmBIiMovVma_4core3fmt5Write10write_char (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=8
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 128
        i32.ge_u
        br_if 0 (;@2;)
        i32.const 1
        local.set 3
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 1
        i32.const 2048
        i32.ge_u
        br_if 0 (;@2;)
        i32.const 2
        local.set 3
        br 1 (;@1;)
      end
      i32.const 3
      i32.const 4
      local.get 1
      i32.const 65536
      i32.lt_u
      select
      local.set 3
    end
    block  ;; label = @1
      local.get 3
      local.get 0
      i32.load
      local.get 2
      i32.sub
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 3
      call $_RINvNvMs2_NtCsjAdaHq5oevx_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalEBa_
    end
    local.get 0
    i32.load offset=4
    local.get 2
    i32.add
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 128
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        local.set 5
        local.get 1
        i32.const 6
        i32.shr_u
        local.set 6
        block  ;; label = @3
          local.get 1
          i32.const 2048
          i32.ge_u
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          i32.store8 offset=1
          local.get 4
          local.get 6
          i32.const 192
          i32.or
          i32.store8
          br 2 (;@1;)
        end
        local.get 1
        i32.const 12
        i32.shr_u
        local.set 7
        local.get 6
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        local.set 6
        block  ;; label = @3
          local.get 1
          i32.const 65535
          i32.gt_u
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          i32.store8 offset=2
          local.get 4
          local.get 6
          i32.store8 offset=1
          local.get 4
          local.get 7
          i32.const 224
          i32.or
          i32.store8
          br 2 (;@1;)
        end
        local.get 4
        local.get 5
        i32.store8 offset=3
        local.get 4
        local.get 6
        i32.store8 offset=2
        local.get 4
        local.get 7
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        i32.store8 offset=1
        local.get 4
        local.get 1
        i32.const 18
        i32.shr_u
        i32.const -16
        i32.or
        i32.store8
        br 1 (;@1;)
      end
      local.get 4
      local.get 1
      i32.store8
    end
    local.get 0
    local.get 3
    local.get 2
    i32.add
    i32.store offset=8
    i32.const 0)
  (func $_RNvYNtNtCsjAdaHq5oevx_5alloc6string6StringNtNtCsdmBIiMovVma_4core3fmt5Write9write_fmtB6_ (type 1) (param i32 i32 i32) (result i32)
    local.get 0
    i32.const 36628
    local.get 1
    local.get 2
    call $_RNvNtCsdmBIiMovVma_4core3fmt5write)
  (func $_RNvNvNtCsdmBIiMovVma_4core5slice20copy_from_slice_impl17len_mismatch_fail (type 6) (param i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 2
    i32.const 7
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.tee 3
    local.get 2
    i32.const 12
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=24
    local.get 2
    local.get 3
    local.get 2
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=16
    i32.const 35422
    local.get 2
    i32.const 16
    i32.add
    i32.const 36780
    call $_RNvNtCsdmBIiMovVma_4core9panicking9panic_fmt
    unreachable)
  (func $_RNvNtCsdmBIiMovVma_4core9panicking19assert_failed_inner (type 16) (param i32 i32 i32 i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    local.get 1
    i32.store offset=4
    local.get 5
    local.get 0
    i32.store
    local.get 5
    local.get 3
    i32.store offset=12
    local.get 5
    local.get 2
    i32.store offset=8
    local.get 5
    i32.const 2
    i32.store offset=20
    local.get 5
    i32.const 39303
    i32.store offset=16
    local.get 5
    i32.const 5
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.tee 6
    local.get 5
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=40
    local.get 5
    local.get 6
    local.get 5
    i64.extend_i32_u
    i64.or
    i64.store offset=32
    local.get 5
    i32.const 6
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 5
    i32.const 16
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=24
    i32.const 33220
    local.get 5
    i32.const 24
    i32.add
    local.get 4
    call $_RNvNtCsdmBIiMovVma_4core9panicking9panic_fmt
    unreachable)
  (func $_RNvXs1g_NtCsdmBIiMovVma_4core3fmtRDNtB6_5DebugEL_Bx_3fmtB8_ (type 0) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 0))
  (func $_RNvXs1i_NtCsdmBIiMovVma_4core3fmtReNtB6_7Display3fmtB8_ (type 0) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter3pad)
  (func $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter3pad (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=8
        local.tee 3
        i32.const 402653184
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  i32.const 268435456
                  i32.and
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 0
                  i32.load16_u offset=14
                  local.tee 4
                  br_if 1 (;@6;)
                  i32.const 0
                  local.set 2
                  br 2 (;@5;)
                end
                block  ;; label = @7
                  local.get 2
                  i32.const 16
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 2
                  local.get 1
                  local.get 1
                  i32.const 3
                  i32.add
                  i32.const -4
                  i32.and
                  local.tee 5
                  i32.sub
                  local.tee 6
                  i32.add
                  local.tee 7
                  i32.const 3
                  i32.and
                  local.set 8
                  i32.const 0
                  local.set 9
                  i32.const 0
                  local.set 4
                  block  ;; label = @8
                    local.get 1
                    local.get 5
                    i32.eq
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 4
                    local.get 1
                    local.set 10
                    loop  ;; label = @9
                      local.get 4
                      local.get 10
                      i32.load8_s
                      i32.const -65
                      i32.gt_s
                      i32.add
                      local.set 4
                      local.get 10
                      i32.const 1
                      i32.add
                      local.set 10
                      local.get 6
                      i32.const 1
                      i32.add
                      local.tee 6
                      br_if 0 (;@9;)
                    end
                  end
                  block  ;; label = @8
                    local.get 8
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 5
                    local.get 7
                    i32.const 2147483644
                    i32.and
                    i32.add
                    local.set 10
                    i32.const 0
                    local.set 9
                    loop  ;; label = @9
                      local.get 9
                      local.get 10
                      i32.load8_s
                      i32.const -65
                      i32.gt_s
                      i32.add
                      local.set 9
                      local.get 10
                      i32.const 1
                      i32.add
                      local.set 10
                      local.get 8
                      i32.const -1
                      i32.add
                      local.tee 8
                      br_if 0 (;@9;)
                    end
                  end
                  local.get 7
                  i32.const 2
                  i32.shr_u
                  local.set 6
                  local.get 9
                  local.get 4
                  i32.add
                  local.set 4
                  loop  ;; label = @8
                    local.get 5
                    local.set 7
                    local.get 6
                    i32.eqz
                    br_if 5 (;@3;)
                    local.get 6
                    i32.const 192
                    local.get 6
                    i32.const 192
                    i32.lt_u
                    select
                    local.tee 11
                    i32.const 3
                    i32.and
                    local.set 12
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 11
                        i32.const 2
                        i32.shl
                        local.tee 13
                        i32.const 1008
                        i32.and
                        local.tee 10
                        br_if 0 (;@10;)
                        i32.const 0
                        local.set 9
                        br 1 (;@9;)
                      end
                      local.get 7
                      local.get 10
                      i32.add
                      local.set 5
                      i32.const 0
                      local.set 9
                      local.get 7
                      local.set 10
                      loop  ;; label = @10
                        local.get 10
                        i32.const 12
                        i32.add
                        i32.load
                        local.tee 8
                        i32.const -1
                        i32.xor
                        i32.const 7
                        i32.shr_u
                        local.get 8
                        i32.const 6
                        i32.shr_u
                        i32.or
                        i32.const 16843009
                        i32.and
                        local.get 10
                        i32.const 8
                        i32.add
                        i32.load
                        local.tee 8
                        i32.const -1
                        i32.xor
                        i32.const 7
                        i32.shr_u
                        local.get 8
                        i32.const 6
                        i32.shr_u
                        i32.or
                        i32.const 16843009
                        i32.and
                        local.get 10
                        i32.const 4
                        i32.add
                        i32.load
                        local.tee 8
                        i32.const -1
                        i32.xor
                        i32.const 7
                        i32.shr_u
                        local.get 8
                        i32.const 6
                        i32.shr_u
                        i32.or
                        i32.const 16843009
                        i32.and
                        local.get 10
                        i32.load
                        local.tee 8
                        i32.const -1
                        i32.xor
                        i32.const 7
                        i32.shr_u
                        local.get 8
                        i32.const 6
                        i32.shr_u
                        i32.or
                        i32.const 16843009
                        i32.and
                        local.get 9
                        i32.add
                        i32.add
                        i32.add
                        i32.add
                        local.set 9
                        local.get 10
                        i32.const 16
                        i32.add
                        local.tee 10
                        local.get 5
                        i32.ne
                        br_if 0 (;@10;)
                      end
                    end
                    local.get 6
                    local.get 11
                    i32.sub
                    local.set 6
                    local.get 7
                    local.get 13
                    i32.add
                    local.set 5
                    local.get 9
                    i32.const 8
                    i32.shr_u
                    i32.const 16711935
                    i32.and
                    local.get 9
                    i32.const 16711935
                    i32.and
                    i32.add
                    i32.const 65537
                    i32.mul
                    i32.const 16
                    i32.shr_u
                    local.get 4
                    i32.add
                    local.set 4
                    local.get 12
                    i32.eqz
                    br_if 0 (;@8;)
                  end
                  local.get 12
                  i32.const 2
                  i32.shl
                  local.set 8
                  local.get 7
                  local.get 11
                  i32.const 252
                  i32.and
                  i32.const 2
                  i32.shl
                  i32.add
                  local.set 10
                  i32.const 0
                  local.set 9
                  loop  ;; label = @8
                    local.get 10
                    i32.load
                    local.tee 5
                    i32.const -1
                    i32.xor
                    i32.const 7
                    i32.shr_u
                    local.get 5
                    i32.const 6
                    i32.shr_u
                    i32.or
                    i32.const 16843009
                    i32.and
                    local.get 9
                    i32.add
                    local.set 9
                    local.get 10
                    i32.const 4
                    i32.add
                    local.set 10
                    local.get 8
                    i32.const -4
                    i32.add
                    local.tee 8
                    br_if 0 (;@8;)
                  end
                  local.get 9
                  i32.const 8
                  i32.shr_u
                  i32.const 16711935
                  i32.and
                  local.get 9
                  i32.const 16711935
                  i32.and
                  i32.add
                  i32.const 65537
                  i32.mul
                  i32.const 16
                  i32.shr_u
                  local.get 4
                  i32.add
                  local.set 4
                  br 4 (;@3;)
                end
                i32.const 0
                local.set 4
                local.get 2
                i32.eqz
                br_if 3 (;@3;)
                local.get 1
                local.set 10
                local.get 2
                local.set 9
                loop  ;; label = @7
                  local.get 4
                  local.get 10
                  i32.load8_s
                  i32.const -65
                  i32.gt_s
                  i32.add
                  local.set 4
                  local.get 10
                  i32.const 1
                  i32.add
                  local.set 10
                  local.get 9
                  i32.const -1
                  i32.add
                  local.tee 9
                  br_if 0 (;@7;)
                  br 4 (;@3;)
                end
              end
              local.get 1
              local.get 2
              i32.add
              local.set 5
              i32.const 0
              local.set 2
              local.get 1
              local.set 9
              local.get 4
              local.set 8
              loop  ;; label = @6
                local.get 9
                local.tee 10
                local.get 5
                i32.eq
                br_if 2 (;@4;)
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 10
                    i32.load8_s
                    local.tee 9
                    i32.const -1
                    i32.le_s
                    br_if 0 (;@8;)
                    local.get 10
                    i32.const 1
                    i32.add
                    local.set 9
                    br 1 (;@7;)
                  end
                  block  ;; label = @8
                    local.get 9
                    i32.const -32
                    i32.ge_u
                    br_if 0 (;@8;)
                    local.get 10
                    i32.const 2
                    i32.add
                    local.set 9
                    br 1 (;@7;)
                  end
                  local.get 10
                  i32.const 4
                  i32.const 3
                  local.get 9
                  i32.const -17
                  i32.gt_u
                  select
                  i32.add
                  local.set 9
                end
                local.get 9
                local.get 10
                i32.sub
                local.get 2
                i32.add
                local.set 2
                local.get 8
                i32.const -1
                i32.add
                local.tee 8
                br_if 0 (;@6;)
              end
            end
            i32.const 0
            local.set 8
          end
          local.get 4
          local.get 8
          i32.sub
          local.set 4
        end
        local.get 4
        local.get 0
        i32.load16_u offset=12
        local.tee 10
        i32.ge_u
        br_if 0 (;@2;)
        local.get 10
        local.get 4
        i32.sub
        local.set 7
        i32.const 0
        local.set 10
        i32.const 0
        local.set 6
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.const 29
              i32.shr_u
              i32.const 3
              i32.and
              br_table 2 (;@3;) 0 (;@5;) 1 (;@4;) 2 (;@3;) 2 (;@3;)
            end
            local.get 7
            local.set 6
            br 1 (;@3;)
          end
          local.get 7
          i32.const 65534
          i32.and
          i32.const 1
          i32.shr_u
          local.set 6
        end
        local.get 3
        i32.const 2097151
        i32.and
        local.set 4
        local.get 0
        i32.load offset=4
        local.set 8
        local.get 0
        i32.load
        local.set 5
        block  ;; label = @3
          loop  ;; label = @4
            local.get 10
            i32.const 65535
            i32.and
            local.get 6
            i32.const 65535
            i32.and
            i32.ge_u
            br_if 1 (;@3;)
            i32.const 1
            local.set 9
            local.get 10
            i32.const 1
            i32.add
            local.set 10
            local.get 5
            local.get 4
            local.get 8
            i32.load offset=16
            call_indirect (type 0)
            br_if 3 (;@1;)
            br 0 (;@4;)
          end
        end
        i32.const 1
        local.set 9
        local.get 5
        local.get 1
        local.get 2
        local.get 8
        i32.load offset=12
        call_indirect (type 1)
        br_if 1 (;@1;)
        local.get 7
        local.get 6
        i32.sub
        i32.const 65535
        i32.and
        local.set 6
        i32.const 0
        local.set 10
        loop  ;; label = @3
          block  ;; label = @4
            local.get 10
            i32.const 65535
            i32.and
            local.get 6
            i32.lt_u
            br_if 0 (;@4;)
            i32.const 0
            return
          end
          i32.const 1
          local.set 9
          local.get 10
          i32.const 1
          i32.add
          local.set 10
          local.get 5
          local.get 4
          local.get 8
          i32.load offset=16
          call_indirect (type 0)
          br_if 2 (;@1;)
          br 0 (;@3;)
        end
      end
      local.get 0
      i32.load
      local.get 1
      local.get 2
      local.get 0
      i32.load offset=4
      i32.load offset=12
      call_indirect (type 1)
      local.set 9
    end
    local.get 9)
  (func $_RNvCs1njKG4L9aB3_7___rustc17rust_begin_unwind (type 8) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const 0
    i32.const 0
    i32.load8_u offset=112216
    local.tee 2
    i32.const 1
    local.get 2
    select
    i32.store8 offset=112216
    block  ;; label = @1
      local.get 2
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      i64.load offset=41192 align=1
      i64.store offset=112217 align=1
      i32.const 0
      i32.const 0
      i64.load offset=41197 align=1
      i64.store offset=112222 align=1
      local.get 1
      i32.const 112217
      i32.store offset=8
      local.get 1
      i64.const 55834575040
      i64.store offset=12 align=4
      local.get 1
      local.get 0
      i32.load
      i32.store offset=24
      local.get 1
      i32.const 10
      i32.store offset=40
      local.get 1
      local.get 1
      i32.const 24
      i32.add
      i32.store offset=36
      local.get 1
      i32.const 8
      i32.add
      i32.const 33279
      local.get 1
      i32.const 36
      i32.add
      call $_RNvYNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions6RawBufNtNtCsdmBIiMovVma_4core3fmt5Write9write_fmtB6_
      drop
      local.get 1
      i32.const 36
      i32.add
      local.get 1
      i32.load offset=8
      local.get 1
      i32.load offset=16
      call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions7logging10log_buffer
      i32.const 0
      i32.const 0
      i64.load offset=41205 align=1
      i64.store offset=112217 align=1
      i32.const 0
      i32.const 0
      i64.load offset=41211 align=1
      i64.store offset=112223 align=1
      local.get 1
      local.get 0
      i32.load offset=4
      i32.store offset=20
      local.get 1
      i32.const 112217
      i32.store offset=24
      local.get 1
      i64.const 60129542336
      i64.store offset=28 align=4
      local.get 1
      i32.const 11
      i32.store offset=40
      local.get 1
      local.get 1
      i32.const 20
      i32.add
      i32.store offset=36
      local.get 1
      i32.const 24
      i32.add
      i32.const 33279
      local.get 1
      i32.const 36
      i32.add
      call $_RNvYNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions6RawBufNtNtCsdmBIiMovVma_4core3fmt5Write9write_fmtB6_
      drop
      local.get 1
      i32.const 36
      i32.add
      local.get 1
      i32.load offset=24
      local.get 1
      i32.load offset=32
      call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions7logging10log_buffer
      i32.const 0
      i32.const 0
      i32.store8 offset=112216
      unreachable
    end
    local.get 1
    i32.const 36
    i32.add
    i32.const 41219
    i32.const 19
    i32.const 4
    call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions7logging3log
    unreachable)
  (func $_RNvXs0_NtNtCsdmBIiMovVma_4core3fmt8buildersNtB5_10PadAdapterNtB7_5Write9write_str (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=4
    local.set 3
    local.get 0
    i32.load
    local.set 4
    local.get 0
    i32.load offset=8
    local.set 5
    i32.const 0
    local.set 6
    i32.const 0
    local.set 7
    i32.const 0
    local.set 8
    i32.const 0
    local.set 9
    block  ;; label = @1
      loop  ;; label = @2
        local.get 9
        i32.const 1
        i32.and
        br_if 1 (;@1;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            local.get 8
            i32.lt_u
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 1
              local.get 8
              i32.add
              local.set 9
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 2
                          local.get 8
                          i32.sub
                          local.tee 10
                          i32.const 7
                          i32.gt_u
                          br_if 0 (;@11;)
                          local.get 2
                          local.get 8
                          i32.ne
                          br_if 1 (;@10;)
                          local.get 2
                          local.set 8
                          br 7 (;@4;)
                        end
                        local.get 9
                        i32.const 3
                        i32.add
                        i32.const -4
                        i32.and
                        local.tee 0
                        local.get 9
                        i32.eq
                        br_if 1 (;@9;)
                        local.get 0
                        local.get 9
                        i32.sub
                        local.set 11
                        i32.const 0
                        local.set 0
                        loop  ;; label = @11
                          local.get 9
                          local.get 0
                          i32.add
                          i32.load8_u
                          i32.const 10
                          i32.eq
                          br_if 5 (;@6;)
                          local.get 11
                          local.get 0
                          i32.const 1
                          i32.add
                          local.tee 0
                          i32.ne
                          br_if 0 (;@11;)
                        end
                        local.get 11
                        local.get 10
                        i32.const -8
                        i32.add
                        local.tee 12
                        i32.gt_u
                        br_if 3 (;@7;)
                        br 2 (;@8;)
                      end
                      i32.const 0
                      local.set 0
                      loop  ;; label = @10
                        local.get 9
                        local.get 0
                        i32.add
                        i32.load8_u
                        i32.const 10
                        i32.eq
                        br_if 4 (;@6;)
                        local.get 10
                        local.get 0
                        i32.const 1
                        i32.add
                        local.tee 0
                        i32.ne
                        br_if 0 (;@10;)
                      end
                      local.get 2
                      local.set 8
                      br 5 (;@4;)
                    end
                    local.get 10
                    i32.const -8
                    i32.add
                    local.set 12
                    i32.const 0
                    local.set 11
                  end
                  loop  ;; label = @8
                    i32.const 16843008
                    local.get 9
                    local.get 11
                    i32.add
                    local.tee 0
                    i32.load
                    local.tee 13
                    i32.const 168430090
                    i32.xor
                    i32.sub
                    local.get 13
                    i32.or
                    i32.const 16843008
                    local.get 0
                    i32.const 4
                    i32.add
                    i32.load
                    local.tee 0
                    i32.const 168430090
                    i32.xor
                    i32.sub
                    local.get 0
                    i32.or
                    i32.and
                    i32.const -2139062144
                    i32.and
                    i32.const -2139062144
                    i32.ne
                    br_if 1 (;@7;)
                    local.get 11
                    i32.const 8
                    i32.add
                    local.tee 11
                    local.get 12
                    i32.le_u
                    br_if 0 (;@8;)
                  end
                end
                block  ;; label = @7
                  local.get 10
                  local.get 11
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 2
                  local.set 8
                  br 3 (;@4;)
                end
                local.get 9
                local.get 11
                i32.add
                local.set 13
                local.get 2
                local.get 11
                i32.sub
                local.get 8
                i32.sub
                local.set 10
                i32.const 0
                local.set 0
                block  ;; label = @7
                  loop  ;; label = @8
                    local.get 13
                    local.get 0
                    i32.add
                    i32.load8_u
                    i32.const 10
                    i32.eq
                    br_if 1 (;@7;)
                    local.get 10
                    local.get 0
                    i32.const 1
                    i32.add
                    local.tee 0
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  local.get 2
                  local.set 8
                  br 3 (;@4;)
                end
                local.get 0
                local.get 11
                i32.add
                local.set 0
              end
              local.get 8
              local.get 0
              i32.add
              local.tee 11
              i32.const 1
              i32.add
              local.set 8
              block  ;; label = @6
                local.get 11
                local.get 2
                i32.ge_u
                br_if 0 (;@6;)
                local.get 9
                local.get 0
                i32.add
                i32.load8_u
                i32.const 10
                i32.ne
                br_if 0 (;@6;)
                i32.const 0
                local.set 9
                local.get 8
                local.set 13
                local.get 8
                local.set 0
                br 3 (;@3;)
              end
              local.get 2
              local.get 8
              i32.ge_u
              br_if 0 (;@5;)
            end
          end
          local.get 2
          local.get 7
          i32.eq
          br_if 2 (;@1;)
          i32.const 1
          local.set 9
          local.get 7
          local.set 13
          local.get 2
          local.set 0
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 5
            i32.load8_u
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            i32.const 40206
            i32.const 4
            local.get 3
            i32.load offset=12
            call_indirect (type 1)
            br_if 1 (;@3;)
          end
          local.get 0
          local.get 7
          i32.sub
          local.set 10
          i32.const 0
          local.set 11
          block  ;; label = @4
            local.get 0
            local.get 7
            i32.eq
            br_if 0 (;@4;)
            local.get 1
            local.get 0
            i32.add
            i32.const -1
            i32.add
            i32.load8_u
            i32.const 10
            i32.eq
            local.set 11
          end
          local.get 1
          local.get 7
          i32.add
          local.set 0
          local.get 5
          local.get 11
          i32.store8
          local.get 13
          local.set 7
          local.get 4
          local.get 0
          local.get 10
          local.get 3
          i32.load offset=12
          call_indirect (type 1)
          i32.eqz
          br_if 1 (;@2;)
        end
      end
      i32.const 1
      local.set 6
    end
    local.get 6)
  (func $_RNvXs0_NtNtCsdmBIiMovVma_4core3fmt8buildersNtB5_10PadAdapterNtB7_5Write10write_char (type 0) (param i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.load offset=4
    local.set 2
    local.get 0
    i32.load
    local.set 3
    block  ;; label = @1
      local.get 0
      i32.load offset=8
      local.tee 0
      i32.load8_u
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const 40206
      i32.const 4
      local.get 2
      i32.load offset=12
      call_indirect (type 1)
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1
      return
    end
    local.get 0
    local.get 1
    i32.const 10
    i32.eq
    i32.store8
    local.get 3
    local.get 1
    local.get 2
    i32.load offset=16
    call_indirect (type 0))
  (func $_RNvYNtNtNtCsdmBIiMovVma_4core3fmt8builders10PadAdapterNtB6_5Write9write_fmtB8_ (type 1) (param i32 i32 i32) (result i32)
    local.get 0
    i32.const 39140
    local.get 1
    local.get 2
    call $_RNvNtCsdmBIiMovVma_4core3fmt5write)
  (func $_RNvNvMsa_NtCsdmBIiMovVma_4core3fmtNtB7_9Formatter12pad_integral12write_prefix (type 12) (param i32 i32 i32 i32 i32) (result i32)
    block  ;; label = @1
      local.get 2
      i32.const -1
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 1
      i32.load offset=16
      call_indirect (type 0)
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1
      return
    end
    block  ;; label = @1
      local.get 3
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    local.get 0
    local.get 3
    local.get 4
    local.get 1
    i32.load offset=12
    call_indirect (type 1))
  (func $_RNvMNtNtCsdmBIiMovVma_4core4char7methodsc16escape_debug_ext (type 5) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 1
                                      br_table 6 (;@11;) 1 (;@16;) 1 (;@16;) 1 (;@16;) 1 (;@16;) 1 (;@16;) 1 (;@16;) 1 (;@16;) 1 (;@16;) 4 (;@13;) 3 (;@14;) 1 (;@16;) 1 (;@16;) 5 (;@12;) 1 (;@16;) 1 (;@16;) 1 (;@16;) 1 (;@16;) 1 (;@16;) 1 (;@16;) 1 (;@16;) 1 (;@16;) 1 (;@16;) 1 (;@16;) 1 (;@16;) 1 (;@16;) 1 (;@16;) 1 (;@16;) 1 (;@16;) 1 (;@16;) 1 (;@16;) 1 (;@16;) 1 (;@16;) 1 (;@16;) 8 (;@9;) 1 (;@16;) 1 (;@16;) 1 (;@16;) 1 (;@16;) 7 (;@10;) 0 (;@17;)
                                    end
                                    local.get 1
                                    i32.const 92
                                    i32.eq
                                    br_if 1 (;@15;)
                                  end
                                  local.get 1
                                  i32.const -32
                                  i32.add
                                  i32.const 95
                                  i32.lt_u
                                  br_if 12 (;@3;)
                                  local.get 1
                                  i32.const 32
                                  i32.lt_u
                                  br_if 13 (;@2;)
                                  local.get 1
                                  i32.const -127
                                  i32.add
                                  i32.const 33
                                  i32.lt_u
                                  br_if 13 (;@2;)
                                  local.get 1
                                  i32.const -57344
                                  i32.add
                                  i32.const 6400
                                  i32.lt_u
                                  br_if 13 (;@2;)
                                  local.get 1
                                  i32.const -983040
                                  i32.add
                                  i32.const 65534
                                  i32.lt_u
                                  br_if 13 (;@2;)
                                  local.get 1
                                  i32.const 32
                                  i32.eq
                                  br_if 13 (;@2;)
                                  local.get 1
                                  i32.const -1048576
                                  i32.add
                                  i32.const 65534
                                  i32.lt_u
                                  br_if 13 (;@2;)
                                  local.get 1
                                  i32.const 133
                                  i32.lt_u
                                  br_if 11 (;@4;)
                                  local.get 1
                                  call $_RNvNtNtNtCsdmBIiMovVma_4core7unicode12unicode_data11white_space6lookup
                                  br_if 13 (;@2;)
                                  block  ;; label = @16
                                    local.get 1
                                    i32.const 768
                                    i32.lt_u
                                    br_if 0 (;@16;)
                                    local.get 2
                                    i32.const 1
                                    i32.and
                                    br_if 8 (;@8;)
                                  end
                                  local.get 1
                                  i32.const 172
                                  i32.gt_u
                                  br_if 8 (;@7;)
                                  br 11 (;@4;)
                                end
                                local.get 0
                                i64.const 0
                                i64.store offset=2 align=2
                                local.get 0
                                i32.const 23644
                                i32.store16
                                br 9 (;@5;)
                              end
                              local.get 0
                              i64.const 0
                              i64.store offset=2 align=2
                              local.get 0
                              i32.const 28252
                              i32.store16
                              br 8 (;@5;)
                            end
                            local.get 0
                            i64.const 0
                            i64.store offset=2 align=2
                            local.get 0
                            i32.const 29788
                            i32.store16
                            br 7 (;@5;)
                          end
                          local.get 0
                          i64.const 0
                          i64.store offset=2 align=2
                          local.get 0
                          i32.const 29276
                          i32.store16
                          br 6 (;@5;)
                        end
                        local.get 0
                        i64.const 0
                        i64.store offset=2 align=2
                        local.get 0
                        i32.const 12380
                        i32.store16
                        br 5 (;@5;)
                      end
                      local.get 2
                      i32.const 256
                      i32.and
                      i32.eqz
                      br_if 6 (;@3;)
                      local.get 0
                      i64.const 0
                      i64.store offset=2 align=2
                      local.get 0
                      i32.const 10076
                      i32.store16
                      br 4 (;@5;)
                    end
                    local.get 2
                    i32.const 16777215
                    i32.and
                    i32.const 65536
                    i32.ge_u
                    br_if 2 (;@6;)
                    br 5 (;@3;)
                  end
                  local.get 1
                  call $_RNvNtNtNtCsdmBIiMovVma_4core7unicode12unicode_data15grapheme_extend11lookup_slow
                  br_if 5 (;@2;)
                end
                local.get 1
                call $_RNvNtNtNtCsdmBIiMovVma_4core7unicode12unicode_data28default_ignorable_code_point11lookup_slow
                br_if 4 (;@2;)
                local.get 1
                call $_RNvNtNtNtCsdmBIiMovVma_4core7unicode12unicode_data2cf11lookup_slow
                i32.eqz
                br_if 2 (;@4;)
                br 4 (;@2;)
              end
              local.get 0
              i64.const 0
              i64.store offset=2 align=2
              local.get 0
              i32.const 8796
              i32.store16
            end
            i32.const 2
            local.set 1
            i32.const 0
            local.set 2
            br 3 (;@1;)
          end
          local.get 1
          call $_RNvMNtNtCsdmBIiMovVma_4core4char7methodsc11is_assigned
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 0
        local.get 1
        i32.store
        i32.const 129
        local.set 1
        i32.const 128
        local.set 2
        br 1 (;@1;)
      end
      local.get 3
      i32.const 0
      i32.store8 offset=8
      local.get 3
      i32.const 0
      i32.store16 offset=6
      local.get 3
      local.get 1
      i32.const 20
      i32.shr_u
      i32.load8_u offset=39102
      i32.store8 offset=9
      local.get 3
      local.get 1
      i32.const 4
      i32.shr_u
      i32.const 15
      i32.and
      i32.load8_u offset=39102
      i32.store8 offset=13
      local.get 3
      local.get 1
      i32.const 8
      i32.shr_u
      i32.const 15
      i32.and
      i32.load8_u offset=39102
      i32.store8 offset=12
      local.get 3
      local.get 1
      i32.const 12
      i32.shr_u
      i32.const 15
      i32.and
      i32.load8_u offset=39102
      i32.store8 offset=11
      local.get 3
      local.get 1
      i32.const 16
      i32.shr_u
      i32.const 15
      i32.and
      i32.load8_u offset=39102
      i32.store8 offset=10
      local.get 3
      i32.const 6
      i32.add
      local.get 1
      i32.const 1
      i32.or
      i32.clz
      i32.const 2
      i32.shr_u
      local.tee 2
      i32.add
      local.tee 4
      i32.const 123
      i32.store8
      local.get 4
      i32.const -1
      i32.add
      i32.const 117
      i32.store8
      local.get 3
      i32.const 6
      i32.add
      local.get 2
      i32.const -2
      i32.add
      local.tee 2
      i32.add
      i32.const 92
      i32.store8
      local.get 0
      local.get 3
      i64.load offset=6 align=2
      i64.store align=1
      local.get 3
      i32.const 125
      i32.store8 offset=15
      local.get 3
      local.get 1
      i32.const 15
      i32.and
      i32.load8_u offset=39102
      i32.store8 offset=14
      local.get 0
      local.get 3
      i32.load16_u offset=14
      i32.store16 offset=8 align=1
      i32.const 10
      local.set 1
    end
    local.get 0
    local.get 1
    i32.store8 offset=13
    local.get 0
    local.get 2
    i32.store8 offset=12
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_RNvNtNtNtCsdmBIiMovVma_4core7unicode12unicode_data11white_space6lookup (type 2) (param i32) (result i32)
    (local i32 i32)
    i32.const 0
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const 8
              i32.shr_u
              local.tee 2
              i32.const -22
              i32.add
              br_table 0 (;@5;) 3 (;@2;) 3 (;@2;) 3 (;@2;) 3 (;@2;) 3 (;@2;) 3 (;@2;) 3 (;@2;) 3 (;@2;) 3 (;@2;) 4 (;@1;) 3 (;@2;) 3 (;@2;) 3 (;@2;) 3 (;@2;) 3 (;@2;) 3 (;@2;) 3 (;@2;) 3 (;@2;) 3 (;@2;) 3 (;@2;) 3 (;@2;) 3 (;@2;) 3 (;@2;) 3 (;@2;) 3 (;@2;) 1 (;@4;) 2 (;@3;)
            end
            local.get 0
            i32.const 5760
            i32.eq
            return
          end
          local.get 0
          i32.const 12288
          i32.eq
          return
        end
        local.get 2
        br_if 0 (;@2;)
        local.get 0
        i32.const 255
        i32.and
        local.tee 0
        i32.const 133
        i32.eq
        local.get 0
        i32.const 160
        i32.eq
        i32.or
        local.set 1
      end
      local.get 1
      return
    end
    local.get 0
    i32.const 255
    i32.and
    i32.load8_u offset=40800
    i32.const 2
    i32.and
    i32.const 1
    i32.shr_u)
  (func $_RNvNtNtNtCsdmBIiMovVma_4core7unicode12unicode_data15grapheme_extend11lookup_slow (type 2) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    i32.const 0
    local.set 1
    i32.const 0
    i32.const 16
    local.get 0
    i32.const 69291
    i32.lt_u
    select
    local.tee 2
    local.get 2
    i32.const 8
    i32.or
    local.tee 2
    local.get 2
    i32.const 2
    i32.shl
    i32.load offset=39980
    i32.const 11
    i32.shl
    local.get 0
    i32.const 11
    i32.shl
    local.tee 2
    i32.gt_u
    select
    local.tee 3
    local.get 3
    i32.const 4
    i32.or
    local.tee 3
    local.get 3
    i32.const 2
    i32.shl
    i32.load offset=39980
    i32.const 11
    i32.shl
    local.get 2
    i32.gt_u
    select
    local.tee 3
    local.get 3
    i32.const 2
    i32.or
    local.tee 3
    local.get 3
    i32.const 2
    i32.shl
    i32.load offset=39980
    i32.const 11
    i32.shl
    local.get 2
    i32.gt_u
    select
    local.tee 3
    local.get 3
    i32.const 1
    i32.add
    local.tee 3
    local.get 3
    i32.const 2
    i32.shl
    i32.load offset=39980
    i32.const 11
    i32.shl
    local.get 2
    i32.gt_u
    select
    local.tee 3
    local.get 3
    i32.const 1
    i32.add
    local.tee 3
    local.get 3
    i32.const 2
    i32.shl
    i32.load offset=39980
    i32.const 11
    i32.shl
    local.get 2
    i32.gt_u
    select
    local.tee 3
    i32.const 2
    i32.shl
    i32.load offset=39980
    i32.const 11
    i32.shl
    local.tee 4
    local.get 2
    i32.eq
    local.get 4
    local.get 2
    i32.lt_u
    i32.add
    local.get 3
    i32.add
    local.tee 3
    i32.const 2
    i32.shl
    local.tee 2
    i32.const 39980
    i32.add
    local.set 5
    local.get 2
    i32.load offset=39980
    i32.const 21
    i32.shr_u
    local.set 2
    i32.const 767
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 31
        i32.gt_u
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=4
        i32.const 21
        i32.shr_u
        local.set 4
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 5
      i32.const -4
      i32.add
      i32.load
      i32.const 2097151
      i32.and
      local.set 1
    end
    block  ;; label = @1
      local.get 4
      local.get 2
      i32.const -1
      i32.xor
      i32.add
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.sub
      local.set 3
      local.get 4
      i32.const -1
      i32.add
      local.set 4
      i32.const 0
      local.set 0
      loop  ;; label = @2
        local.get 0
        local.get 2
        i32.const 38257
        i32.add
        i32.load8_u
        i32.add
        local.tee 0
        local.get 3
        i32.gt_u
        br_if 1 (;@1;)
        local.get 4
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 2
    i32.const 1
    i32.and)
  (func $_RNvNtNtNtCsdmBIiMovVma_4core7unicode12unicode_data28default_ignorable_code_point11lookup_slow (type 2) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    i32.const 0
    local.set 1
    i32.const 0
    i32.const 6
    local.get 0
    i32.const 65024
    i32.lt_u
    select
    local.tee 2
    local.get 2
    i32.const 3
    i32.add
    local.tee 2
    local.get 2
    i32.const 2
    i32.shl
    i32.load offset=40112
    i32.const 11
    i32.shl
    local.get 0
    i32.const 11
    i32.shl
    local.tee 2
    i32.gt_u
    select
    local.tee 3
    local.get 3
    i32.const 1
    i32.add
    local.tee 3
    local.get 3
    i32.const 2
    i32.shl
    i32.load offset=40112
    i32.const 11
    i32.shl
    local.get 2
    i32.gt_u
    select
    local.tee 3
    local.get 3
    i32.const 1
    i32.add
    local.tee 3
    local.get 3
    i32.const 2
    i32.shl
    i32.load offset=40112
    i32.const 11
    i32.shl
    local.get 2
    i32.gt_u
    select
    local.tee 3
    i32.const 2
    i32.shl
    i32.load offset=40112
    i32.const 11
    i32.shl
    local.tee 4
    local.get 2
    i32.eq
    local.get 4
    local.get 2
    i32.lt_u
    i32.add
    local.get 3
    i32.add
    local.tee 3
    i32.const 2
    i32.shl
    local.tee 2
    i32.const 40112
    i32.add
    local.set 5
    local.get 2
    i32.load offset=40112
    i32.const 21
    i32.shr_u
    local.set 2
    i32.const 35
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 10
        i32.gt_u
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=4
        i32.const 21
        i32.shr_u
        local.set 4
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 5
      i32.const -4
      i32.add
      i32.load
      i32.const 2097151
      i32.and
      local.set 1
    end
    block  ;; label = @1
      local.get 4
      local.get 2
      i32.const -1
      i32.xor
      i32.add
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.sub
      local.set 3
      local.get 4
      i32.const -1
      i32.add
      local.set 4
      i32.const 0
      local.set 0
      loop  ;; label = @2
        local.get 0
        local.get 2
        i32.const 39024
        i32.add
        i32.load8_u
        i32.add
        local.tee 0
        local.get 3
        i32.gt_u
        br_if 1 (;@1;)
        local.get 4
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 2
    i32.const 1
    i32.and)
  (func $_RNvNtNtNtCsdmBIiMovVma_4core7unicode12unicode_data2cf11lookup_slow (type 2) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    i32.const 0
    local.set 1
    i32.const 0
    i32.const 5
    local.get 0
    i32.const 69821
    i32.lt_u
    select
    local.tee 2
    local.get 2
    i32.const 3
    i32.add
    local.tee 2
    local.get 2
    i32.const 2
    i32.shl
    i32.load offset=40160
    i32.const 11
    i32.shl
    local.get 0
    i32.const 11
    i32.shl
    local.tee 2
    i32.gt_u
    select
    local.tee 3
    local.get 3
    i32.const 1
    i32.add
    local.tee 3
    local.get 3
    i32.const 2
    i32.shl
    i32.load offset=40160
    i32.const 11
    i32.shl
    local.get 2
    i32.gt_u
    select
    local.tee 3
    local.get 3
    i32.const 1
    i32.add
    local.tee 3
    local.get 3
    i32.const 2
    i32.shl
    i32.load offset=40160
    i32.const 11
    i32.shl
    local.get 2
    i32.gt_u
    select
    local.tee 3
    i32.const 2
    i32.shl
    i32.load offset=40160
    i32.const 11
    i32.shl
    local.tee 4
    local.get 2
    i32.eq
    local.get 4
    local.get 2
    i32.lt_u
    i32.add
    local.get 3
    i32.add
    local.tee 3
    i32.const 2
    i32.shl
    local.tee 2
    i32.const 40160
    i32.add
    local.set 5
    local.get 2
    i32.load offset=40160
    i32.const 21
    i32.shr_u
    local.set 2
    i32.const 43
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 9
        i32.gt_u
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=4
        i32.const 21
        i32.shr_u
        local.set 4
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 5
      i32.const -4
      i32.add
      i32.load
      i32.const 2097151
      i32.and
      local.set 1
    end
    block  ;; label = @1
      local.get 4
      local.get 2
      i32.const -1
      i32.xor
      i32.add
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.sub
      local.set 3
      local.get 4
      i32.const -1
      i32.add
      local.set 4
      i32.const 0
      local.set 0
      loop  ;; label = @2
        local.get 0
        local.get 2
        i32.const 39059
        i32.add
        i32.load8_u
        i32.add
        local.tee 0
        local.get 3
        i32.gt_u
        br_if 1 (;@1;)
        local.get 4
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 2
    i32.const 1
    i32.and)
  (func $_RNvMNtNtCsdmBIiMovVma_4core4char7methodsc11is_assigned (type 2) (param i32) (result i32)
    (local i32)
    i32.const 1
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 888
        i32.lt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 262142
        i32.lt_u
        br_if 1 (;@1;)
        local.get 0
        i32.const 917505
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.const -917536
        i32.add
        i32.const 96
        i32.lt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const -917760
        i32.add
        i32.const 240
        i32.lt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const -983040
        i32.add
        i32.const 65534
        i32.lt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const -1048576
        i32.add
        i32.const 65534
        i32.lt_u
        local.set 1
      end
      local.get 1
      return
    end
    local.get 0
    call $_RNvNtNtNtCsdmBIiMovVma_4core7unicode12unicode_data13cn_planes_0_311lookup_slow
    i32.const 1
    i32.xor)
  (func $_RNvNtNtNtCsdmBIiMovVma_4core7unicode12unicode_data13cn_planes_0_311lookup_slow (type 2) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    i32.const 0
    local.set 1
    i32.const 0
    i32.const 27
    local.get 0
    i32.const 111356
    i32.lt_u
    select
    local.tee 2
    local.get 2
    i32.const 13
    i32.add
    local.tee 2
    local.get 2
    i32.const 2
    i32.shl
    i32.load offset=39764
    i32.const 11
    i32.shl
    local.get 0
    i32.const 11
    i32.shl
    local.tee 2
    i32.gt_u
    select
    local.tee 3
    local.get 3
    i32.const 7
    i32.add
    local.tee 3
    local.get 3
    i32.const 2
    i32.shl
    i32.load offset=39764
    i32.const 11
    i32.shl
    local.get 2
    i32.gt_u
    select
    local.tee 3
    local.get 3
    i32.const 3
    i32.add
    local.tee 3
    local.get 3
    i32.const 2
    i32.shl
    i32.load offset=39764
    i32.const 11
    i32.shl
    local.get 2
    i32.gt_u
    select
    local.tee 3
    local.get 3
    i32.const 2
    i32.add
    local.tee 3
    local.get 3
    i32.const 2
    i32.shl
    i32.load offset=39764
    i32.const 11
    i32.shl
    local.get 2
    i32.gt_u
    select
    local.tee 3
    local.get 3
    i32.const 1
    i32.add
    local.tee 3
    local.get 3
    i32.const 2
    i32.shl
    i32.load offset=39764
    i32.const 11
    i32.shl
    local.get 2
    i32.gt_u
    select
    local.tee 3
    i32.const 2
    i32.shl
    i32.load offset=39764
    i32.const 11
    i32.shl
    local.tee 4
    local.get 2
    i32.eq
    local.get 4
    local.get 2
    i32.lt_u
    i32.add
    local.get 3
    i32.add
    local.tee 3
    i32.const 2
    i32.shl
    local.tee 2
    i32.const 39764
    i32.add
    local.set 5
    local.get 2
    i32.load offset=39764
    i32.const 21
    i32.shr_u
    local.set 2
    i32.const 1461
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 52
        i32.gt_u
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=4
        i32.const 21
        i32.shr_u
        local.set 4
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 5
      i32.const -4
      i32.add
      i32.load
      i32.const 2097151
      i32.and
      local.set 1
    end
    block  ;; label = @1
      local.get 4
      local.get 2
      i32.const -1
      i32.xor
      i32.add
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.sub
      local.set 3
      local.get 4
      i32.const -1
      i32.add
      local.set 4
      i32.const 0
      local.set 0
      loop  ;; label = @2
        local.get 0
        local.get 2
        i32.const 36796
        i32.add
        i32.load8_u
        i32.add
        local.tee 0
        local.get 3
        i32.gt_u
        br_if 1 (;@1;)
        local.get 4
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 2
    i32.const 1
    i32.and)
  (func $_RNvNtCsdmBIiMovVma_4core9panicking5panic (type 5) (param i32 i32 i32)
    local.get 0
    local.get 1
    i32.const 1
    i32.shl
    i32.const 1
    i32.or
    local.get 2
    call $_RNvNtCsdmBIiMovVma_4core9panicking9panic_fmt
    unreachable)
  (func $_RNvNtCsdmBIiMovVma_4core9panicking18panic_bounds_check (type 5) (param i32 i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=12
    local.get 3
    local.get 0
    i32.store offset=8
    local.get 3
    i32.const 7
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.tee 4
    local.get 3
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=24
    local.get 3
    local.get 4
    local.get 3
    i32.const 12
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=16
    i32.const 32862
    local.get 3
    i32.const 16
    i32.add
    local.get 2
    call $_RNvNtCsdmBIiMovVma_4core9panicking9panic_fmt
    unreachable)
  (func $_RNvNtCsdmBIiMovVma_4core3str16slice_error_fail (type 16) (param i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $_RNvNtCsdmBIiMovVma_4core3str19slice_error_fail_rt
    unreachable)
  (func $_RNvNtCsdmBIiMovVma_4core3str19slice_error_fail_rt (type 16) (param i32 i32 i32 i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    local.get 3
    i32.store offset=4
    local.get 5
    local.get 2
    i32.store
    local.get 5
    local.get 1
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 2
                    local.get 1
                    i32.gt_u
                    br_if 0 (;@8;)
                    local.get 3
                    local.get 1
                    i32.gt_u
                    br_if 1 (;@7;)
                    local.get 2
                    local.get 3
                    i32.gt_u
                    br_if 2 (;@6;)
                    local.get 2
                    i32.eqz
                    br_if 4 (;@4;)
                    local.get 2
                    local.get 1
                    i32.ge_u
                    br_if 4 (;@4;)
                    local.get 0
                    local.get 2
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    br_if 4 (;@4;)
                    block  ;; label = @9
                      local.get 0
                      local.get 2
                      i32.const -1
                      i32.add
                      local.tee 3
                      i32.add
                      i32.load8_s
                      i32.const -65
                      i32.gt_s
                      br_if 0 (;@9;)
                      local.get 2
                      i32.const -2
                      i32.add
                      local.tee 3
                      local.get 2
                      i32.const -3
                      i32.add
                      local.get 0
                      local.get 3
                      i32.add
                      i32.load8_s
                      i32.const -65
                      i32.gt_s
                      select
                      local.set 3
                    end
                    loop  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          local.get 2
                          i32.eq
                          br_if 0 (;@11;)
                          local.get 0
                          local.get 2
                          i32.add
                          i32.load8_s
                          i32.const -65
                          i32.le_s
                          br_if 1 (;@10;)
                          br 6 (;@5;)
                        end
                        local.get 1
                        local.get 1
                        i32.const 39244
                        call $_RNvNtCsdmBIiMovVma_4core9panicking18panic_bounds_check
                        unreachable
                      end
                      local.get 2
                      i32.const 1
                      i32.add
                      local.tee 2
                      local.get 1
                      i32.lt_u
                      br_if 0 (;@9;)
                    end
                    local.get 1
                    local.set 2
                    br 3 (;@5;)
                  end
                  local.get 5
                  i32.const 7
                  i64.extend_i32_u
                  i64.const 32
                  i64.shl
                  local.tee 6
                  local.get 5
                  i32.const 8
                  i32.add
                  i64.extend_i32_u
                  i64.or
                  i64.store offset=32
                  local.get 5
                  local.get 6
                  local.get 5
                  i64.extend_i32_u
                  i64.or
                  i64.store offset=24
                  i32.const 32917
                  local.get 5
                  i32.const 24
                  i32.add
                  local.get 4
                  call $_RNvNtCsdmBIiMovVma_4core9panicking9panic_fmt
                  unreachable
                end
                local.get 5
                i32.const 7
                i64.extend_i32_u
                i64.const 32
                i64.shl
                local.tee 6
                local.get 5
                i32.const 8
                i32.add
                i64.extend_i32_u
                i64.or
                i64.store offset=32
                local.get 5
                local.get 6
                local.get 5
                i32.const 4
                i32.add
                i64.extend_i32_u
                i64.or
                i64.store offset=24
                i32.const 32978
                local.get 5
                i32.const 24
                i32.add
                local.get 4
                call $_RNvNtCsdmBIiMovVma_4core9panicking9panic_fmt
                unreachable
              end
              local.get 5
              i32.const 7
              i64.extend_i32_u
              i64.const 32
              i64.shl
              local.tee 6
              local.get 5
              i32.const 4
              i32.add
              i64.extend_i32_u
              i64.or
              i64.store offset=32
              local.get 5
              local.get 6
              local.get 5
              i64.extend_i32_u
              i64.or
              i64.store offset=24
              i32.const 32823
              local.get 5
              i32.const 24
              i32.add
              local.get 4
              call $_RNvNtCsdmBIiMovVma_4core9panicking9panic_fmt
              unreachable
            end
            local.get 5
            local.get 3
            i32.store offset=12
            local.get 5
            local.get 2
            i32.store offset=16
            block  ;; label = @5
              local.get 3
              local.get 2
              i32.gt_u
              br_if 0 (;@5;)
              local.get 2
              local.get 1
              i32.gt_u
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 3
                local.get 1
                i32.eq
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 3
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 0
                  local.get 3
                  i32.add
                  i32.load8_s
                  i32.const -65
                  i32.le_s
                  br_if 2 (;@5;)
                end
                local.get 2
                local.get 1
                i32.eq
                br_if 0 (;@6;)
                local.get 0
                local.get 2
                i32.add
                i32.load8_s
                i32.const -65
                i32.le_s
                br_if 1 (;@5;)
              end
              local.get 3
              local.get 2
              i32.eq
              br_if 2 (;@3;)
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  local.get 3
                  i32.add
                  local.tee 1
                  i32.load8_s
                  local.tee 3
                  i32.const -1
                  i32.le_s
                  br_if 0 (;@7;)
                  local.get 3
                  i32.const 255
                  i32.and
                  local.set 3
                  br 1 (;@6;)
                end
                local.get 1
                i32.load8_u offset=1
                i32.const 63
                i32.and
                local.set 2
                local.get 3
                i32.const 31
                i32.and
                local.set 0
                block  ;; label = @7
                  local.get 3
                  i32.const -33
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 0
                  i32.const 6
                  i32.shl
                  local.get 2
                  i32.or
                  local.set 3
                  br 1 (;@6;)
                end
                local.get 2
                i32.const 6
                i32.shl
                local.get 1
                i32.load8_u offset=2
                i32.const 63
                i32.and
                i32.or
                local.set 2
                block  ;; label = @7
                  local.get 3
                  i32.const -16
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 2
                  local.get 0
                  i32.const 12
                  i32.shl
                  i32.or
                  local.set 3
                  br 1 (;@6;)
                end
                local.get 2
                i32.const 6
                i32.shl
                local.get 1
                i32.load8_u offset=3
                i32.const 63
                i32.and
                i32.or
                local.get 0
                i32.const 18
                i32.shl
                i32.const 1835008
                i32.and
                i32.or
                local.set 3
              end
              local.get 5
              local.get 3
              i32.store offset=20
              local.get 5
              i32.const 12
              i64.extend_i32_u
              i64.const 32
              i64.shl
              local.get 5
              i32.const 12
              i32.add
              i64.extend_i32_u
              i64.or
              i64.store offset=40
              local.get 5
              i32.const 13
              i64.extend_i32_u
              i64.const 32
              i64.shl
              local.get 5
              i32.const 20
              i32.add
              i64.extend_i32_u
              i64.or
              i64.store offset=32
              local.get 5
              i32.const 7
              i64.extend_i32_u
              i64.const 32
              i64.shl
              local.get 5
              i64.extend_i32_u
              i64.or
              i64.store offset=24
              i32.const 35260
              local.get 5
              i32.const 24
              i32.add
              local.get 4
              call $_RNvNtCsdmBIiMovVma_4core9panicking9panic_fmt
              unreachable
            end
            local.get 0
            local.get 1
            local.get 3
            local.get 2
            local.get 4
            call $_RNvNtCsdmBIiMovVma_4core3str16slice_error_fail
            unreachable
          end
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
          local.get 3
          local.get 1
          i32.ge_u
          br_if 2 (;@1;)
          local.get 0
          local.get 3
          i32.add
          i32.load8_s
          i32.const -65
          i32.gt_s
          br_if 2 (;@1;)
          block  ;; label = @4
            local.get 0
            local.get 3
            i32.const -1
            i32.add
            local.tee 2
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            br_if 0 (;@4;)
            local.get 3
            i32.const -2
            i32.add
            local.tee 2
            local.get 3
            i32.const -3
            i32.add
            local.get 0
            local.get 2
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            select
            local.set 2
          end
          block  ;; label = @4
            loop  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  local.get 3
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 0
                  local.get 3
                  i32.add
                  i32.load8_s
                  i32.const -65
                  i32.le_s
                  br_if 1 (;@6;)
                  br 3 (;@4;)
                end
                local.get 1
                local.get 1
                i32.const 39244
                call $_RNvNtCsdmBIiMovVma_4core9panicking18panic_bounds_check
                unreachable
              end
              local.get 3
              i32.const 1
              i32.add
              local.tee 3
              local.get 1
              i32.lt_u
              br_if 0 (;@5;)
            end
            local.get 1
            local.set 3
          end
          local.get 5
          local.get 2
          i32.store offset=12
          local.get 5
          local.get 3
          i32.store offset=16
          local.get 2
          local.get 3
          i32.gt_u
          br_if 1 (;@2;)
          local.get 3
          local.get 1
          i32.gt_u
          br_if 1 (;@2;)
          block  ;; label = @4
            local.get 2
            local.get 1
            i32.eq
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 2
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              local.get 2
              i32.add
              i32.load8_s
              i32.const -65
              i32.le_s
              br_if 3 (;@2;)
            end
            local.get 3
            local.get 1
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            local.get 3
            i32.add
            i32.load8_s
            i32.const -65
            i32.le_s
            br_if 2 (;@2;)
          end
          local.get 2
          local.get 3
          i32.eq
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              local.get 2
              i32.add
              local.tee 1
              i32.load8_s
              local.tee 3
              i32.const -1
              i32.le_s
              br_if 0 (;@5;)
              local.get 3
              i32.const 255
              i32.and
              local.set 3
              br 1 (;@4;)
            end
            local.get 1
            i32.load8_u offset=1
            i32.const 63
            i32.and
            local.set 2
            local.get 3
            i32.const 31
            i32.and
            local.set 0
            block  ;; label = @5
              local.get 3
              i32.const -33
              i32.gt_u
              br_if 0 (;@5;)
              local.get 0
              i32.const 6
              i32.shl
              local.get 2
              i32.or
              local.set 3
              br 1 (;@4;)
            end
            local.get 2
            i32.const 6
            i32.shl
            local.get 1
            i32.load8_u offset=2
            i32.const 63
            i32.and
            i32.or
            local.set 2
            block  ;; label = @5
              local.get 3
              i32.const -16
              i32.ge_u
              br_if 0 (;@5;)
              local.get 2
              local.get 0
              i32.const 12
              i32.shl
              i32.or
              local.set 3
              br 1 (;@4;)
            end
            local.get 2
            i32.const 6
            i32.shl
            local.get 1
            i32.load8_u offset=3
            i32.const 63
            i32.and
            i32.or
            local.get 0
            i32.const 18
            i32.shl
            i32.const 1835008
            i32.and
            i32.or
            local.set 3
          end
          local.get 5
          local.get 3
          i32.store offset=20
          local.get 5
          i32.const 12
          i64.extend_i32_u
          i64.const 32
          i64.shl
          local.get 5
          i32.const 12
          i32.add
          i64.extend_i32_u
          i64.or
          i64.store offset=40
          local.get 5
          i32.const 13
          i64.extend_i32_u
          i64.const 32
          i64.shl
          local.get 5
          i32.const 20
          i32.add
          i64.extend_i32_u
          i64.or
          i64.store offset=32
          local.get 5
          i32.const 7
          i64.extend_i32_u
          i64.const 32
          i64.shl
          local.get 5
          i32.const 4
          i32.add
          i64.extend_i32_u
          i64.or
          i64.store offset=24
          i32.const 35342
          local.get 5
          i32.const 24
          i32.add
          local.get 4
          call $_RNvNtCsdmBIiMovVma_4core9panicking9panic_fmt
          unreachable
        end
        local.get 4
        call $_RNvNtCsdmBIiMovVma_4core6option13unwrap_failed
        unreachable
      end
      local.get 0
      local.get 1
      local.get 2
      local.get 3
      local.get 4
      call $_RNvNtCsdmBIiMovVma_4core3str16slice_error_fail
      unreachable
    end
    local.get 5
    i32.const 7
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.tee 6
    local.get 5
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=32
    local.get 5
    local.get 6
    local.get 5
    i32.const 4
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=24
    i32.const 32978
    local.get 5
    i32.const 24
    i32.add
    local.get 4
    call $_RNvNtCsdmBIiMovVma_4core9panicking9panic_fmt
    unreachable)
  (func $_RNvXs_NtNtCsdmBIiMovVma_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtB8_ (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.load offset=8
            local.tee 3
            i32.const 33554432
            i32.and
            br_if 0 (;@4;)
            local.get 3
            i32.const 67108864
            i32.and
            br_if 1 (;@3;)
            local.get 0
            local.get 1
            call $_RNvXs8_NtNtNtCsdmBIiMovVma_4core3fmt3num3impmNtB9_7Display3fmt
            i32.eqz
            br_if 2 (;@2;)
            i32.const 1
            local.set 4
            br 3 (;@1;)
          end
          local.get 0
          i32.load
          local.set 4
          i32.const 9
          local.set 3
          loop  ;; label = @4
            local.get 2
            i32.const 8
            i32.add
            local.get 3
            i32.add
            i32.const -2
            i32.add
            local.get 4
            i32.const 15
            i32.and
            i32.load8_u offset=39102
            i32.store8
            local.get 3
            i32.const -1
            i32.add
            local.set 3
            local.get 4
            i32.const 4
            i32.shr_u
            local.tee 4
            br_if 0 (;@4;)
          end
          i32.const 1
          local.set 4
          local.get 1
          i32.const 1
          i32.const 40210
          i32.const 2
          local.get 2
          i32.const 8
          i32.add
          local.get 3
          i32.add
          i32.const -1
          i32.add
          i32.const 9
          local.get 3
          i32.sub
          call $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter12pad_integral
          i32.eqz
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 0
        i32.load
        local.set 4
        i32.const 9
        local.set 3
        loop  ;; label = @3
          local.get 2
          i32.const 8
          i32.add
          local.get 3
          i32.add
          i32.const -2
          i32.add
          local.get 4
          i32.const 15
          i32.and
          i32.load8_u offset=40212
          i32.store8
          local.get 3
          i32.const -1
          i32.add
          local.set 3
          local.get 4
          i32.const 4
          i32.shr_u
          local.tee 4
          br_if 0 (;@3;)
        end
        i32.const 1
        local.set 4
        local.get 1
        i32.const 1
        i32.const 40210
        i32.const 2
        local.get 2
        i32.const 8
        i32.add
        local.get 3
        i32.add
        i32.const -1
        i32.add
        i32.const 9
        local.get 3
        i32.sub
        call $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter12pad_integral
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        local.get 1
        i32.load
        i32.const 40204
        i32.const 2
        local.get 1
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 1)
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        local.set 4
        br 1 (;@1;)
      end
      local.get 0
      i32.const 4
      i32.add
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load offset=8
          local.tee 4
          i32.const 33554432
          i32.and
          br_if 0 (;@3;)
          local.get 4
          i32.const 67108864
          i32.and
          br_if 1 (;@2;)
          local.get 3
          local.get 1
          call $_RNvXs8_NtNtNtCsdmBIiMovVma_4core3fmt3num3impmNtB9_7Display3fmt
          local.set 4
          br 2 (;@1;)
        end
        local.get 3
        i32.load
        local.set 4
        i32.const 9
        local.set 3
        loop  ;; label = @3
          local.get 2
          i32.const 8
          i32.add
          local.get 3
          i32.add
          i32.const -2
          i32.add
          local.get 4
          i32.const 15
          i32.and
          i32.load8_u offset=39102
          i32.store8
          local.get 3
          i32.const -1
          i32.add
          local.set 3
          local.get 4
          i32.const 4
          i32.shr_u
          local.tee 4
          br_if 0 (;@3;)
        end
        local.get 1
        i32.const 1
        i32.const 40210
        i32.const 2
        local.get 2
        i32.const 8
        i32.add
        local.get 3
        i32.add
        i32.const -1
        i32.add
        i32.const 9
        local.get 3
        i32.sub
        call $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter12pad_integral
        local.set 4
        br 1 (;@1;)
      end
      local.get 3
      i32.load
      local.set 4
      i32.const 9
      local.set 3
      loop  ;; label = @2
        local.get 2
        i32.const 8
        i32.add
        local.get 3
        i32.add
        i32.const -2
        i32.add
        local.get 4
        i32.const 15
        i32.and
        i32.load8_u offset=40212
        i32.store8
        local.get 3
        i32.const -1
        i32.add
        local.set 3
        local.get 4
        i32.const 4
        i32.shr_u
        local.tee 4
        br_if 0 (;@2;)
      end
      local.get 1
      i32.const 1
      i32.const 40210
      i32.const 2
      local.get 2
      i32.const 8
      i32.add
      local.get 3
      i32.add
      i32.const -1
      i32.add
      i32.const 9
      local.get 3
      i32.sub
      call $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter12pad_integral
      local.set 4
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 4)
  (func $_RNvXsj_NtCsdmBIiMovVma_4core3fmtcNtB5_5Debug3fmt (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 1
    local.set 3
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 4
      i32.const 39
      local.get 1
      i32.load offset=4
      local.tee 5
      i32.load offset=16
      local.tee 1
      call_indirect (type 0)
      br_if 0 (;@1;)
      local.get 2
      local.get 0
      i32.load
      i32.const 257
      call $_RNvMNtNtCsdmBIiMovVma_4core4char7methodsc16escape_debug_ext
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load8_u offset=13
          local.tee 3
          i32.const 129
          i32.lt_u
          br_if 0 (;@3;)
          local.get 4
          local.get 2
          i32.load
          local.get 1
          call_indirect (type 0)
          i32.eqz
          br_if 1 (;@2;)
          i32.const 1
          local.set 3
          br 2 (;@1;)
        end
        local.get 4
        local.get 2
        local.get 2
        i32.load8_u offset=12
        local.tee 0
        i32.add
        local.get 3
        local.get 0
        i32.sub
        local.get 5
        i32.load offset=12
        call_indirect (type 1)
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        local.set 3
        br 1 (;@1;)
      end
      local.get 4
      i32.const 39
      local.get 1
      call_indirect (type 0)
      local.set 3
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $_RNvNtCsdmBIiMovVma_4core6option13unwrap_failed (type 8) (param i32)
    i32.const 39260
    i32.const 43
    local.get 0
    call $_RNvNtCsdmBIiMovVma_4core9panicking5panic
    unreachable)
  (func $_RNvNtCsdmBIiMovVma_4core4cell22panic_already_borrowed (type 8) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 14
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 1
    i32.const 15
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store
    i32.const 33279
    local.get 1
    local.get 0
    call $_RNvNtCsdmBIiMovVma_4core9panicking9panic_fmt
    unreachable)
  (func $_RNvXsr_NtCsdmBIiMovVma_4core4cellNtB5_14BorrowMutErrorNtNtB7_3fmt7Display3fmt (type 0) (param i32 i32) (result i32)
    local.get 1
    i32.const 40272
    i32.const 24
    call $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter3pad)
  (func $_RNvNtCsdmBIiMovVma_4core6option13expect_failed (type 14)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 25
    i32.store offset=4
    local.get 0
    i32.const 41238
    i32.store
    local.get 0
    i32.const 6
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 0
    i64.extend_i32_u
    i64.or
    i64.store offset=8
    i32.const 33279
    local.get 0
    i32.const 8
    i32.add
    i32.const 41264
    call $_RNvNtCsdmBIiMovVma_4core9panicking9panic_fmt
    unreachable)
  (func $_RNvXse_NtNtNtCsdmBIiMovVma_4core3fmt3num3impxNtB9_7Display3fmt (type 0) (param i32 i32) (result i32)
    (local i32 i32 i64 i64 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 20
    local.set 3
    block  ;; label = @1
      local.get 0
      i64.load
      local.tee 4
      local.get 4
      i64.const 63
      i64.shr_s
      local.tee 5
      i64.xor
      local.get 5
      i64.sub
      local.tee 6
      i64.const 1000
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 20
      local.set 3
      loop  ;; label = @2
        local.get 2
        i32.const 12
        i32.add
        local.get 3
        i32.add
        local.tee 0
        i32.const -4
        i32.add
        local.get 6
        local.tee 5
        local.get 5
        i64.const 10000
        i64.div_u
        local.tee 6
        i64.const 10000
        i64.mul
        i64.sub
        i32.wrap_i64
        local.tee 7
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 8
        i32.const 1
        i32.shl
        i32.load16_u offset=39305 align=1
        i32.store16 align=1
        local.get 0
        i32.const -2
        i32.add
        local.get 7
        local.get 8
        i32.const 100
        i32.mul
        i32.sub
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.load16_u offset=39305 align=1
        i32.store16 align=1
        local.get 3
        i32.const -4
        i32.add
        local.set 3
        local.get 5
        i64.const 9999999
        i64.gt_u
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 6
      i64.const 9
      i64.le_u
      br_if 0 (;@1;)
      local.get 2
      i32.const 12
      i32.add
      local.get 3
      i32.const -2
      i32.add
      local.tee 3
      i32.add
      local.get 6
      i32.wrap_i64
      local.tee 0
      local.get 0
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 0
      i32.const 100
      i32.mul
      i32.sub
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.load16_u offset=39305 align=1
      i32.store16 align=1
      local.get 0
      i64.extend_i32_u
      local.set 6
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i64.eqz
        br_if 0 (;@2;)
        local.get 6
        i64.eqz
        br_if 1 (;@1;)
      end
      local.get 2
      i32.const 12
      i32.add
      local.get 3
      i32.const -1
      i32.add
      local.tee 3
      i32.add
      local.get 6
      i32.wrap_i64
      i32.const 1
      i32.shl
      i32.load8_u offset=39306
      i32.store8
    end
    local.get 1
    local.get 4
    i64.const -1
    i64.gt_s
    i32.const 1
    i32.const 0
    local.get 2
    i32.const 12
    i32.add
    local.get 3
    i32.add
    i32.const 20
    local.get 3
    i32.sub
    call $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter12pad_integral
    local.set 3
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $_RNvXsg_NtCsdmBIiMovVma_4core3fmtbNtB5_7Display3fmt (type 0) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      i32.load8_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 40228
      i32.const 5
      call $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter3pad
      return
    end
    local.get 1
    i32.const 40233
    i32.const 4
    call $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter3pad)
  (func $_RNvXsk_NtCsdmBIiMovVma_4core3fmtcNtB5_7Display3fmt (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load8_u offset=11
        i32.const 24
        i32.and
        br_if 0 (;@2;)
        local.get 1
        i32.load
        local.get 0
        local.get 1
        i32.load offset=4
        i32.load offset=16
        call_indirect (type 0)
        local.set 0
        br 1 (;@1;)
      end
      local.get 2
      i32.const 0
      i32.store offset=12
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 128
          i32.lt_u
          br_if 0 (;@3;)
          local.get 0
          i32.const 63
          i32.and
          i32.const -128
          i32.or
          local.set 3
          local.get 0
          i32.const 6
          i32.shr_u
          local.set 4
          block  ;; label = @4
            local.get 0
            i32.const 2048
            i32.ge_u
            br_if 0 (;@4;)
            local.get 2
            local.get 3
            i32.store8 offset=13
            local.get 2
            local.get 4
            i32.const 192
            i32.or
            i32.store8 offset=12
            i32.const 2
            local.set 0
            br 2 (;@2;)
          end
          local.get 0
          i32.const 12
          i32.shr_u
          local.set 5
          local.get 4
          i32.const 63
          i32.and
          i32.const -128
          i32.or
          local.set 4
          block  ;; label = @4
            local.get 0
            i32.const 65535
            i32.gt_u
            br_if 0 (;@4;)
            local.get 2
            local.get 3
            i32.store8 offset=14
            local.get 2
            local.get 4
            i32.store8 offset=13
            local.get 2
            local.get 5
            i32.const 224
            i32.or
            i32.store8 offset=12
            i32.const 3
            local.set 0
            br 2 (;@2;)
          end
          local.get 2
          local.get 3
          i32.store8 offset=15
          local.get 2
          local.get 4
          i32.store8 offset=14
          local.get 2
          local.get 5
          i32.const 63
          i32.and
          i32.const -128
          i32.or
          i32.store8 offset=13
          local.get 2
          local.get 0
          i32.const 18
          i32.shr_u
          i32.const -16
          i32.or
          i32.store8 offset=12
          i32.const 4
          local.set 0
          br 1 (;@2;)
        end
        local.get 2
        local.get 0
        i32.store8 offset=12
        i32.const 1
        local.set 0
      end
      local.get 1
      local.get 2
      i32.const 12
      i32.add
      local.get 0
      call $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter3pad
      local.set 0
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_RNvMst_NtCsdmBIiMovVma_4core4cellINtB5_7RefCellNtCsbqFb0Tus64I_21linked_list_allocator4HeapE10borrow_mutCsf2KWoDnNIRz_14embedded_alloc (type 8) (param i32)
    block  ;; label = @1
      i32.const 0
      i32.load offset=112188
      br_if 0 (;@1;)
      i32.const 0
      i32.const -1
      i32.store offset=112188
      return
    end
    local.get 0
    call $_RNvNtCsdmBIiMovVma_4core4cell22panic_already_borrowed
    unreachable)
  (func $_RNvXs_NtCsf2KWoDnNIRz_14embedded_alloc4llffNtB4_4HeapNtNtNtCsdmBIiMovVma_4core5alloc6global11GlobalAlloc5alloc (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 40312
    call $_RNvMst_NtCsdmBIiMovVma_4core4cellINtB5_7RefCellNtCsbqFb0Tus64I_21linked_list_allocator4HeapE10borrow_mutCsf2KWoDnNIRz_14embedded_alloc
    local.get 2
    local.get 0
    local.get 1
    call $_RNvMs_NtCsbqFb0Tus64I_21linked_list_allocator4holeNtB4_8HoleList12align_layout
    i32.const 0
    local.set 3
    local.get 2
    i32.const 12
    i32.add
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load
          local.tee 5
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=112200
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.load offset=4
          local.set 6
          i32.const 112196
          local.set 1
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  loop  ;; label = @8
                    local.get 1
                    local.set 7
                    block  ;; label = @9
                      local.get 0
                      local.tee 1
                      i32.load
                      local.tee 0
                      local.get 6
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 1
                      local.set 8
                      block  ;; label = @10
                        local.get 1
                        local.get 5
                        call $_RNvCsbqFb0Tus64I_21linked_list_allocator8align_up
                        local.tee 9
                        local.get 1
                        i32.eq
                        local.tee 10
                        br_if 0 (;@10;)
                        local.get 1
                        i32.const 8
                        i32.add
                        local.get 5
                        call $_RNvCsbqFb0Tus64I_21linked_list_allocator8align_up
                        local.tee 8
                        local.get 1
                        i32.sub
                        local.set 11
                      end
                      local.get 8
                      local.get 6
                      i32.add
                      local.tee 12
                      local.get 1
                      local.get 0
                      i32.add
                      local.tee 0
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 0
                      local.get 12
                      i32.sub
                      local.tee 13
                      i32.eqz
                      br_if 2 (;@7;)
                      local.get 12
                      i32.const 3
                      i32.add
                      i32.const -4
                      i32.and
                      local.tee 12
                      i32.const 8
                      i32.add
                      local.get 0
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 7
                      i32.const 0
                      i32.store offset=4
                      local.get 1
                      i32.load offset=4
                      local.set 0
                      local.get 1
                      i32.const 0
                      i32.store offset=4
                      local.get 7
                      i32.const 4
                      i32.add
                      local.set 7
                      local.get 9
                      local.get 1
                      i32.ne
                      br_if 3 (;@6;)
                      local.get 13
                      local.set 11
                      local.get 12
                      local.set 1
                      br 4 (;@5;)
                    end
                    local.get 1
                    i32.load offset=4
                    local.tee 0
                    br_if 0 (;@8;)
                    br 5 (;@3;)
                  end
                end
                local.get 7
                i32.const 0
                i32.store offset=4
                local.get 1
                i32.load offset=4
                local.set 0
                local.get 1
                i32.const 0
                i32.store offset=4
                local.get 7
                i32.const 4
                i32.add
                local.set 7
                local.get 10
                i32.eqz
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
              local.get 12
              local.get 0
              i32.store offset=4
              local.get 12
              local.get 13
              i32.store
              local.get 1
              local.get 12
              i32.store offset=4
              local.get 1
              local.get 11
              i32.store
              local.get 7
              local.get 1
              i32.store
              br 3 (;@2;)
            end
            local.get 1
            local.get 0
            i32.store offset=4
            local.get 1
            local.get 11
            i32.store
            local.get 1
            local.set 0
          end
          local.get 7
          local.get 0
          i32.store
          local.get 8
          br_if 1 (;@2;)
        end
        i32.const 0
        local.set 6
        br 1 (;@1;)
      end
      local.get 2
      local.get 5
      i32.store offset=12
      local.get 2
      i32.const 8
      i32.add
      local.set 4
    end
    local.get 4
    local.get 6
    i32.store
    block  ;; label = @1
      local.get 2
      i32.load offset=12
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      i32.load offset=112192
      local.get 2
      i32.load offset=8
      i32.add
      i32.store offset=112192
      local.get 8
      local.set 3
    end
    i32.const 0
    i32.const 0
    i32.load offset=112188
    i32.const 1
    i32.add
    i32.store offset=112188
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $_RNvMs_NtCsbqFb0Tus64I_21linked_list_allocator4holeNtB4_8HoleList12align_layout (type 5) (param i32 i32 i32)
    local.get 0
    local.get 2
    i32.const 8
    local.get 2
    i32.const 8
    i32.gt_u
    select
    i32.const 3
    i32.add
    i32.const -4
    i32.and
    local.tee 2
    i32.store offset=4
    local.get 0
    i32.const 0
    i32.const 0
    local.get 1
    local.get 2
    i32.const -2147483648
    local.get 1
    i32.sub
    i32.gt_u
    select
    local.get 1
    local.get 1
    i32.const -1
    i32.add
    i32.and
    select
    i32.store)
  (func $_RNvCsbqFb0Tus64I_21linked_list_allocator8align_up (type 0) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 1
      i32.popcnt
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      i32.const 40419
      i32.const 83
      i32.const 40460
      call $_RNvNtCsdmBIiMovVma_4core9panicking9panic_fmt
      unreachable
    end
    local.get 1
    local.get 0
    i32.add
    i32.const -1
    i32.add
    i32.const 0
    local.get 1
    i32.sub
    i32.and)
  (func $_RNvXs_NtCsf2KWoDnNIRz_14embedded_alloc4llffNtB4_4HeapNtNtNtCsdmBIiMovVma_4core5alloc6global11GlobalAlloc7dealloc (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    i32.const 40328
    call $_RNvMst_NtCsdmBIiMovVma_4core4cellINtB5_7RefCellNtCsbqFb0Tus64I_21linked_list_allocator4HeapE10borrow_mutCsf2KWoDnNIRz_14embedded_alloc
    local.get 3
    local.get 1
    local.get 2
    call $_RNvMs_NtCsbqFb0Tus64I_21linked_list_allocator4holeNtB4_8HoleList12align_layout
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.load
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.load offset=4
              local.set 4
              local.get 0
              i32.const 0
              i32.store offset=4
              local.get 0
              local.get 4
              i32.store
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    i32.const 0
                    i32.load offset=112200
                    local.tee 1
                    i32.eqz
                    br_if 0 (;@8;)
                    i32.const 0
                    i32.load offset=112208
                    local.set 5
                    local.get 0
                    local.get 1
                    i32.ge_u
                    br_if 1 (;@7;)
                    local.get 0
                    local.get 4
                    i32.add
                    local.tee 6
                    local.get 1
                    i32.gt_u
                    br_if 4 (;@4;)
                    local.get 0
                    local.set 2
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=112204
                      local.tee 7
                      i32.const 8
                      i32.add
                      local.get 0
                      i32.le_u
                      br_if 0 (;@9;)
                      local.get 7
                      i32.const 0
                      i32.store offset=4
                      local.get 7
                      local.get 6
                      local.get 7
                      i32.sub
                      i32.store
                      local.get 7
                      local.set 2
                    end
                    local.get 2
                    local.get 1
                    i32.store offset=4
                    i32.const 0
                    local.get 2
                    i32.store offset=112200
                    i32.const 1
                    local.set 6
                    br 2 (;@6;)
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=112204
                      local.tee 2
                      i32.const 8
                      i32.add
                      local.get 0
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 0
                      local.set 2
                      br 1 (;@8;)
                    end
                    local.get 2
                    i32.const 0
                    i32.store offset=4
                    local.get 2
                    local.get 4
                    local.get 0
                    i32.add
                    local.get 2
                    i32.sub
                    i32.store
                  end
                  local.get 2
                  i32.const 0
                  i32.load offset=112208
                  call $_RNvNtCsbqFb0Tus64I_21linked_list_allocator4hole15check_merge_top
                  i32.const 0
                  local.get 2
                  i32.store offset=112200
                  br 6 (;@1;)
                end
                block  ;; label = @7
                  block  ;; label = @8
                    loop  ;; label = @9
                      local.get 3
                      local.get 0
                      i32.store offset=8
                      local.get 1
                      i32.load offset=4
                      local.tee 2
                      i32.eqz
                      br_if 1 (;@8;)
                      block  ;; label = @10
                        local.get 0
                        local.get 2
                        i32.lt_u
                        br_if 0 (;@10;)
                        local.get 2
                        local.set 1
                        br 1 (;@9;)
                      end
                    end
                    local.get 0
                    local.get 4
                    i32.add
                    local.get 2
                    i32.le_u
                    br_if 1 (;@7;)
                    i32.const 40476
                    i32.const 43
                    i32.const 40536
                    call $_RNvNtCsdmBIiMovVma_4core9panicking5panic
                    unreachable
                  end
                  i32.const 0
                  local.set 2
                end
                local.get 3
                local.get 1
                i32.store offset=12
                local.get 3
                local.get 1
                i32.load
                local.tee 7
                i32.store offset=16
                local.get 1
                local.get 7
                i32.add
                local.get 0
                i32.gt_u
                br_if 3 (;@3;)
                local.get 1
                local.get 0
                i32.store offset=4
                local.get 0
                local.get 2
                i32.store offset=4
                i32.const 2
                local.set 6
                local.get 1
                local.set 0
              end
              i32.const 0
              local.set 1
              br 3 (;@2;)
            end
            i32.const 40376
            i32.const 43
            local.get 3
            i32.const 47
            i32.add
            i32.const 40360
            i32.const 40568
            call $_RNvNtCsdmBIiMovVma_4core6result13unwrap_failed
            unreachable
          end
          i32.const 40476
          i32.const 43
          i32.const 40520
          call $_RNvNtCsdmBIiMovVma_4core9panicking5panic
          unreachable
        end
        local.get 3
        i32.const 7
        i32.store offset=40
        local.get 3
        i32.const 15
        i32.store offset=32
        local.get 3
        i32.const 15
        i32.store offset=24
        local.get 3
        local.get 3
        i32.const 16
        i32.add
        i32.store offset=36
        local.get 3
        local.get 3
        i32.const 12
        i32.add
        i32.store offset=28
        local.get 3
        local.get 3
        i32.const 8
        i32.add
        i32.store offset=20
        i32.const 35201
        local.get 3
        i32.const 20
        i32.add
        i32.const 40552
        call $_RNvNtCsdmBIiMovVma_4core9panicking9panic_fmt
        unreachable
      end
      loop  ;; label = @2
        local.get 6
        local.get 1
        i32.eq
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 0
          i32.load offset=4
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 0
            local.get 0
            i32.load
            i32.add
            local.get 2
            i32.eq
            br_if 0 (;@4;)
            local.get 1
            i32.const 1
            i32.add
            local.set 1
            local.get 2
            local.set 0
            br 2 (;@2;)
          end
          local.get 2
          i32.load offset=4
          local.set 7
          local.get 2
          i32.const 0
          i32.store offset=4
          local.get 2
          i32.load
          local.set 2
          local.get 0
          local.get 7
          i32.store offset=4
          local.get 0
          local.get 2
          local.get 0
          i32.load
          i32.add
          i32.store
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          br 1 (;@2;)
        end
      end
      local.get 0
      local.get 5
      call $_RNvNtCsbqFb0Tus64I_21linked_list_allocator4hole15check_merge_top
    end
    i32.const 0
    i32.const 0
    i32.load offset=112192
    local.get 4
    i32.sub
    i32.store offset=112192
    i32.const 0
    i32.const 0
    i32.load offset=112188
    i32.const 1
    i32.add
    i32.store offset=112188
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $_RNvNtCsbqFb0Tus64I_21linked_list_allocator4hole15check_merge_top (type 6) (param i32 i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      local.get 0
      i32.load
      local.tee 2
      i32.add
      local.tee 3
      local.get 1
      i32.ge_u
      br_if 0 (;@1;)
      local.get 3
      i32.const 3
      i32.add
      i32.const -4
      i32.and
      i32.const 8
      i32.add
      local.get 1
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 3
      i32.sub
      local.get 2
      i32.add
      i32.store
    end)
  (func $_RNvXsq_NtCsdmBIiMovVma_4core3fmtOhNtB5_5Debug3fmtCsbqFb0Tus64I_21linked_list_allocator (type 0) (param i32 i32) (result i32)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 3
    block  ;; label = @1
      local.get 1
      i64.load offset=8 align=4
      local.tee 4
      i32.wrap_i64
      local.tee 0
      i32.const 8388608
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.const 134217728
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 16777216
        i32.or
        local.set 0
        br 1 (;@1;)
      end
      local.get 1
      i32.const 10
      i32.store16 offset=12
      local.get 0
      i32.const 150994944
      i32.or
      local.set 0
    end
    local.get 1
    local.get 0
    i32.const 8388608
    i32.or
    i32.store offset=8
    i32.const 9
    local.set 0
    loop  ;; label = @1
      local.get 2
      i32.const 8
      i32.add
      local.get 0
      i32.add
      i32.const -2
      i32.add
      local.get 3
      i32.const 15
      i32.and
      i32.load8_u offset=39102
      i32.store8
      local.get 0
      i32.const -1
      i32.add
      local.set 0
      local.get 3
      i32.const 4
      i32.shr_u
      local.tee 3
      br_if 0 (;@1;)
    end
    local.get 1
    i32.const 1
    i32.const 40210
    i32.const 2
    local.get 2
    i32.const 8
    i32.add
    local.get 0
    i32.add
    i32.const -1
    i32.add
    i32.const 9
    local.get 0
    i32.sub
    call $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter12pad_integral
    local.set 0
    local.get 1
    local.get 4
    i64.store offset=8 align=4
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_RINvNtCsdmBIiMovVma_4core9panicking13assert_failedOhBM_ECsbqFb0Tus64I_21linked_list_allocator (type 6) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    i32.const 8
    i32.add
    i32.const 40344
    local.get 2
    i32.const 12
    i32.add
    i32.const 40344
    i32.const 40656
    call $_RNvNtCsdmBIiMovVma_4core9panicking19assert_failed_inner
    unreachable)
  (func $_RNvXs1g_NtCsdmBIiMovVma_4core3fmtROhNtB6_5Debug3fmtCsbqFb0Tus64I_21linked_list_allocator (type 0) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    call $_RNvXsq_NtCsdmBIiMovVma_4core3fmtOhNtB5_5Debug3fmtCsbqFb0Tus64I_21linked_list_allocator)
  (func $_RNvXsd_NtNtCsdmBIiMovVma_4core5alloc6layoutNtB5_11LayoutErrorNtNtB9_3fmt5Debug3fmt.143 (type 0) (param i32 i32) (result i32)
    local.get 1
    i32.load
    i32.const 40672
    i32.const 11
    local.get 1
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 1))
  (func $_RNvMNtCsjAdaHq5oevx_5alloc5allocNtB2_6Global18alloc_impl_runtime (type 5) (param i32 i32 i32)
    (local i32)
    i32.const 1
    local.get 1
    call $_RNvXs_NtCsf2KWoDnNIRz_14embedded_alloc4llffNtB4_4HeapNtNtNtCsdmBIiMovVma_4core5alloc6global11GlobalAlloc5alloc
    local.set 3
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 3
        br_if 0 (;@2;)
        i32.const 0
        local.set 3
        br 1 (;@1;)
      end
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const 0
      local.get 1
      memory.fill
    end
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store)
  (func $_RNvNtCsgzaNOZ9sV4N_10serde_json5error10make_error (type 2) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i32.load offset=8
    local.set 2
    local.get 0
    i32.load offset=4
    local.set 3
    i32.const 1
    local.set 4
    i32.const 1
    local.set 5
    i32.const 0
    local.set 6
    i32.const 1
    local.set 7
    i32.const 0
    local.set 8
    loop  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 8
          local.get 6
          i32.add
          local.tee 9
          i32.const 8
          i32.gt_u
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 4
            i32.load8_u offset=45608
            i32.const 255
            i32.and
            local.tee 4
            local.get 9
            i32.load8_u offset=45608
            local.tee 9
            i32.lt_u
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 4
              local.get 9
              i32.eq
              br_if 0 (;@5;)
              i32.const 1
              local.set 7
              i32.const 0
              local.set 6
              local.get 5
              local.set 8
              local.get 5
              i32.const 1
              i32.add
              local.set 5
              br 3 (;@2;)
            end
            i32.const 0
            local.get 6
            i32.const 1
            i32.add
            local.tee 4
            local.get 4
            local.get 7
            i32.eq
            local.tee 9
            select
            local.set 6
            local.get 4
            i32.const 0
            local.get 9
            select
            local.get 5
            i32.add
            local.set 5
            br 2 (;@2;)
          end
          local.get 5
          local.get 6
          i32.add
          i32.const 1
          i32.add
          local.tee 5
          local.get 8
          i32.sub
          local.set 7
          i32.const 0
          local.set 6
          br 1 (;@2;)
        end
        local.get 9
        i32.const 9
        i32.const 39164
        call $_RNvNtCsdmBIiMovVma_4core9panicking18panic_bounds_check
        unreachable
      end
      local.get 5
      local.get 6
      i32.add
      local.tee 4
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
    end
    i32.const 1
    local.set 4
    i32.const 1
    local.set 5
    i32.const 0
    local.set 6
    i32.const 1
    local.set 10
    i32.const 0
    local.set 11
    loop  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 11
            local.get 6
            i32.add
            local.tee 9
            i32.const 8
            i32.gt_u
            br_if 0 (;@4;)
            local.get 4
            i32.load8_u offset=45608
            i32.const 255
            i32.and
            local.tee 4
            local.get 9
            i32.load8_u offset=45608
            local.tee 9
            i32.gt_u
            br_if 1 (;@3;)
            block  ;; label = @5
              local.get 4
              local.get 9
              i32.eq
              br_if 0 (;@5;)
              i32.const 1
              local.set 10
              i32.const 0
              local.set 6
              local.get 5
              local.set 11
              local.get 5
              i32.const 1
              i32.add
              local.set 5
              br 3 (;@2;)
            end
            i32.const 0
            local.get 6
            i32.const 1
            i32.add
            local.tee 4
            local.get 4
            local.get 10
            i32.eq
            local.tee 9
            select
            local.set 6
            local.get 4
            i32.const 0
            local.get 9
            select
            local.get 5
            i32.add
            local.set 5
            br 2 (;@2;)
          end
          local.get 9
          i32.const 9
          i32.const 39164
          call $_RNvNtCsdmBIiMovVma_4core9panicking18panic_bounds_check
          unreachable
        end
        local.get 5
        local.get 6
        i32.add
        i32.const 1
        i32.add
        local.tee 5
        local.get 11
        i32.sub
        local.set 10
        i32.const 0
        local.set 6
      end
      local.get 5
      local.get 6
      i32.add
      local.tee 4
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 8
              local.get 11
              local.get 8
              local.get 11
              i32.gt_u
              local.tee 6
              select
              local.tee 12
              i32.const 9
              i32.gt_u
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 7
                local.get 10
                local.get 6
                select
                local.tee 5
                local.get 12
                i32.add
                local.tee 6
                local.get 5
                i32.lt_u
                br_if 0 (;@6;)
                local.get 6
                i32.const 9
                i32.gt_u
                br_if 0 (;@6;)
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        i32.const 45608
                        local.get 5
                        i32.const 45608
                        i32.add
                        local.get 12
                        call $memcmp
                        local.tee 13
                        i32.eqz
                        br_if 0 (;@10;)
                        i32.const 9
                        local.get 12
                        i32.sub
                        local.tee 6
                        local.get 12
                        local.get 6
                        local.get 12
                        i32.gt_u
                        select
                        i32.const 1
                        i32.add
                        local.set 5
                        i32.const -1
                        local.set 4
                        i64.const 4593909904703488
                        local.set 14
                        local.get 12
                        local.set 9
                        i32.const -1
                        local.set 8
                        br 1 (;@9;)
                      end
                      i32.const 1
                      local.set 8
                      i32.const 0
                      local.set 6
                      i32.const 1
                      local.set 9
                      i32.const 0
                      local.set 7
                      block  ;; label = @10
                        loop  ;; label = @11
                          local.get 9
                          local.tee 4
                          local.get 6
                          i32.add
                          local.tee 10
                          i32.const 8
                          i32.gt_u
                          br_if 1 (;@10;)
                          local.get 4
                          i32.const -1
                          i32.xor
                          local.get 6
                          i32.sub
                          local.tee 9
                          i32.const 9
                          i32.add
                          local.set 11
                          local.get 9
                          i32.const -9
                          i32.lt_u
                          br_if 10 (;@1;)
                          i32.const 8
                          local.get 6
                          local.get 7
                          i32.add
                          i32.sub
                          local.tee 9
                          i32.const 8
                          i32.gt_u
                          br_if 9 (;@2;)
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 11
                                i32.load8_u offset=45608
                                i32.const 255
                                i32.and
                                local.tee 11
                                local.get 9
                                i32.load8_u offset=45608
                                local.tee 9
                                i32.lt_u
                                br_if 0 (;@14;)
                                local.get 11
                                local.get 9
                                i32.eq
                                br_if 1 (;@13;)
                                local.get 4
                                i32.const 1
                                i32.add
                                local.set 9
                                i32.const 0
                                local.set 6
                                i32.const 1
                                local.set 8
                                local.get 4
                                local.set 7
                                br 2 (;@12;)
                              end
                              local.get 10
                              i32.const 1
                              i32.add
                              local.tee 9
                              local.get 7
                              i32.sub
                              local.set 8
                              i32.const 0
                              local.set 6
                              br 1 (;@12;)
                            end
                            i32.const 0
                            local.get 6
                            i32.const 1
                            i32.add
                            local.tee 9
                            local.get 9
                            local.get 8
                            i32.eq
                            local.tee 11
                            select
                            local.set 6
                            local.get 9
                            i32.const 0
                            local.get 11
                            select
                            local.get 4
                            i32.add
                            local.set 9
                          end
                          local.get 8
                          local.get 5
                          i32.ne
                          br_if 0 (;@11;)
                        end
                      end
                      i32.const 1
                      local.set 8
                      i32.const 0
                      local.set 6
                      i32.const 1
                      local.set 9
                      i32.const 0
                      local.set 10
                      block  ;; label = @10
                        loop  ;; label = @11
                          local.get 9
                          local.tee 4
                          local.get 6
                          i32.add
                          local.tee 15
                          i32.const 8
                          i32.gt_u
                          br_if 1 (;@10;)
                          local.get 4
                          i32.const -1
                          i32.xor
                          local.get 6
                          i32.sub
                          local.tee 9
                          i32.const 9
                          i32.add
                          local.set 11
                          local.get 9
                          i32.const -9
                          i32.lt_u
                          br_if 4 (;@7;)
                          i32.const 8
                          local.get 6
                          local.get 10
                          i32.add
                          i32.sub
                          local.tee 9
                          i32.const 9
                          i32.ge_u
                          br_if 3 (;@8;)
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 11
                                i32.load8_u offset=45608
                                i32.const 255
                                i32.and
                                local.tee 11
                                local.get 9
                                i32.load8_u offset=45608
                                local.tee 9
                                i32.gt_u
                                br_if 0 (;@14;)
                                local.get 11
                                local.get 9
                                i32.eq
                                br_if 1 (;@13;)
                                local.get 4
                                i32.const 1
                                i32.add
                                local.set 9
                                i32.const 0
                                local.set 6
                                i32.const 1
                                local.set 8
                                local.get 4
                                local.set 10
                                br 2 (;@12;)
                              end
                              local.get 15
                              i32.const 1
                              i32.add
                              local.tee 9
                              local.get 10
                              i32.sub
                              local.set 8
                              i32.const 0
                              local.set 6
                              br 1 (;@12;)
                            end
                            i32.const 0
                            local.get 6
                            i32.const 1
                            i32.add
                            local.tee 9
                            local.get 9
                            local.get 8
                            i32.eq
                            local.tee 11
                            select
                            local.set 6
                            local.get 9
                            i32.const 0
                            local.get 11
                            select
                            local.get 4
                            i32.add
                            local.set 9
                          end
                          local.get 8
                          local.get 5
                          i32.ne
                          br_if 0 (;@11;)
                        end
                      end
                      i32.const 9
                      local.set 8
                      i32.const 9
                      local.get 10
                      local.get 7
                      local.get 10
                      local.get 7
                      i32.gt_u
                      select
                      i32.sub
                      local.set 9
                      i64.const 0
                      local.set 14
                      block  ;; label = @10
                        local.get 5
                        br_if 0 (;@10;)
                        i32.const 0
                        local.set 5
                        i32.const 0
                        local.set 4
                        br 1 (;@9;)
                      end
                      i32.const 0
                      local.set 4
                      i32.const 0
                      local.set 6
                      loop  ;; label = @10
                        i64.const 1
                        local.get 6
                        i32.const 45608
                        i32.add
                        i64.load8_u
                        i64.shl
                        local.get 14
                        i64.or
                        local.set 14
                        local.get 5
                        local.get 6
                        i32.const 1
                        i32.add
                        local.tee 6
                        i32.ne
                        br_if 0 (;@10;)
                      end
                    end
                    local.get 1
                    i32.const 9
                    i32.store offset=124
                    local.get 1
                    i32.const 45608
                    i32.store offset=120
                    local.get 1
                    local.get 2
                    i32.store offset=116
                    local.get 1
                    local.get 3
                    i32.store offset=112
                    local.get 1
                    local.get 8
                    i32.store offset=104
                    local.get 1
                    local.get 4
                    i32.store offset=100
                    local.get 1
                    local.get 2
                    i32.store offset=96
                    i32.const 0
                    local.set 8
                    local.get 1
                    i32.const 0
                    i32.store offset=92
                    local.get 1
                    local.get 5
                    i32.store offset=88
                    local.get 1
                    local.get 9
                    i32.store offset=84
                    local.get 1
                    local.get 12
                    i32.store offset=80
                    local.get 1
                    local.get 14
                    i64.store offset=72
                    local.get 1
                    i32.const 1
                    i32.store offset=64
                    local.get 1
                    i32.const 52
                    i32.add
                    local.get 1
                    i32.const 72
                    i32.add
                    local.get 3
                    local.get 2
                    i32.const 45608
                    i32.const 9
                    local.get 13
                    i32.const 0
                    i32.ne
                    call $_RINvMsx_NtNtCsdmBIiMovVma_4core3str7patternNtB6_14TwoWaySearcher9next_backNtB6_9MatchOnlyECsgzaNOZ9sV4N_10serde_json
                    local.get 1
                    i32.load offset=52
                    i32.const 1
                    i32.ne
                    br_if 4 (;@4;)
                    local.get 1
                    i32.load offset=56
                    local.tee 4
                    i32.const 9
                    i32.add
                    local.tee 9
                    local.set 6
                    loop  ;; label = @9
                      local.get 1
                      i32.const 40
                      i32.add
                      local.get 3
                      local.get 2
                      local.get 6
                      i32.const 45620
                      call $_RNvXsv_NtCsjAdaHq5oevx_5alloc6stringNtB5_6StringINtNtNtCsdmBIiMovVma_4core3ops5index5IndexINtNtBP_5range9RangeFromjEE5indexCsgzaNOZ9sV4N_10serde_json
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          i32.load offset=44
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 1
                          i32.load offset=40
                          i32.load8_u
                          i32.const -48
                          i32.add
                          i32.const 255
                          i32.and
                          i32.const 10
                          i32.lt_u
                          br_if 1 (;@10;)
                        end
                        local.get 1
                        i32.const 32
                        i32.add
                        local.get 3
                        local.get 2
                        local.get 6
                        i32.const 45636
                        call $_RNvXsv_NtCsjAdaHq5oevx_5alloc6stringNtB5_6StringINtNtNtCsdmBIiMovVma_4core3ops5index5IndexINtNtBP_5range9RangeFromjEE5indexCsgzaNOZ9sV4N_10serde_json
                        local.get 1
                        i32.load offset=36
                        i32.const 8
                        i32.lt_u
                        br_if 6 (;@4;)
                        local.get 1
                        i32.load offset=32
                        i64.load align=1
                        i64.const 2336925607749706528
                        i64.ne
                        br_if 6 (;@4;)
                        local.get 6
                        i32.const 8
                        i32.add
                        local.tee 11
                        local.set 5
                        block  ;; label = @11
                          loop  ;; label = @12
                            local.get 1
                            i32.const 24
                            i32.add
                            local.get 3
                            local.get 2
                            local.get 5
                            i32.const 45652
                            call $_RNvXsv_NtCsjAdaHq5oevx_5alloc6stringNtB5_6StringINtNtNtCsdmBIiMovVma_4core3ops5index5IndexINtNtBP_5range9RangeFromjEE5indexCsgzaNOZ9sV4N_10serde_json
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 1
                                i32.load offset=28
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 1
                                i32.load offset=24
                                i32.load8_u
                                i32.const -48
                                i32.add
                                i32.const 255
                                i32.and
                                i32.const 10
                                i32.lt_u
                                br_if 1 (;@13;)
                              end
                              local.get 5
                              local.get 2
                              i32.lt_u
                              br_if 9 (;@4;)
                              local.get 1
                              i32.const 16
                              i32.add
                              local.get 3
                              local.get 2
                              local.get 9
                              local.get 6
                              i32.const 45668
                              call $_RNvXsv_NtCsjAdaHq5oevx_5alloc6stringNtB5_6StringINtNtNtCsdmBIiMovVma_4core3ops5index5IndexINtNtBP_5range5RangejEE5indexCsgzaNOZ9sV4N_10serde_json
                              local.get 1
                              i32.const 64
                              i32.add
                              local.get 1
                              i32.load offset=16
                              local.get 1
                              i32.load offset=20
                              call $_RNvXsu_NtCsdmBIiMovVma_4core3numjNtNtNtB7_3str6traits7FromStr8from_str
                              local.get 1
                              i32.load8_u offset=64
                              i32.const 1
                              i32.eq
                              br_if 9 (;@4;)
                              local.get 1
                              i32.load offset=68
                              local.set 9
                              local.get 1
                              i32.const 8
                              i32.add
                              local.get 3
                              local.get 2
                              local.get 11
                              local.get 5
                              i32.const 45684
                              call $_RNvXsv_NtCsjAdaHq5oevx_5alloc6stringNtB5_6StringINtNtNtCsdmBIiMovVma_4core3ops5index5IndexINtNtBP_5range5RangejEE5indexCsgzaNOZ9sV4N_10serde_json
                              local.get 1
                              i32.const 64
                              i32.add
                              local.get 1
                              i32.load offset=8
                              local.get 1
                              i32.load offset=12
                              call $_RNvXsu_NtCsdmBIiMovVma_4core3numjNtNtNtB7_3str6traits7FromStr8from_str
                              local.get 1
                              i32.load8_u offset=64
                              i32.const 1
                              i32.eq
                              br_if 9 (;@4;)
                              local.get 1
                              i32.load offset=68
                              local.set 8
                              block  ;; label = @14
                                local.get 4
                                local.get 2
                                i32.le_u
                                br_if 0 (;@14;)
                                local.get 2
                                local.set 4
                                br 11 (;@3;)
                              end
                              local.get 4
                              i32.eqz
                              br_if 10 (;@3;)
                              local.get 4
                              local.get 2
                              i32.ge_u
                              br_if 10 (;@3;)
                              local.get 3
                              local.get 4
                              i32.add
                              i32.load8_s
                              i32.const -65
                              i32.le_s
                              br_if 2 (;@11;)
                              br 10 (;@3;)
                            end
                            local.get 5
                            i32.const 1
                            i32.add
                            local.set 5
                            br 0 (;@12;)
                          end
                        end
                        i32.const 42016
                        i32.const 48
                        i32.const 45700
                        call $_RNvNtCsdmBIiMovVma_4core9panicking5panic
                        unreachable
                      end
                      local.get 6
                      i32.const 1
                      i32.add
                      local.set 6
                      br 0 (;@9;)
                    end
                  end
                  local.get 9
                  i32.const 9
                  i32.const 39196
                  call $_RNvNtCsdmBIiMovVma_4core9panicking18panic_bounds_check
                  unreachable
                end
                local.get 11
                i32.const 9
                i32.const 39180
                call $_RNvNtCsdmBIiMovVma_4core9panicking18panic_bounds_check
                unreachable
              end
              local.get 5
              local.get 6
              i32.const 9
              i32.const 39212
              call $_RNvNtNtCsdmBIiMovVma_4core5slice5index16slice_index_fail
              unreachable
            end
            i32.const 0
            local.get 12
            i32.const 9
            i32.const 39228
            call $_RNvNtNtCsdmBIiMovVma_4core5slice5index16slice_index_fail
            unreachable
          end
          local.get 2
          local.set 4
          i32.const 0
          local.set 9
        end
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load
              local.tee 6
              local.get 4
              i32.gt_u
              br_if 0 (;@5;)
              local.get 3
              local.set 5
              br 1 (;@4;)
            end
            block  ;; label = @5
              local.get 4
              br_if 0 (;@5;)
              i32.const 1
              local.set 5
              local.get 3
              i32.const 1
              local.get 6
              call $_RNvXs_NtCsf2KWoDnNIRz_14embedded_alloc4llffNtB4_4HeapNtNtNtCsdmBIiMovVma_4core5alloc6global11GlobalAlloc7dealloc
              br 1 (;@4;)
            end
            local.get 3
            local.get 6
            i32.const 1
            local.get 4
            call $_RNvCs1njKG4L9aB3_7___rustc14___rust_realloc
            local.tee 5
            i32.eqz
            br_if 1 (;@3;)
          end
          call $_RNvNtCsjAdaHq5oevx_5alloc5boxed14box_new_uninit.333
          local.tee 6
          local.get 8
          i32.store offset=16
          local.get 6
          local.get 9
          i32.store offset=12
          local.get 6
          local.get 4
          i32.store offset=8
          local.get 6
          local.get 5
          i32.store offset=4
          local.get 6
          i32.const 0
          i32.store
          local.get 1
          i32.const 128
          i32.add
          global.set $__stack_pointer
          local.get 6
          return
        end
        i32.const 1
        local.get 4
        call $_RNvNtCsjAdaHq5oevx_5alloc7raw_vec12handle_error
        unreachable
      end
      local.get 9
      i32.const 9
      i32.const 39196
      call $_RNvNtCsdmBIiMovVma_4core9panicking18panic_bounds_check
      unreachable
    end
    local.get 11
    i32.const 9
    i32.const 39180
    call $_RNvNtCsdmBIiMovVma_4core9panicking18panic_bounds_check
    unreachable)
  (func $_RNvXs_NtCs3wU1vCl2ErL_10serde_core2deNtNvXsX_NtB4_5implsmNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsdwI7iSz8jyL_10myrmic_sdk (type 0) (param i32 i32) (result i32)
    local.get 1
    i32.load
    i32.const 41913
    i32.const 3
    local.get 1
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 1))
  (func $_RNvMs_NtCsgzaNOZ9sV4N_10serde_json4readNtB4_9SliceRead17position_of_index (type 10) (param i32 i32 i32 i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              local.get 2
              i32.gt_u
              br_if 0 (;@5;)
              i32.const 0
              local.set 4
              local.get 3
              i32.eqz
              br_if 4 (;@1;)
              local.get 1
              local.get 3
              i32.add
              local.set 2
              block  ;; label = @6
                local.get 3
                i32.const 3
                i32.gt_u
                br_if 0 (;@6;)
                loop  ;; label = @7
                  local.get 2
                  local.get 1
                  i32.le_u
                  br_if 6 (;@1;)
                  local.get 2
                  i32.const -1
                  i32.add
                  local.tee 2
                  i32.load8_u
                  i32.const 10
                  i32.ne
                  br_if 0 (;@7;)
                  br 5 (;@2;)
                end
              end
              block  ;; label = @6
                i32.const 16843008
                local.get 2
                i32.const -4
                i32.add
                i32.load align=1
                local.tee 5
                i32.const 168430090
                i32.xor
                i32.sub
                local.get 5
                i32.or
                i32.const -2139062144
                i32.and
                i32.const -2139062144
                i32.eq
                br_if 0 (;@6;)
                loop  ;; label = @7
                  local.get 2
                  local.get 1
                  i32.le_u
                  br_if 6 (;@1;)
                  local.get 2
                  i32.const -1
                  i32.add
                  local.tee 2
                  i32.load8_u
                  i32.const 10
                  i32.ne
                  br_if 0 (;@7;)
                  br 5 (;@2;)
                end
              end
              local.get 3
              local.get 2
              i32.const 3
              i32.and
              i32.sub
              local.set 5
              local.get 3
              i32.const 9
              i32.lt_u
              br_if 1 (;@4;)
              loop  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 5
                    i32.const 8
                    i32.lt_s
                    br_if 0 (;@8;)
                    i32.const 16843008
                    local.get 1
                    local.get 5
                    i32.add
                    local.tee 2
                    i32.const -8
                    i32.add
                    i32.load
                    local.tee 6
                    i32.const 168430090
                    i32.xor
                    i32.sub
                    local.get 6
                    i32.or
                    i32.const -2139062144
                    i32.and
                    i32.const -2139062144
                    i32.eq
                    br_if 1 (;@7;)
                  end
                  local.get 1
                  local.get 5
                  i32.add
                  local.set 2
                  br 4 (;@3;)
                end
                local.get 5
                i32.const -8
                i32.add
                local.set 5
                i32.const 16843008
                local.get 2
                i32.const -4
                i32.add
                i32.load
                local.tee 6
                i32.const 168430090
                i32.xor
                i32.sub
                local.get 6
                i32.or
                i32.const -2139062144
                i32.and
                i32.const -2139062144
                i32.eq
                br_if 0 (;@6;)
                br 3 (;@3;)
              end
            end
            i32.const 0
            local.get 3
            local.get 2
            i32.const 42096
            call $_RNvNtNtCsdmBIiMovVma_4core5slice5index16slice_index_fail
            unreachable
          end
          local.get 1
          local.get 5
          i32.add
          local.set 2
          loop  ;; label = @4
            local.get 2
            local.get 1
            i32.le_u
            br_if 3 (;@1;)
            local.get 2
            i32.const -1
            i32.add
            local.tee 2
            i32.load8_u
            i32.const 10
            i32.ne
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        loop  ;; label = @3
          local.get 2
          local.get 1
          i32.le_u
          br_if 2 (;@1;)
          local.get 2
          i32.const -1
          i32.add
          local.tee 2
          i32.load8_u
          i32.const 10
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 2
      local.get 1
      i32.sub
      i32.const 1
      i32.add
      local.set 4
    end
    i32.const 1
    local.set 2
    block  ;; label = @1
      local.get 1
      local.get 1
      local.get 4
      i32.add
      local.tee 5
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 0
      local.set 2
      block  ;; label = @2
        loop  ;; label = @3
          local.get 1
          local.get 5
          i32.ge_u
          br_if 1 (;@2;)
          local.get 2
          local.get 1
          i32.load8_u
          i32.const 10
          i32.eq
          i32.add
          local.set 2
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          br 0 (;@3;)
        end
      end
      local.get 2
      i32.const 1
      i32.add
      local.set 2
    end
    local.get 0
    local.get 2
    i32.store
    local.get 0
    local.get 3
    local.get 4
    i32.sub
    i32.store offset=4)
  (func $_RNvNtCsjAdaHq5oevx_5alloc5boxed14box_new_uninit.333 (type 4) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 8
    i32.add
    i32.const 4
    i32.const 20
    call $_RNvMNtCsjAdaHq5oevx_5alloc5allocNtB2_6Global18alloc_impl_runtime.328
    block  ;; label = @1
      local.get 0
      i32.load offset=8
      local.tee 1
      br_if 0 (;@1;)
      i32.const 20
      call $_RNvNtCsjAdaHq5oevx_5alloc5alloc18handle_alloc_error
      unreachable
    end
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE9next_charCsdwI7iSz8jyL_10myrmic_sdk (type 6) (param i32 i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 1
      i32.load offset=20
      local.tee 2
      local.get 1
      i32.load offset=16
      local.tee 3
      i32.ge_u
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 1
      i32.add
      i32.store offset=20
      local.get 1
      i32.load offset=12
      local.get 2
      i32.add
      i32.load8_u
      local.set 4
    end
    local.get 0
    local.get 4
    i32.store8 offset=2
    local.get 0
    i32.const 0
    i32.store8
    local.get 0
    local.get 2
    local.get 3
    i32.lt_u
    i32.store8 offset=1)
  (func $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE12parse_numberCsdwI7iSz8jyL_10myrmic_sdk (type 18) (param i32 i32 i32 i64)
    (local i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 1
                    i32.load offset=20
                    local.tee 5
                    local.get 1
                    i32.load offset=16
                    i32.ge_u
                    br_if 0 (;@8;)
                    local.get 1
                    i32.load offset=12
                    local.get 5
                    i32.add
                    i32.load8_u
                    local.tee 5
                    i32.const 46
                    i32.eq
                    br_if 1 (;@7;)
                    local.get 5
                    i32.const 69
                    i32.eq
                    br_if 2 (;@6;)
                    local.get 5
                    i32.const 101
                    i32.eq
                    br_if 2 (;@6;)
                  end
                  local.get 2
                  i32.eqz
                  br_if 2 (;@5;)
                  i64.const 1
                  local.set 6
                  br 5 (;@2;)
                end
                local.get 4
                local.get 1
                local.get 2
                local.get 3
                i32.const 0
                call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsdwI7iSz8jyL_10myrmic_sdk
                local.get 4
                i32.load
                br_if 2 (;@4;)
                br 3 (;@3;)
              end
              local.get 4
              local.get 1
              local.get 2
              local.get 3
              i32.const 0
              call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCsdwI7iSz8jyL_10myrmic_sdk
              local.get 4
              i32.load
              i32.eqz
              br_if 2 (;@3;)
              local.get 0
              local.get 4
              i32.load offset=4
              i32.store offset=8
              local.get 0
              i64.const -1
              i64.store
              br 4 (;@1;)
            end
            i64.const 0
            local.set 6
            block  ;; label = @5
              i64.const 0
              local.get 3
              i64.sub
              local.tee 7
              i64.const 0
              i64.ge_s
              br_if 0 (;@5;)
              i64.const 2
              local.set 6
              local.get 7
              local.set 3
              br 3 (;@2;)
            end
            local.get 3
            f64.convert_i64_u
            i64.reinterpret_f64
            i64.const -9223372036854775808
            i64.or
            local.set 3
            br 2 (;@2;)
          end
          local.get 0
          local.get 4
          i32.load offset=4
          i32.store offset=8
          local.get 0
          i64.const -1
          i64.store
          br 2 (;@1;)
        end
        local.get 4
        i64.load offset=8
        local.set 3
        i64.const 0
        local.set 6
      end
      local.get 0
      local.get 3
      i64.store offset=8
      local.get 0
      local.get 6
      i64.store
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsdwI7iSz8jyL_10myrmic_sdk (type 0) (param i32 i32) (result i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    local.get 0
    i32.const 12
    i32.add
    call $_RNvXs1_NtCsgzaNOZ9sV4N_10serde_json4readNtB5_9SliceReadNtB5_4Read8position
    local.get 2
    i64.load offset=8
    local.set 3
    call $_RNvNtCsjAdaHq5oevx_5alloc5boxed14box_new_uninit.333
    local.tee 0
    local.get 3
    i64.store offset=12 align=4
    local.get 0
    local.get 1
    i32.load offset=8
    i32.store offset=8
    local.get 0
    local.get 1
    i64.load align=4
    i64.store align=4
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE18parse_long_integerCsdwI7iSz8jyL_10myrmic_sdk (type 18) (param i32 i32 i32 i64)
    (local i32 i32 i32 i32 i32)
    i32.const 0
    local.set 4
    i32.const 0
    local.get 1
    i32.load offset=16
    local.tee 5
    local.get 1
    i32.load offset=20
    local.tee 6
    i32.sub
    local.tee 7
    local.get 7
    local.get 5
    i32.gt_u
    select
    local.set 5
    local.get 1
    i32.load offset=12
    local.get 6
    i32.add
    local.set 7
    local.get 6
    i32.const 1
    i32.add
    local.set 8
    loop  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 5
              local.get 4
              i32.eq
              br_if 0 (;@5;)
              local.get 7
              local.get 4
              i32.add
              i32.load8_u
              local.tee 6
              i32.const -48
              i32.add
              i32.const 255
              i32.and
              i32.const 10
              i32.lt_u
              br_if 3 (;@2;)
              local.get 6
              i32.const 46
              i32.eq
              br_if 1 (;@4;)
              local.get 6
              i32.const 69
              i32.eq
              br_if 2 (;@3;)
              local.get 6
              i32.const 101
              i32.eq
              br_if 2 (;@3;)
              local.get 4
              local.set 5
            end
            local.get 0
            local.get 1
            local.get 2
            local.get 3
            local.get 5
            call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsdwI7iSz8jyL_10myrmic_sdk
            return
          end
          local.get 0
          local.get 1
          local.get 2
          local.get 3
          local.get 4
          call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsdwI7iSz8jyL_10myrmic_sdk
          return
        end
        local.get 0
        local.get 1
        local.get 2
        local.get 3
        local.get 4
        call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCsdwI7iSz8jyL_10myrmic_sdk
        return
      end
      local.get 1
      local.get 8
      local.get 4
      i32.add
      i32.store offset=20
      local.get 4
      i32.const 1
      i32.add
      local.set 4
      br 0 (;@1;)
    end)
  (func $_RNvXs8_NtCsjAdaHq5oevx_5alloc5boxedINtB5_3BoxNtNtCsgzaNOZ9sV4N_10serde_json5error9ErrorImplENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCsdwI7iSz8jyL_10myrmic_sdk (type 8) (param i32)
    local.get 0
    i32.const 4
    i32.const 20
    call $_RNvXs_NtCsf2KWoDnNIRz_14embedded_alloc4llffNtB4_4HeapNtNtNtCsdmBIiMovVma_4core5alloc6global11GlobalAlloc7dealloc)
  (func $_RNvXs1_NtCsgzaNOZ9sV4N_10serde_json4readNtB5_9SliceReadNtB5_4Read8position (type 6) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    local.get 1
    i32.load
    local.get 1
    i32.load offset=4
    local.get 1
    i32.load offset=8
    call $_RNvMs_NtCsgzaNOZ9sV4N_10serde_json4readNtB4_9SliceRead17position_of_index
    local.get 2
    i32.load offset=12
    local.set 1
    local.get 0
    local.get 2
    i32.load offset=8
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsdwI7iSz8jyL_10myrmic_sdk (type 19) (param i32 i32 i32 i64 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 1
    local.get 1
    i32.load offset=20
    i32.const 1
    i32.add
    local.tee 6
    i32.store offset=20
    local.get 1
    i32.load offset=12
    local.set 7
    local.get 1
    i32.load offset=16
    local.set 8
    i32.const 0
    local.set 9
    block  ;; label = @1
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 6
                  local.get 8
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 7
                  local.get 6
                  i32.add
                  i32.load8_u
                  local.tee 10
                  i32.const -48
                  i32.add
                  local.tee 11
                  i32.const 255
                  i32.and
                  local.tee 12
                  i32.const 10
                  i32.lt_u
                  br_if 4 (;@3;)
                  local.get 9
                  br_if 1 (;@6;)
                  local.get 5
                  i32.const 13
                  i32.store offset=4
                  local.get 1
                  local.get 5
                  i32.const 4
                  i32.add
                  call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsdwI7iSz8jyL_10myrmic_sdk
                  local.set 6
                  local.get 0
                  i32.const 1
                  i32.store
                  local.get 0
                  local.get 6
                  i32.store offset=4
                  br 6 (;@1;)
                end
                block  ;; label = @7
                  local.get 9
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 9
                  local.get 4
                  i32.add
                  local.set 6
                  br 2 (;@5;)
                end
                local.get 5
                i32.const 5
                i32.store offset=4
                local.get 1
                local.get 5
                i32.const 4
                i32.add
                call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsdwI7iSz8jyL_10myrmic_sdk
                local.set 6
                local.get 0
                i32.const 1
                i32.store
                local.get 0
                local.get 6
                i32.store offset=4
                br 5 (;@1;)
              end
              local.get 9
              local.get 4
              i32.add
              local.set 6
              local.get 10
              i32.const 32
              i32.or
              i32.const 101
              i32.eq
              br_if 1 (;@4;)
            end
            local.get 0
            local.get 1
            local.get 2
            local.get 3
            local.get 6
            call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsdwI7iSz8jyL_10myrmic_sdk
            br 3 (;@1;)
          end
          local.get 0
          local.get 1
          local.get 2
          local.get 3
          local.get 6
          call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCsdwI7iSz8jyL_10myrmic_sdk
          br 2 (;@1;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i64.const 1844674407370955160
            i64.le_u
            br_if 0 (;@4;)
            local.get 3
            i64.const 1844674407370955161
            i64.ne
            br_if 1 (;@3;)
            local.get 12
            i32.const 5
            i32.gt_u
            br_if 1 (;@3;)
          end
          local.get 1
          local.get 6
          i32.const 1
          i32.add
          local.tee 6
          i32.store offset=20
          local.get 9
          i32.const -1
          i32.add
          local.set 9
          local.get 3
          i64.const 10
          i64.mul
          local.get 11
          i64.extend_i32_u
          i64.const 255
          i64.and
          i64.add
          local.set 3
          br 1 (;@2;)
        end
      end
      local.get 0
      local.get 1
      local.get 2
      local.get 3
      local.get 9
      local.get 4
      i32.add
      call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE22parse_decimal_overflowCsdwI7iSz8jyL_10myrmic_sdk
    end
    local.get 5
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCsdwI7iSz8jyL_10myrmic_sdk (type 19) (param i32 i32 i32 i64 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 1
    local.get 1
    i32.load offset=20
    local.tee 6
    i32.const 1
    i32.add
    local.tee 7
    i32.store offset=20
    i32.const 1
    local.set 8
    block  ;; label = @1
      local.get 7
      local.get 1
      i32.load offset=16
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 1
      local.set 8
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load offset=12
          local.get 7
          i32.add
          i32.load8_u
          i32.const -43
          i32.add
          br_table 1 (;@2;) 2 (;@1;) 0 (;@3;) 2 (;@1;)
        end
        i32.const 0
        local.set 8
      end
      local.get 1
      local.get 6
      i32.const 2
      i32.add
      i32.store offset=20
    end
    local.get 5
    i32.const 12
    i32.add
    local.get 1
    call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE9next_charCsdwI7iSz8jyL_10myrmic_sdk
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 5
            i32.load8_u offset=12
            i32.const 1
            i32.ne
            br_if 0 (;@4;)
            local.get 5
            i32.load offset=16
            local.set 7
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 5
            i32.load8_u offset=13
            i32.const 1
            i32.ne
            br_if 0 (;@4;)
            local.get 5
            i32.load8_u offset=14
            i32.const -48
            i32.add
            i32.const 255
            i32.and
            local.tee 6
            i32.const 10
            i32.lt_u
            br_if 2 (;@2;)
            local.get 5
            i32.const 13
            i32.store offset=20
            local.get 1
            local.get 5
            i32.const 20
            i32.add
            call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsdwI7iSz8jyL_10myrmic_sdk
            local.set 7
            local.get 0
            i32.const 1
            i32.store
            local.get 0
            local.get 7
            i32.store offset=4
            br 3 (;@1;)
          end
          local.get 5
          i32.const 5
          i32.store offset=20
          local.get 1
          local.get 5
          i32.const 20
          i32.add
          call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsdwI7iSz8jyL_10myrmic_sdk
          local.set 7
        end
        local.get 0
        i32.const 1
        i32.store
        local.get 0
        local.get 7
        i32.store offset=4
        br 1 (;@1;)
      end
      local.get 1
      i32.load offset=20
      local.tee 7
      local.get 1
      i32.load offset=16
      local.tee 9
      local.get 7
      local.get 9
      i32.gt_u
      select
      local.set 10
      local.get 1
      i32.load offset=12
      local.set 11
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 10
            local.get 7
            i32.eq
            br_if 0 (;@4;)
            local.get 11
            local.get 7
            i32.add
            i32.load8_u
            i32.const -48
            i32.add
            i32.const 255
            i32.and
            local.tee 9
            i32.const 10
            i32.lt_u
            br_if 1 (;@3;)
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 8
              br_if 0 (;@5;)
              local.get 4
              local.get 6
              i32.sub
              local.tee 7
              i32.const 31
              i32.shr_s
              i32.const -2147483648
              i32.xor
              local.get 7
              local.get 6
              i32.const 0
              i32.gt_s
              local.get 7
              local.get 4
              i32.lt_s
              i32.xor
              select
              local.set 7
              br 1 (;@4;)
            end
            local.get 4
            local.get 6
            i32.add
            local.tee 7
            i32.const 31
            i32.shr_s
            i32.const -2147483648
            i32.xor
            local.get 7
            local.get 6
            i32.const 0
            i32.lt_s
            local.get 7
            local.get 4
            i32.lt_s
            i32.xor
            select
            local.set 7
          end
          local.get 0
          local.get 1
          local.get 2
          local.get 3
          local.get 7
          call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsdwI7iSz8jyL_10myrmic_sdk
          br 2 (;@1;)
        end
        local.get 1
        local.get 7
        i32.const 1
        i32.add
        local.tee 7
        i32.store offset=20
        block  ;; label = @3
          block  ;; label = @4
            local.get 6
            i32.const 214748363
            i32.le_s
            br_if 0 (;@4;)
            local.get 6
            i32.const 214748364
            i32.ne
            br_if 1 (;@3;)
            local.get 9
            i32.const 7
            i32.gt_u
            br_if 1 (;@3;)
          end
          local.get 6
          i32.const 10
          i32.mul
          local.get 9
          i32.add
          local.set 6
          br 1 (;@2;)
        end
      end
      local.get 0
      local.get 1
      local.get 2
      local.get 3
      i64.eqz
      local.get 8
      call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE23parse_exponent_overflowCsdwI7iSz8jyL_10myrmic_sdk
    end
    local.get 5
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsdwI7iSz8jyL_10myrmic_sdk (type 19) (param i32 i32 i32 i64 i32)
    (local i32 f64 i32 f64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 3
    f64.convert_i64_u
    local.set 6
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            loop  ;; label = @5
              block  ;; label = @6
                local.get 4
                local.get 4
                i32.const 31
                i32.shr_s
                local.tee 7
                i32.xor
                local.get 7
                i32.sub
                local.tee 7
                i32.const 308
                i32.gt_u
                br_if 0 (;@6;)
                local.get 7
                i32.const 3
                i32.shl
                f64.load offset=42112
                local.set 8
                local.get 4
                i32.const -1
                i32.gt_s
                br_if 2 (;@4;)
                local.get 6
                local.get 8
                f64.div
                local.set 6
                br 4 (;@2;)
              end
              local.get 6
              f64.const 0x0p+0 (;=0;)
              f64.eq
              br_if 3 (;@2;)
              block  ;; label = @6
                local.get 4
                i32.const -1
                i32.gt_s
                br_if 0 (;@6;)
                local.get 4
                i32.const 308
                i32.add
                local.set 4
                local.get 6
                f64.const 0x1.1ccf385ebc8ap+1023 (;=1e+308;)
                f64.div
                local.set 6
                br 1 (;@5;)
              end
            end
            local.get 5
            i32.const 14
            i32.store offset=4
            local.get 0
            local.get 1
            local.get 5
            i32.const 4
            i32.add
            call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsdwI7iSz8jyL_10myrmic_sdk
            i32.store offset=4
            br 1 (;@3;)
          end
          local.get 6
          local.get 8
          f64.mul
          local.tee 6
          f64.abs
          f64.const inf (;=inf;)
          f64.ne
          br_if 1 (;@2;)
          local.get 5
          i32.const 14
          i32.store offset=4
          local.get 0
          local.get 1
          local.get 5
          i32.const 4
          i32.add
          call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsdwI7iSz8jyL_10myrmic_sdk
          i32.store offset=4
        end
        i32.const 1
        local.set 4
        br 1 (;@1;)
      end
      local.get 0
      local.get 6
      local.get 6
      f64.neg
      local.get 2
      select
      f64.store offset=8
      i32.const 0
      local.set 4
    end
    local.get 0
    local.get 4
    i32.store
    local.get 5
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE22parse_decimal_overflowCsdwI7iSz8jyL_10myrmic_sdk (type 19) (param i32 i32 i32 i64 i32)
    (local i32 i32 i32 i32)
    local.get 1
    i32.load offset=20
    local.tee 5
    local.get 1
    i32.load offset=16
    local.tee 6
    local.get 5
    local.get 6
    i32.gt_u
    select
    local.set 6
    local.get 1
    i32.load offset=12
    local.set 7
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 6
          local.get 5
          i32.eq
          br_if 1 (;@2;)
          block  ;; label = @4
            local.get 7
            local.get 5
            i32.add
            i32.load8_u
            local.tee 8
            i32.const -48
            i32.add
            i32.const 255
            i32.and
            i32.const 9
            i32.gt_u
            br_if 0 (;@4;)
            local.get 1
            local.get 5
            i32.const 1
            i32.add
            local.tee 5
            i32.store offset=20
            br 1 (;@3;)
          end
        end
        local.get 8
        i32.const 32
        i32.or
        i32.const 101
        i32.eq
        br_if 1 (;@1;)
      end
      local.get 0
      local.get 1
      local.get 2
      local.get 3
      local.get 4
      call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsdwI7iSz8jyL_10myrmic_sdk
      return
    end
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCsdwI7iSz8jyL_10myrmic_sdk)
  (func $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE23parse_exponent_overflowCsdwI7iSz8jyL_10myrmic_sdk (type 16) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          br_if 0 (;@3;)
          local.get 4
          br_if 1 (;@2;)
        end
        local.get 1
        i32.load offset=20
        local.tee 3
        local.get 1
        i32.load offset=16
        local.tee 4
        local.get 3
        local.get 4
        i32.gt_u
        select
        local.set 4
        local.get 1
        i32.load offset=12
        local.set 6
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              local.get 3
              i32.eq
              br_if 0 (;@5;)
              local.get 6
              local.get 3
              i32.add
              i32.load8_u
              i32.const -48
              i32.add
              i32.const 255
              i32.and
              i32.const 10
              i32.lt_u
              br_if 1 (;@4;)
            end
            local.get 0
            f64.const 0x0p+0 (;=0;)
            f64.const -0x0p+0 (;=-0;)
            local.get 2
            select
            f64.store offset=8
            i32.const 0
            local.set 3
            br 3 (;@1;)
          end
          local.get 1
          local.get 3
          i32.const 1
          i32.add
          local.tee 3
          i32.store offset=20
          br 0 (;@3;)
        end
      end
      local.get 5
      i32.const 14
      i32.store offset=4
      local.get 0
      local.get 1
      local.get 5
      i32.const 4
      i32.add
      call $_RNvMs2_NtCsgzaNOZ9sV4N_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsdwI7iSz8jyL_10myrmic_sdk
      i32.store offset=4
      i32.const 1
      local.set 3
    end
    local.get 0
    local.get 3
    i32.store
    local.get 5
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_RNvXsa_NtNtCsdmBIiMovVma_4core5slice5indexINtNtNtB9_3ops5range16RangeToInclusivejEINtB5_10SliceIndexShE9index_mutCsdwI7iSz8jyL_10myrmic_sdk (type 16) (param i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 1
      local.get 3
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 0
      local.get 1
      local.get 3
      local.get 4
      call $_RNvNtNtCsdmBIiMovVma_4core5slice5index16slice_index_fail
      unreachable
    end
    local.get 0
    local.get 2
    i32.store
    local.get 0
    local.get 1
    i32.const 1
    i32.add
    i32.store offset=4)
  (func $_RNvXse_NtCsdmBIiMovVma_4core5arrayAhj5_INtNtNtB7_3ops5index8IndexMutINtNtBG_5range16RangeToInclusivejEE9index_mutCsdwI7iSz8jyL_10myrmic_sdk (type 10) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 8
    i32.add
    local.get 2
    local.get 1
    i32.const 5
    local.get 3
    call $_RNvXsa_NtNtCsdmBIiMovVma_4core5slice5indexINtNtNtB9_3ops5range16RangeToInclusivejEINtB5_10SliceIndexShE9index_mutCsdwI7iSz8jyL_10myrmic_sdk
    local.get 4
    i32.load offset=12
    local.set 3
    local.get 0
    local.get 4
    i32.load offset=8
    i32.store
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_RNvXs_NtCs3wU1vCl2ErL_10serde_core2deNtNvXs5_NtCsgzaNOZ9sV4N_10serde_json6numberNtBH_6NumberNtB4_11Deserialize11deserialize13NumberVisitorNtB4_8Expected3fmtCsdwI7iSz8jyL_10myrmic_sdk (type 0) (param i32 i32) (result i32)
    local.get 1
    i32.load
    i32.const 45716
    i32.const 13
    local.get 1
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 1))
  (func $_RNvXs1_NtNtCsdmBIiMovVma_4core5panic10panic_infoNtB5_12PanicMessageNtNtB9_3fmt7Display3fmt (type 0) (param i32 i32) (result i32)
    local.get 1
    i32.load
    local.get 1
    i32.load offset=4
    local.get 0
    i32.load
    local.tee 1
    i32.load
    local.get 1
    i32.load offset=4
    call $_RNvNtCsdmBIiMovVma_4core3fmt5write)
  (func $_RNvYNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions6RawBufNtNtCsdmBIiMovVma_4core3fmt5Write9write_fmtB6_ (type 1) (param i32 i32 i32) (result i32)
    local.get 0
    i32.const 41784
    local.get 1
    local.get 2
    call $_RNvNtCsdmBIiMovVma_4core3fmt5write)
  (func $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions7logging10log_buffer (type 5) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    i32.const 4
    call $_RNvNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions7logging11c_functions8log_host
    call $_RNvXNtCsdwI7iSz8jyL_10myrmic_sdk5errorlNtB2_9ErrorCode9to_result)
  (func $_RNvXs1i_NtCsdmBIiMovVma_4core3fmtRNtNtNtB8_5panic8location8LocationNtB6_7Display3fmtCsdwI7iSz8jyL_10myrmic_sdk (type 0) (param i32 i32) (result i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.load
    local.tee 0
    i64.load align=4
    i64.store align=4
    local.get 2
    i32.const 7
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.tee 3
    local.get 0
    i32.const 12
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=24
    local.get 2
    local.get 3
    local.get 0
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=16
    local.get 2
    i32.const 2
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 2
    i64.extend_i32_u
    i64.or
    i64.store offset=8
    local.get 1
    i32.load
    local.get 1
    i32.load offset=4
    i32.const 32775
    local.get 2
    i32.const 8
    i32.add
    call $_RNvNtCsdmBIiMovVma_4core3fmt5write
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_RNvXs_NtCsdwI7iSz8jyL_10myrmic_sdk14host_functionsNtB4_6RawBufNtNtCsdmBIiMovVma_4core3fmt5Write9write_str (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.get 0
      i32.load offset=8
      local.tee 3
      i32.sub
      local.tee 4
      local.get 2
      local.get 4
      local.get 2
      i32.lt_u
      select
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load
      local.get 3
      i32.add
      local.get 1
      local.get 2
      memory.copy
    end
    local.get 0
    local.get 2
    local.get 3
    i32.add
    i32.store offset=8
    i32.const 0)
  (func $_RNvYNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions6RawBufNtNtCsdmBIiMovVma_4core3fmt5Write10write_charB6_ (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 128
        i32.lt_u
        br_if 0 (;@2;)
        i32.const 2
        i32.const 3
        i32.const 4
        local.get 1
        i32.const 65536
        i32.lt_u
        select
        local.get 1
        i32.const 2048
        i32.lt_u
        local.tee 3
        select
        local.set 4
        local.get 1
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        local.set 5
        local.get 1
        i32.const 6
        i32.shr_u
        local.set 6
        block  ;; label = @3
          local.get 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 5
          i32.store8 offset=13
          local.get 2
          local.get 6
          i32.const 192
          i32.or
          i32.store8 offset=12
          br 2 (;@1;)
        end
        local.get 1
        i32.const 12
        i32.shr_u
        local.set 3
        local.get 6
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        local.set 6
        block  ;; label = @3
          local.get 1
          i32.const 65535
          i32.gt_u
          br_if 0 (;@3;)
          local.get 2
          local.get 5
          i32.store8 offset=14
          local.get 2
          local.get 6
          i32.store8 offset=13
          local.get 2
          local.get 3
          i32.const 224
          i32.or
          i32.store8 offset=12
          br 2 (;@1;)
        end
        local.get 2
        local.get 5
        i32.store8 offset=15
        local.get 2
        local.get 6
        i32.store8 offset=14
        local.get 2
        local.get 3
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        i32.store8 offset=13
        local.get 2
        local.get 1
        i32.const 18
        i32.shr_u
        i32.const -16
        i32.or
        i32.store8 offset=12
        br 1 (;@1;)
      end
      local.get 2
      local.get 1
      i32.store8 offset=12
      i32.const 1
      local.set 4
    end
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.get 0
      i32.load offset=8
      local.tee 1
      i32.sub
      local.tee 3
      local.get 4
      local.get 3
      local.get 4
      i32.lt_u
      select
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load
      local.get 1
      i32.add
      local.get 2
      i32.const 12
      i32.add
      local.get 4
      memory.copy
    end
    local.get 0
    local.get 4
    local.get 1
    i32.add
    i32.store offset=8
    i32.const 0)
  (func $_RNvXs3_NtCs2WOo28oSl5V_8postcard5errorNtB5_5ErrorNtNtCsdmBIiMovVma_4core3fmt5Debug3fmt (type 0) (param i32 i32) (result i32)
    local.get 1
    i32.load
    local.get 0
    i32.load8_u
    i32.const 2
    i32.shl
    local.tee 0
    i32.load offset=62924
    local.get 0
    i32.load offset=62860
    local.get 1
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 1))
  (func $_critical_section_1_0_acquire (type 14))
  (func $init_allocator (type 14)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 40296
    call $_RNvMst_NtCsdmBIiMovVma_4core4cellINtB5_7RefCellNtCsbqFb0Tus64I_21linked_list_allocator4HeapE10borrow_mutCsf2KWoDnNIRz_14embedded_alloc
    i32.const 0
    i32.const 0
    i32.store offset=112192
    block  ;; label = @1
      block  ;; label = @2
        i32.const 112188
        i32.const 79423
        i32.const -4
        i32.and
        local.tee 1
        i32.sub
        local.tee 2
        i32.const 7
        i32.le_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 0
        i32.store offset=4
        local.get 1
        local.get 2
        i32.const -4
        i32.and
        local.tee 3
        i32.store
        local.get 0
        i32.const 112188
        i32.store offset=8
        local.get 0
        local.get 1
        local.get 2
        i32.add
        i32.store offset=12
        i32.const 1
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        local.get 1
        i32.store offset=112204
        i32.const 0
        local.get 1
        i32.store offset=112200
        i32.const 0
        i32.const 112188
        i32.const 3
        i32.and
        i32.store8 offset=112212
        i32.const 0
        local.get 1
        local.get 3
        i32.add
        i32.store offset=112208
        i32.const 0
        i32.const 0
        i32.load offset=112188
        i32.const 1
        i32.add
        i32.store offset=112188
        i32.const 0
        i32.const 0
        i32.store offset=112196
        local.get 0
        i32.const 16
        i32.add
        global.set $__stack_pointer
        return
      end
      i32.const 40584
      i32.const 56
      i32.const 40640
      call $_RNvNtCsdmBIiMovVma_4core9panicking5panic
      unreachable
    end
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 12
    i32.add
    call $_RINvNtCsdmBIiMovVma_4core9panicking13assert_failedOhBM_ECsbqFb0Tus64I_21linked_list_allocator
    unreachable)
  (func $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter9write_fmt.241 (type 3) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_RNvNtCsdmBIiMovVma_4core3fmt5write)
  (func $_RNvMNtCsjAdaHq5oevx_5alloc5allocNtB2_6Global18alloc_impl_runtime.328 (type 5) (param i32 i32 i32)
    local.get 1
    local.get 2
    call $_RNvXs_NtCsf2KWoDnNIRz_14embedded_alloc4llffNtB4_4HeapNtNtNtCsdmBIiMovVma_4core5alloc6global11GlobalAlloc5alloc
    local.set 1
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $_RNvMs_NtCsjAdaHq5oevx_5alloc3vecINtB4_3VechE7reserveCsgzaNOZ9sV4N_10serde_json (type 6) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 1
      local.get 0
      i32.load
      local.tee 3
      local.get 0
      i32.load offset=8
      local.tee 4
      i32.sub
      i32.le_u
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            local.get 4
            i32.add
            local.tee 4
            local.get 1
            i32.ge_u
            br_if 0 (;@4;)
            i32.const 0
            local.set 0
            br 1 (;@3;)
          end
          i32.const 0
          local.set 5
          local.get 2
          i32.const 20
          i32.add
          local.set 6
          block  ;; label = @4
            local.get 4
            local.get 3
            i32.const 1
            i32.shl
            local.tee 1
            local.get 4
            local.get 1
            i32.gt_u
            select
            local.tee 1
            i32.const 8
            local.get 1
            i32.const 8
            i32.gt_u
            select
            local.tee 1
            i32.const 0
            i32.lt_s
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                br_if 0 (;@6;)
                i32.const 0
                local.set 3
                local.get 2
                i32.const 28
                i32.add
                local.set 4
                br 1 (;@5;)
              end
              local.get 0
              i32.load offset=4
              local.set 5
              local.get 2
              i32.const 1
              i32.store offset=28
              local.get 2
              i32.const 24
              i32.add
              local.set 4
            end
            local.get 4
            local.get 3
            i32.store
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.load offset=28
                i32.eqz
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 2
                  i32.load offset=24
                  local.tee 3
                  br_if 0 (;@7;)
                  local.get 2
                  i32.const 8
                  i32.add
                  i32.const 1
                  local.get 1
                  call $_RNvMNtCsjAdaHq5oevx_5alloc5allocNtB2_6Global18alloc_impl_runtime.328
                  local.get 2
                  i32.load offset=8
                  local.set 3
                  br 2 (;@5;)
                end
                local.get 5
                local.get 3
                i32.const 1
                local.get 1
                call $_RNvCs1njKG4L9aB3_7___rustc14___rust_realloc
                local.set 3
                br 1 (;@5;)
              end
              local.get 2
              i32.const 1
              local.get 1
              call $_RNvMNtCsjAdaHq5oevx_5alloc5allocNtB2_6Global18alloc_impl_runtime.328
              local.get 2
              i32.load
              local.set 3
            end
            local.get 3
            br_if 2 (;@2;)
            local.get 2
            i32.const 1
            i32.store offset=20
            local.get 2
            i32.const 16
            i32.add
            local.set 6
            local.get 1
            local.set 5
          end
          local.get 6
          local.get 5
          i32.store
          local.get 2
          i32.load offset=16
          local.set 1
          local.get 2
          i32.load offset=20
          local.set 0
        end
        local.get 0
        local.get 1
        call $_RNvNtCsjAdaHq5oevx_5alloc7raw_vec12handle_error
        unreachable
      end
      local.get 0
      local.get 1
      i32.store
      local.get 0
      local.get 3
      i32.store offset=4
    end
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_RNvXs1i_NtCsdmBIiMovVma_4core3fmtRDNtNtCs3wU1vCl2ErL_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCsgzaNOZ9sV4N_10serde_json (type 0) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    i32.const 12
    i32.add
    i32.load
    call_indirect (type 0))
  (func $_RNvXs7_NtCsgzaNOZ9sV4N_10serde_json5errorNtB5_14JsonUnexpectedNtNtCsdmBIiMovVma_4core3fmt7Display3fmt (type 0) (param i32 i32) (result i32)
    (local i32 i32 i64 i64 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.load8_u
                  local.tee 3
                  i32.const -3
                  i32.add
                  br_table 1 (;@6;) 0 (;@7;) 0 (;@7;) 0 (;@7;) 2 (;@5;) 0 (;@7;)
                end
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  local.get 3
                                                  br_table 1 (;@22;) 2 (;@21;) 3 (;@20;) 0 (;@23;) 4 (;@19;) 5 (;@18;) 6 (;@17;) 0 (;@23;) 7 (;@16;) 8 (;@15;) 9 (;@14;) 10 (;@13;) 11 (;@12;) 12 (;@11;) 13 (;@10;) 14 (;@9;) 15 (;@8;) 16 (;@7;) 1 (;@22;)
                                                end
                                                unreachable
                                              end
                                              local.get 2
                                              local.get 0
                                              i32.load8_u offset=1
                                              i32.store8 offset=48
                                              local.get 2
                                              i32.const 16
                                              i32.store offset=28
                                              local.get 2
                                              local.get 2
                                              i32.const 48
                                              i32.add
                                              i32.store offset=24
                                              local.get 1
                                              i32.load
                                              local.get 1
                                              i32.load offset=4
                                              i32.const 35187
                                              local.get 2
                                              i32.const 24
                                              i32.add
                                              call $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter9write_fmt.241
                                              local.set 0
                                              br 20 (;@1;)
                                            end
                                            local.get 2
                                            local.get 0
                                            i64.load offset=8
                                            i64.store offset=48
                                            local.get 2
                                            i32.const 1
                                            i32.store offset=28
                                            local.get 2
                                            local.get 2
                                            i32.const 48
                                            i32.add
                                            i32.store offset=24
                                            local.get 1
                                            i32.load
                                            local.get 1
                                            i32.load offset=4
                                            i32.const 35173
                                            local.get 2
                                            i32.const 24
                                            i32.add
                                            call $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter9write_fmt.241
                                            local.set 0
                                            br 19 (;@1;)
                                          end
                                          local.get 2
                                          local.get 0
                                          i64.load offset=8
                                          i64.store offset=48
                                          local.get 2
                                          i32.const 17
                                          i32.store offset=28
                                          local.get 2
                                          local.get 2
                                          i32.const 48
                                          i32.add
                                          i32.store offset=24
                                          local.get 1
                                          i32.load
                                          local.get 1
                                          i32.load offset=4
                                          i32.const 35173
                                          local.get 2
                                          i32.const 24
                                          i32.add
                                          call $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter9write_fmt.241
                                          local.set 0
                                          br 18 (;@1;)
                                        end
                                        local.get 2
                                        local.get 0
                                        i32.load offset=4
                                        i32.store offset=48
                                        local.get 2
                                        i32.const 18
                                        i32.store offset=28
                                        local.get 2
                                        local.get 2
                                        i32.const 48
                                        i32.add
                                        i32.store offset=24
                                        local.get 1
                                        i32.load
                                        local.get 1
                                        i32.load offset=4
                                        i32.const 35157
                                        local.get 2
                                        i32.const 24
                                        i32.add
                                        call $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter9write_fmt.241
                                        local.set 0
                                        br 17 (;@1;)
                                      end
                                      local.get 2
                                      local.get 0
                                      i64.load offset=4 align=4
                                      i64.store offset=48 align=4
                                      local.get 2
                                      i32.const 19
                                      i32.store offset=28
                                      local.get 2
                                      local.get 2
                                      i32.const 48
                                      i32.add
                                      i32.store offset=24
                                      local.get 1
                                      i32.load
                                      local.get 1
                                      i32.load offset=4
                                      i32.const 33149
                                      local.get 2
                                      i32.const 24
                                      i32.add
                                      call $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter9write_fmt.241
                                      local.set 0
                                      br 16 (;@1;)
                                    end
                                    local.get 1
                                    i32.load
                                    i32.const 41808
                                    i32.const 10
                                    local.get 1
                                    i32.load offset=4
                                    i32.load offset=12
                                    call_indirect (type 1)
                                    local.set 0
                                    br 15 (;@1;)
                                  end
                                  local.get 1
                                  i32.load
                                  i32.const 41818
                                  i32.const 12
                                  local.get 1
                                  i32.load offset=4
                                  i32.load offset=12
                                  call_indirect (type 1)
                                  local.set 0
                                  br 14 (;@1;)
                                end
                                local.get 1
                                i32.load
                                i32.const 41830
                                i32.const 14
                                local.get 1
                                i32.load offset=4
                                i32.load offset=12
                                call_indirect (type 1)
                                local.set 0
                                br 13 (;@1;)
                              end
                              local.get 1
                              i32.load
                              i32.const 41844
                              i32.const 8
                              local.get 1
                              i32.load offset=4
                              i32.load offset=12
                              call_indirect (type 1)
                              local.set 0
                              br 12 (;@1;)
                            end
                            local.get 1
                            i32.load
                            i32.const 41852
                            i32.const 3
                            local.get 1
                            i32.load offset=4
                            i32.load offset=12
                            call_indirect (type 1)
                            local.set 0
                            br 11 (;@1;)
                          end
                          local.get 1
                          i32.load
                          i32.const 41855
                          i32.const 4
                          local.get 1
                          i32.load offset=4
                          i32.load offset=12
                          call_indirect (type 1)
                          local.set 0
                          br 10 (;@1;)
                        end
                        local.get 1
                        i32.load
                        i32.const 41859
                        i32.const 12
                        local.get 1
                        i32.load offset=4
                        i32.load offset=12
                        call_indirect (type 1)
                        local.set 0
                        br 9 (;@1;)
                      end
                      local.get 1
                      i32.load
                      i32.const 41871
                      i32.const 15
                      local.get 1
                      i32.load offset=4
                      i32.load offset=12
                      call_indirect (type 1)
                      local.set 0
                      br 8 (;@1;)
                    end
                    local.get 1
                    i32.load
                    i32.const 41886
                    i32.const 13
                    local.get 1
                    i32.load offset=4
                    i32.load offset=12
                    call_indirect (type 1)
                    local.set 0
                    br 7 (;@1;)
                  end
                  local.get 1
                  i32.load
                  i32.const 41899
                  i32.const 14
                  local.get 1
                  i32.load offset=4
                  i32.load offset=12
                  call_indirect (type 1)
                  local.set 0
                  br 6 (;@1;)
                end
                local.get 1
                i32.load
                local.get 0
                i32.load offset=4
                local.get 0
                i32.load offset=8
                local.get 1
                i32.load offset=4
                i32.load offset=12
                call_indirect (type 1)
                local.set 0
                br 5 (;@1;)
              end
              block  ;; label = @6
                local.get 0
                f64.load offset=8
                i64.reinterpret_f64
                local.tee 4
                i64.const 9223372036854775807
                i64.and
                i64.const 9218868437227405311
                i64.gt_s
                br_if 0 (;@6;)
                local.get 2
                i32.const 45
                i32.store8 offset=24
                local.get 4
                i64.const 4503599627370495
                i64.and
                local.set 5
                local.get 2
                i32.const 24
                i32.add
                local.get 4
                i64.const 63
                i64.shr_u
                i32.wrap_i64
                i32.add
                local.set 3
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 4
                    i64.const 52
                    i64.shr_u
                    i64.const 2047
                    i64.and
                    local.tee 4
                    i64.const 0
                    i64.ne
                    br_if 0 (;@8;)
                    local.get 5
                    i64.eqz
                    br_if 4 (;@4;)
                    local.get 2
                    i32.const 48
                    i32.add
                    local.get 5
                    i64.const 1
                    i32.const 1
                    call $_RINvCsbk048fJ53Vo_4zmij10to_decimaldyEB2_
                    i64.const 0
                    local.get 2
                    i64.load8_u offset=61
                    i64.sub
                    local.get 2
                    i64.load8_u offset=60
                    i64.and
                    local.get 2
                    i64.load offset=48
                    i64.const 10
                    i64.mul
                    i64.add
                    local.set 4
                    local.get 2
                    i32.load offset=56
                    local.set 0
                    loop  ;; label = @9
                      block  ;; label = @10
                        local.get 4
                        i64.const 1000000000000000
                        i64.lt_s
                        br_if 0 (;@10;)
                        local.get 2
                        local.get 4
                        i64.const 0
                        i64.const 1844674407370955162
                        i64.const 0
                        call $__multi3
                        local.get 2
                        i64.load offset=8
                        local.tee 5
                        i64.const -10
                        i64.mul
                        local.get 4
                        i64.add
                        local.tee 4
                        i64.const 0
                        i64.ne
                        local.set 6
                        local.get 4
                        i32.wrap_i64
                        local.set 7
                        br 3 (;@7;)
                      end
                      local.get 0
                      i32.const -1
                      i32.add
                      local.set 0
                      local.get 4
                      i64.const 10
                      i64.mul
                      local.set 4
                      br 0 (;@9;)
                    end
                  end
                  local.get 2
                  i32.const 48
                  i32.add
                  local.get 5
                  i64.const 4503599627370496
                  i64.or
                  local.get 4
                  local.get 5
                  i64.const 0
                  i64.ne
                  call $_RINvCsbk048fJ53Vo_4zmij10to_decimaldyEB2_
                  local.get 2
                  i32.load8_u offset=61
                  local.set 6
                  local.get 2
                  i32.load8_u offset=60
                  local.set 7
                  local.get 2
                  i32.load offset=56
                  local.set 0
                  local.get 2
                  i64.load offset=48
                  local.set 5
                end
                local.get 2
                i32.const 48
                i32.add
                local.get 5
                i64.const 100000000
                i64.div_u
                local.tee 4
                i64.const 4294967295
                i64.and
                call $_RNvCsbk048fJ53Vo_4zmij7to_bcd8
                local.get 0
                local.get 5
                i64.const 999999999999999
                i64.gt_s
                local.tee 8
                i32.add
                i32.const 15
                i32.add
                local.set 0
                local.get 2
                i64.load offset=48
                local.set 9
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 5
                    local.get 4
                    i64.const 100000000
                    i64.mul
                    i64.sub
                    local.tee 4
                    i64.eqz
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 2
                    i32.load offset=56
                    local.set 10
                    i64.const 3472328296227680304
                    local.set 4
                    br 1 (;@7;)
                  end
                  local.get 2
                  i32.const 48
                  i32.add
                  local.get 4
                  call $_RNvCsbk048fJ53Vo_4zmij7to_bcd8
                  local.get 2
                  i32.load offset=56
                  i32.const 8
                  i32.add
                  local.set 10
                  local.get 2
                  i64.load offset=48
                  i64.const 3472328296227680304
                  i64.add
                  local.set 4
                end
                local.get 3
                local.get 8
                i32.add
                local.get 9
                i64.const 3472328296227680304
                i64.add
                i64.store align=1
                local.get 3
                i32.const 9
                i32.const 8
                local.get 8
                select
                i32.add
                local.get 4
                i64.store align=1
                local.get 3
                i32.const 17
                i32.const 16
                local.get 8
                select
                i32.add
                local.get 7
                i32.const 48
                i32.add
                i32.store8
                i32.const 17
                local.get 10
                local.get 6
                i32.const 1
                i32.and
                select
                local.get 8
                i32.add
                local.tee 6
                i32.const -1
                i32.add
                local.set 8
                block  ;; label = @7
                  local.get 0
                  i32.const 5
                  i32.add
                  i32.const 21
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 3
                  i32.load8_u offset=1
                  local.set 7
                  local.get 3
                  i32.const 46
                  i32.store8 offset=1
                  local.get 3
                  local.get 7
                  i32.store8
                  local.get 3
                  local.get 6
                  local.get 8
                  local.get 8
                  i32.const 1
                  i32.gt_u
                  select
                  i32.add
                  local.tee 3
                  local.get 0
                  i32.const 3
                  i32.shl
                  i32.const 50400
                  i32.add
                  i64.load
                  local.tee 4
                  i64.store32 align=1
                  local.get 3
                  i32.const 4
                  i32.add
                  local.get 4
                  i64.const 32
                  i64.shr_u
                  i64.store8
                  local.get 3
                  local.get 4
                  i64.const 48
                  i64.shr_u
                  i32.wrap_i64
                  i32.add
                  local.set 0
                  br 4 (;@3;)
                end
                local.get 3
                i32.const 1
                i32.add
                local.set 7
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 6
                    i32.const -2
                    i32.add
                    local.get 0
                    i32.le_s
                    br_if 0 (;@8;)
                    local.get 0
                    i32.const -1
                    i32.gt_s
                    br_if 1 (;@7;)
                    local.get 3
                    i32.const 1
                    local.get 0
                    i32.sub
                    local.tee 0
                    i32.add
                    local.set 6
                    block  ;; label = @9
                      local.get 8
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 6
                      local.get 7
                      local.get 8
                      memory.copy
                    end
                    block  ;; label = @9
                      local.get 0
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 3
                      i32.const 48
                      local.get 0
                      memory.fill
                    end
                    local.get 3
                    i32.const 46
                    i32.store8 offset=1
                    local.get 6
                    local.get 8
                    i32.add
                    local.set 0
                    br 5 (;@3;)
                  end
                  block  ;; label = @8
                    local.get 8
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 3
                    local.get 7
                    local.get 8
                    memory.copy
                  end
                  block  ;; label = @8
                    local.get 0
                    i32.const 3
                    i32.add
                    local.tee 6
                    local.get 8
                    i32.sub
                    local.tee 7
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 3
                    local.get 8
                    i32.add
                    i32.const 48
                    local.get 7
                    memory.fill
                  end
                  local.get 3
                  local.get 0
                  i32.add
                  i32.const 1
                  i32.add
                  i32.const 46
                  i32.store8
                  local.get 3
                  local.get 6
                  i32.add
                  local.set 0
                  br 4 (;@3;)
                end
                block  ;; label = @7
                  local.get 0
                  i32.const 1
                  i32.add
                  local.tee 0
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 3
                  local.get 7
                  local.get 0
                  memory.copy
                end
                local.get 3
                local.get 0
                i32.add
                i32.const 46
                i32.store8
                local.get 3
                local.get 6
                i32.add
                local.set 0
                br 3 (;@3;)
              end
              i32.const 62848
              i32.const 62851
              local.get 4
              i64.const -1
              i64.gt_s
              local.tee 0
              select
              i32.const 62855
              local.get 4
              i64.const 4503599627370495
              i64.and
              i64.eqz
              local.tee 8
              select
              local.set 3
              i32.const 3
              i32.const 4
              local.get 0
              select
              i32.const 3
              local.get 8
              select
              local.set 0
              br 3 (;@2;)
            end
            local.get 1
            i32.load
            i32.const 42012
            i32.const 4
            local.get 1
            i32.load offset=4
            i32.load offset=12
            call_indirect (type 1)
            local.set 0
            br 3 (;@1;)
          end
          local.get 3
          i32.const 48
          i32.store8 offset=2
          local.get 3
          i32.const 11824
          i32.store16 align=1
          local.get 3
          i32.const 3
          i32.add
          local.set 0
        end
        local.get 0
        local.get 2
        i32.const 24
        i32.add
        i32.sub
        local.set 0
        local.get 2
        i32.const 24
        i32.add
        local.set 3
      end
      local.get 2
      local.get 0
      i32.store offset=20
      local.get 2
      local.get 3
      i32.store offset=16
      local.get 2
      i32.const 2
      i32.store offset=52
      local.get 2
      local.get 2
      i32.const 16
      i32.add
      i32.store offset=48
      local.get 1
      i32.load
      local.get 1
      i32.load offset=4
      i32.const 35136
      local.get 2
      i32.const 48
      i32.add
      call $_RNvNtCsdmBIiMovVma_4core3fmt5write
      local.set 0
    end
    local.get 2
    i32.const 64
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_RINvXs5_NtCsgzaNOZ9sV4N_10serde_json5errorNtB6_5ErrorNtNtCs3wU1vCl2ErL_10serde_core2de5Error6customNtNtCsdmBIiMovVma_4core3fmt9ArgumentsEB8_ (type 0) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const 1
            i32.shr_u
            local.tee 1
            i32.eqz
            br_if 1 (;@3;)
            local.get 2
            i32.const 8
            i32.add
            i32.const 1
            local.get 1
            call $_RNvMNtCsjAdaHq5oevx_5alloc5allocNtB2_6Global18alloc_impl_runtime.328
            local.get 2
            i32.load offset=8
            local.tee 3
            i32.eqz
            br_if 3 (;@1;)
            local.get 2
            i32.const 0
            i32.store offset=28
            local.get 2
            local.get 3
            i32.store offset=24
            local.get 2
            local.get 1
            i32.store offset=20
            block  ;; label = @5
              local.get 1
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              local.get 0
              local.get 1
              memory.copy
            end
            local.get 2
            local.get 1
            i32.store offset=28
            br 2 (;@2;)
          end
          local.get 2
          i32.const 20
          i32.add
          local.get 0
          local.get 1
          call $_RNvNvNtCsjAdaHq5oevx_5alloc3fmt6format12format_inner
          br 1 (;@2;)
        end
        local.get 2
        i32.const 0
        i32.store offset=28
        local.get 2
        i64.const 4294967296
        i64.store offset=20 align=4
      end
      local.get 2
      i32.const 20
      i32.add
      call $_RNvNtCsgzaNOZ9sV4N_10serde_json5error10make_error
      local.set 1
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 1
      return
    end
    i32.const 1
    local.get 1
    call $_RNvNtCsjAdaHq5oevx_5alloc7raw_vec12handle_error
    unreachable)
  (func $_RINvCsbk048fJ53Vo_4zmij10to_decimaldyEB2_ (type 20) (param i32 i64 i64 i32)
    (local i32 i32 i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 2
    i32.wrap_i64
    local.tee 5
    i32.const -1075
    i32.add
    local.tee 6
    i32.const 315653
    i32.mul
    local.set 7
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        br_if 0 (;@2;)
        local.get 4
        i32.const 48
        i32.add
        local.get 7
        i32.const -131072
        i32.add
        i32.const 20
        i32.shr_s
        local.tee 3
        i32.const -1
        i32.xor
        i32.const 4
        i32.shl
        local.tee 7
        i32.const 57616
        i32.add
        i64.load
        local.tee 2
        local.get 7
        i32.const 57624
        i32.add
        i64.load
        local.get 1
        local.get 3
        i32.const 16559509
        i32.mul
        i32.const 16559509
        i32.add
        i32.const 16
        i32.shr_u
        local.get 6
        i32.add
        local.tee 7
        i32.const 7
        i32.add
        i64.extend_i32_u
        i64.shl
        call $_RNvCsbk048fJ53Vo_4zmij13umul192_hi128
        local.get 4
        i32.const 32
        i32.add
        local.get 4
        i64.load offset=48
        local.tee 8
        i64.const 58
        i64.shl
        local.get 4
        i64.load offset=56
        i64.const 6
        i64.shr_u
        i64.or
        local.tee 1
        i64.const 0
        i64.const 10
        i64.const 0
        call $__multi3
        local.get 4
        i32.const 16
        i32.add
        local.get 1
        local.get 2
        i32.const 0
        local.get 7
        i32.sub
        i64.extend_i32_u
        i64.shr_u
        local.tee 2
        i64.const 1
        i64.shr_u
        local.tee 9
        i64.sub
        i64.const 0
        i64.const 10
        i64.const 0
        call $__multi3
        local.get 2
        local.get 1
        i64.const -1
        i64.xor
        i64.gt_u
        local.tee 5
        local.get 1
        local.get 9
        i64.lt_u
        i32.or
        local.set 7
        local.get 8
        i64.const 6
        i64.shr_u
        local.get 5
        i64.extend_i32_u
        i64.add
        local.set 1
        local.get 4
        i64.load offset=40
        local.get 4
        i64.load offset=32
        local.tee 2
        i64.const 9223372036854775807
        i64.add
        local.get 2
        i64.lt_u
        i64.extend_i32_u
        i64.add
        i32.wrap_i64
        local.tee 5
        local.get 4
        i64.load offset=24
        local.get 4
        i64.load offset=16
        i64.const 0
        i64.ne
        i64.extend_i32_u
        i64.add
        i32.wrap_i64
        local.tee 6
        local.get 5
        local.get 6
        i32.gt_u
        select
        local.set 5
        br 1 (;@1;)
      end
      local.get 4
      i32.const 48
      i32.add
      local.get 7
      i32.const 20
      i32.shr_s
      local.tee 3
      i32.const -1
      i32.xor
      i32.const 4
      i32.shl
      local.tee 7
      i32.const 57616
      i32.add
      i64.load
      local.tee 8
      local.get 7
      i32.const 57624
      i32.add
      i64.load
      local.get 1
      local.get 5
      i32.load8_u offset=45760
      local.tee 7
      i64.extend_i32_u
      i64.shl
      call $_RNvCsbk048fJ53Vo_4zmij13umul192_hi128
      local.get 4
      local.get 4
      i64.load offset=48
      local.tee 9
      i64.const 58
      i64.shl
      local.get 4
      i64.load offset=56
      i64.const 6
      i64.shr_u
      i64.or
      local.tee 2
      i64.const 0
      i64.const 10
      i64.const 0
      call $__multi3
      local.get 8
      i32.const 7
      local.get 7
      i32.sub
      i64.extend_i32_u
      i64.shr_u
      local.get 1
      i64.const -1
      i64.xor
      i64.const 1
      i64.and
      i64.add
      local.tee 1
      local.get 2
      i64.const -1
      i64.xor
      i64.gt_u
      local.tee 5
      local.get 1
      local.get 2
      i64.gt_u
      i32.or
      local.set 7
      local.get 9
      i64.const 6
      i64.shr_u
      local.get 5
      i64.extend_i32_u
      i64.add
      local.set 1
      i32.const 2
      local.get 4
      i64.load offset=8
      local.get 4
      i64.load
      local.tee 8
      i64.const -9223372036854775802
      i64.add
      local.get 8
      i64.lt_u
      i64.extend_i32_u
      i64.add
      i32.wrap_i64
      local.get 2
      i64.const 4611686018427387904
      i64.eq
      select
      local.set 5
    end
    local.get 0
    local.get 5
    i32.store8 offset=12
    local.get 0
    local.get 3
    i32.store offset=8
    local.get 0
    local.get 1
    i64.store
    local.get 0
    local.get 7
    i32.const 1
    i32.xor
    i32.store8 offset=13
    local.get 4
    i32.const 64
    i32.add
    global.set $__stack_pointer)
  (func $_RNvCsbk048fJ53Vo_4zmij7to_bcd8 (type 21) (param i32 i64)
    local.get 0
    local.get 1
    i64.const 109951163
    i64.mul
    i64.const 40
    i64.shr_u
    i64.const 4294957296
    i64.mul
    local.get 1
    i64.add
    local.tee 1
    i64.const 5243
    i64.mul
    i64.const 19
    i64.shr_u
    i64.const 545460846719
    i64.and
    i64.const 65436
    i64.mul
    local.get 1
    i64.add
    local.tee 1
    i64.const 103
    i64.mul
    i64.const 10
    i64.shr_u
    i64.const 4222189076152335
    i64.and
    i64.const 246
    i64.mul
    local.get 1
    i64.add
    local.tee 1
    i64.const 56
    i64.shl
    local.get 1
    i64.const 65280
    i64.and
    i64.const 40
    i64.shl
    i64.or
    local.get 1
    i64.const 16711680
    i64.and
    i64.const 24
    i64.shl
    local.get 1
    i64.const 4278190080
    i64.and
    i64.const 8
    i64.shl
    i64.or
    i64.or
    local.get 1
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 1
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 1
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 1
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    local.tee 1
    i64.store
    local.get 0
    i32.const 70
    local.get 1
    i64.const 1
    i64.shl
    i64.const 1
    i64.or
    i64.clz
    i32.wrap_i64
    i32.sub
    i32.const 3
    i32.shr_u
    i32.store offset=8)
  (func $_RINvMsx_NtNtCsdmBIiMovVma_4core3str7patternNtB6_14TwoWaySearcher9next_backNtB6_9MatchOnlyECsgzaNOZ9sV4N_10serde_json (type 22) (param i32 i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 4
    i32.const -1
    i32.add
    local.set 7
    local.get 2
    local.get 5
    i32.sub
    local.set 8
    i32.const 0
    local.get 1
    i32.load offset=12
    local.tee 9
    i32.sub
    local.set 10
    local.get 9
    local.get 5
    i32.sub
    local.set 11
    local.get 4
    local.get 9
    i32.add
    local.set 12
    local.get 9
    local.get 5
    local.get 9
    local.get 5
    i32.gt_u
    select
    local.tee 13
    local.get 9
    i32.sub
    local.set 14
    local.get 1
    i32.load offset=32
    local.set 4
    local.get 1
    i32.load offset=16
    local.set 15
    local.get 1
    i64.load
    local.set 16
    local.get 1
    i32.load offset=24
    local.set 17
    loop  ;; label = @1
      local.get 10
      local.get 5
      local.get 4
      local.get 6
      select
      local.tee 18
      local.get 9
      local.get 18
      local.get 9
      i32.gt_u
      select
      i32.add
      local.set 19
      local.get 9
      local.get 4
      local.get 9
      local.get 4
      local.get 9
      i32.lt_u
      select
      local.get 6
      select
      local.tee 20
      i32.const -1
      i32.add
      local.get 5
      i32.lt_u
      local.set 21
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            loop  ;; label = @5
              block  ;; label = @6
                local.get 17
                local.get 5
                i32.sub
                local.tee 22
                local.get 3
                i32.lt_u
                br_if 0 (;@6;)
                i32.const 0
                local.set 4
                local.get 1
                i32.const 0
                i32.store offset=24
                br 4 (;@2;)
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 16
                  local.get 2
                  local.get 22
                  i32.add
                  i64.load8_u
                  i64.shr_u
                  i64.const 1
                  i64.and
                  i64.eqz
                  br_if 0 (;@7;)
                  local.get 8
                  local.get 17
                  i32.add
                  local.set 23
                  local.get 20
                  local.set 4
                  br 1 (;@6;)
                end
                local.get 1
                local.get 22
                i32.store offset=24
                local.get 22
                local.set 17
                local.get 6
                br_if 1 (;@5;)
                local.get 5
                local.set 4
                local.get 22
                local.set 17
                br 3 (;@3;)
              end
              block  ;; label = @6
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 4
                    br_if 0 (;@8;)
                    local.get 11
                    local.get 17
                    i32.add
                    local.set 24
                    local.get 19
                    local.set 4
                    local.get 14
                    local.set 18
                    local.get 12
                    local.set 25
                    loop  ;; label = @9
                      block  ;; label = @10
                        local.get 4
                        br_if 0 (;@10;)
                        local.get 1
                        local.get 22
                        i32.store offset=24
                        block  ;; label = @11
                          local.get 6
                          br_if 0 (;@11;)
                          local.get 1
                          local.get 5
                          i32.store offset=32
                        end
                        local.get 0
                        local.get 17
                        i32.store offset=8
                        local.get 0
                        local.get 22
                        i32.store offset=4
                        i32.const 1
                        local.set 4
                        br 8 (;@2;)
                      end
                      local.get 18
                      i32.eqz
                      br_if 5 (;@4;)
                      local.get 4
                      i32.const -1
                      i32.add
                      local.set 4
                      local.get 18
                      i32.const -1
                      i32.add
                      local.set 18
                      local.get 2
                      local.get 24
                      i32.add
                      local.set 23
                      local.get 25
                      i32.load8_u
                      local.set 26
                      local.get 24
                      i32.const 1
                      i32.add
                      local.set 24
                      local.get 25
                      i32.const 1
                      i32.add
                      local.set 25
                      local.get 26
                      local.get 23
                      i32.load8_u
                      i32.eq
                      br_if 0 (;@9;)
                    end
                    local.get 1
                    local.get 17
                    local.get 15
                    i32.sub
                    local.tee 17
                    i32.store offset=24
                    local.get 6
                    br_if 3 (;@5;)
                    local.get 15
                    local.set 4
                    br 5 (;@3;)
                  end
                  local.get 4
                  i32.const -1
                  i32.add
                  local.set 18
                  block  ;; label = @8
                    local.get 21
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 7
                    local.get 4
                    i32.add
                    local.set 24
                    local.get 23
                    local.get 4
                    i32.add
                    local.set 25
                    local.get 18
                    local.set 4
                    local.get 24
                    i32.load8_u
                    local.get 25
                    i32.const -1
                    i32.add
                    i32.load8_u
                    i32.ne
                    br_if 2 (;@6;)
                    br 1 (;@7;)
                  end
                end
                local.get 18
                local.get 5
                i32.const 41996
                call $_RNvNtCsdmBIiMovVma_4core9panicking18panic_bounds_check
                unreachable
              end
              local.get 1
              local.get 18
              local.get 17
              i32.add
              local.get 9
              i32.sub
              local.tee 17
              i32.store offset=24
              local.get 6
              br_if 0 (;@5;)
            end
            local.get 5
            local.set 4
            br 1 (;@3;)
          end
          local.get 13
          local.get 5
          i32.const 41980
          call $_RNvNtCsdmBIiMovVma_4core9panicking18panic_bounds_check
          unreachable
        end
        local.get 1
        local.get 4
        i32.store offset=32
        br 1 (;@1;)
      end
    end
    local.get 0
    local.get 4
    i32.store)
  (func $_RNvXsv_NtCsjAdaHq5oevx_5alloc6stringNtB5_6StringINtNtNtCsdmBIiMovVma_4core3ops5index5IndexINtNtBP_5range9RangeFromjEE5indexCsgzaNOZ9sV4N_10serde_json (type 16) (param i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          local.get 3
          i32.gt_u
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          i32.ne
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 1
        local.get 3
        i32.add
        i32.load8_s
        i32.const -65
        i32.gt_s
        br_if 1 (;@1;)
      end
      local.get 1
      local.get 2
      local.get 3
      local.get 2
      local.get 4
      call $_RNvNtCsdmBIiMovVma_4core3str16slice_error_fail
      unreachable
    end
    local.get 0
    local.get 2
    local.get 3
    i32.sub
    i32.store offset=4
    local.get 0
    local.get 1
    local.get 3
    i32.add
    i32.store)
  (func $_RNvXsv_NtCsjAdaHq5oevx_5alloc6stringNtB5_6StringINtNtNtCsdmBIiMovVma_4core3ops5index5IndexINtNtBP_5range5RangejEE5indexCsgzaNOZ9sV4N_10serde_json (type 23) (param i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 4
      local.get 3
      i32.lt_u
      br_if 0 (;@1;)
      local.get 4
      local.get 2
      i32.gt_u
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 3
        local.get 2
        i32.eq
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          local.get 3
          i32.add
          i32.load8_s
          i32.const -65
          i32.le_s
          br_if 2 (;@1;)
        end
        local.get 4
        local.get 2
        i32.eq
        br_if 0 (;@2;)
        local.get 1
        local.get 4
        i32.add
        i32.load8_s
        i32.const -65
        i32.le_s
        br_if 1 (;@1;)
      end
      local.get 0
      local.get 4
      local.get 3
      i32.sub
      i32.store offset=4
      local.get 0
      local.get 1
      local.get 3
      i32.add
      i32.store
      return
    end
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    call $_RNvNtCsdmBIiMovVma_4core3str16slice_error_fail
    unreachable)
  (func $_RNvXsu_NtCsdmBIiMovVma_4core3numjNtNtNtB7_3str6traits7FromStr8from_str (type 5) (param i32 i32 i32)
    (local i32 i32 i64)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  br_table 0 (;@7;) 1 (;@6;) 2 (;@5;)
                end
                local.get 0
                i32.const 0
                i32.store8 offset=1
                i32.const 1
                local.set 2
                br 5 (;@1;)
              end
              local.get 1
              i32.load8_u
              local.tee 3
              i32.const -43
              i32.add
              br_table 2 (;@3;) 1 (;@4;) 2 (;@3;) 1 (;@4;)
            end
            local.get 1
            i32.load8_u
            local.set 3
          end
          local.get 1
          local.get 3
          i32.const 255
          i32.and
          i32.const 43
          i32.eq
          local.tee 3
          i32.add
          local.set 1
          block  ;; label = @4
            local.get 2
            local.get 3
            i32.sub
            local.tee 2
            i32.const 9
            i32.lt_u
            br_if 0 (;@4;)
            i32.const 0
            local.set 3
            block  ;; label = @5
              loop  ;; label = @6
                local.get 2
                i32.eqz
                br_if 4 (;@2;)
                local.get 1
                i32.load8_u
                local.set 4
                local.get 3
                i64.extend_i32_u
                i64.const 10
                i64.mul
                local.tee 5
                i64.const 32
                i64.shr_u
                i32.wrap_i64
                br_if 1 (;@5;)
                local.get 4
                i32.const -48
                i32.add
                local.tee 4
                i32.const 10
                i32.ge_u
                br_if 3 (;@3;)
                local.get 1
                i32.const 1
                i32.add
                local.set 1
                local.get 2
                i32.const -1
                i32.add
                local.set 2
                local.get 4
                local.get 5
                i32.wrap_i64
                i32.add
                local.tee 3
                local.get 4
                i32.ge_u
                br_if 0 (;@6;)
              end
              local.get 0
              i32.const 2
              i32.store8 offset=1
              i32.const 1
              local.set 2
              br 4 (;@1;)
            end
            local.get 4
            i32.const -48
            i32.add
            i32.const 255
            i32.and
            i32.const 10
            i32.ge_u
            br_if 1 (;@3;)
            local.get 0
            i32.const 2
            i32.store8 offset=1
            i32.const 1
            local.set 2
            br 3 (;@1;)
          end
          i32.const 0
          local.set 3
          loop  ;; label = @4
            local.get 2
            i32.eqz
            br_if 2 (;@2;)
            local.get 1
            i32.load8_u
            i32.const -48
            i32.add
            local.tee 4
            i32.const 9
            i32.gt_u
            br_if 1 (;@3;)
            local.get 1
            i32.const 1
            i32.add
            local.set 1
            local.get 2
            i32.const -1
            i32.add
            local.set 2
            local.get 4
            local.get 3
            i32.const 10
            i32.mul
            i32.add
            local.set 3
            br 0 (;@4;)
          end
        end
        i32.const 1
        local.set 2
        local.get 0
        i32.const 1
        i32.store8 offset=1
        br 1 (;@1;)
      end
      local.get 0
      local.get 3
      i32.store offset=4
      i32.const 0
      local.set 2
    end
    local.get 0
    local.get 2
    i32.store8)
  (func $_RINvNtCsgzaNOZ9sV4N_10serde_json4read5errorNtB2_9SliceReadINtB2_9ReferenceeEEB4_ (type 5) (param i32 i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 8
    i32.add
    local.get 1
    call $_RNvXs1_NtCsgzaNOZ9sV4N_10serde_json4readNtB5_9SliceReadNtB5_4Read8position
    local.get 3
    i64.load offset=8
    local.set 4
    call $_RNvNtCsjAdaHq5oevx_5alloc5boxed14box_new_uninit.333
    local.tee 1
    local.get 4
    i64.store offset=12 align=4
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    i32.const 2
    i32.store
    local.get 1
    local.get 2
    i32.load offset=8
    i32.store offset=8
    local.get 1
    local.get 2
    i64.load align=4
    i64.store align=4
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_RNvMs1_NtCsjAdaHq5oevx_5alloc3vecINtB5_3VechE17extend_from_sliceCsgzaNOZ9sV4N_10serde_json (type 5) (param i32 i32 i32)
    (local i32)
    local.get 0
    local.get 2
    call $_RNvMs_NtCsjAdaHq5oevx_5alloc3vecINtB4_3VechE7reserveCsgzaNOZ9sV4N_10serde_json
    local.get 0
    i32.load offset=8
    local.set 3
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.get 3
      i32.add
      local.get 1
      local.get 2
      memory.copy
    end
    local.get 0
    local.get 3
    local.get 2
    i32.add
    i32.store offset=8)
  (func $_RINvNtCsgzaNOZ9sV4N_10serde_json4read5errorNtB2_9SliceReaduEB4_ (type 0) (param i32 i32) (result i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    local.get 0
    call $_RNvXs1_NtCsgzaNOZ9sV4N_10serde_json4readNtB5_9SliceReadNtB5_4Read8position
    local.get 2
    i64.load offset=8
    local.set 3
    call $_RNvNtCsjAdaHq5oevx_5alloc5boxed14box_new_uninit.333
    local.tee 0
    local.get 3
    i64.store offset=12 align=4
    local.get 0
    local.get 1
    i32.load offset=8
    i32.store offset=8
    local.get 0
    local.get 1
    i64.load align=4
    i64.store align=4
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_RNvMsF_NtCsjAdaHq5oevx_5alloc3vecINtB5_3VechE4pushCsgzaNOZ9sV4N_10serde_json (type 6) (param i32 i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=8
      local.tee 2
      local.get 0
      i32.load
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      call $_RNvMs4_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_
    end
    local.get 0
    local.get 2
    i32.const 1
    i32.add
    i32.store offset=8
    local.get 0
    i32.load offset=4
    local.get 2
    i32.add
    local.get 1
    i32.store8)
  (func $_RNvXs1_NtCsgzaNOZ9sV4N_10serde_json4readNtB5_9SliceReadNtB5_4Read17decode_hex_escape (type 6) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    local.get 1
    i32.load offset=8
    local.tee 3
    local.get 1
    i32.load
    local.get 1
    i32.load offset=4
    local.tee 4
    i32.const 45732
    call $_RNvXs5_NtNtCsdmBIiMovVma_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgzaNOZ9sV4N_10serde_json
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=12
        i32.const 3
        i32.gt_u
        br_if 0 (;@2;)
        local.get 1
        local.get 4
        i32.store offset=8
        local.get 2
        i32.const 4
        i32.store offset=20
        local.get 0
        local.get 1
        local.get 2
        i32.const 20
        i32.add
        call $_RINvNtCsgzaNOZ9sV4N_10serde_json4read5errorNtB2_9SliceReadtEB4_
        br 1 (;@1;)
      end
      local.get 2
      i32.load offset=8
      local.set 4
      local.get 1
      local.get 3
      i32.const 4
      i32.add
      i32.store offset=8
      block  ;; label = @2
        local.get 4
        i32.load8_u offset=1
        i32.const 1
        i32.shl
        i32.load16_u offset=44584
        local.get 4
        i32.load8_u
        i32.const 1
        i32.shl
        i32.load16_u offset=45096
        i32.or
        i32.const 16
        i32.shl
        i32.const 16
        i32.shr_s
        i32.const 8
        i32.shl
        local.get 4
        i32.load8_u offset=2
        i32.const 1
        i32.shl
        i32.load16_s offset=45096
        i32.or
        local.get 4
        i32.load8_u offset=3
        i32.const 1
        i32.shl
        i32.load16_s offset=44584
        i32.or
        local.tee 4
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        local.get 2
        i32.const 12
        i32.store offset=20
        local.get 0
        local.get 1
        local.get 2
        i32.const 20
        i32.add
        call $_RINvNtCsgzaNOZ9sV4N_10serde_json4read5errorNtB2_9SliceReadtEB4_
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      i32.store16
      local.get 0
      local.get 4
      i32.store16 offset=2
    end
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_RNvXs5_NtNtCsdmBIiMovVma_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgzaNOZ9sV4N_10serde_json (type 16) (param i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 3
      local.get 1
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 3
      local.get 1
      i32.sub
      i32.store offset=4
      local.get 0
      local.get 2
      local.get 1
      i32.add
      i32.store
      return
    end
    local.get 1
    local.get 3
    local.get 3
    local.get 4
    call $_RNvNtNtCsdmBIiMovVma_4core5slice5index16slice_index_fail
    unreachable)
  (func $_RINvNtCsgzaNOZ9sV4N_10serde_json4read5errorNtB2_9SliceReadtEB4_ (type 5) (param i32 i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 8
    i32.add
    local.get 1
    call $_RNvXs1_NtCsgzaNOZ9sV4N_10serde_json4readNtB5_9SliceReadNtB5_4Read8position
    local.get 3
    i64.load offset=8
    local.set 4
    call $_RNvNtCsjAdaHq5oevx_5alloc5boxed14box_new_uninit.333
    local.tee 1
    local.get 4
    i64.store offset=12 align=4
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    i32.const 1
    i32.store16
    local.get 1
    local.get 2
    i32.load offset=8
    i32.store offset=8
    local.get 1
    local.get 2
    i64.load align=4
    i64.store align=4
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_RINvNtCsgzaNOZ9sV4N_10serde_json4read11peek_or_eofNtB2_9SliceReadEB4_ (type 6) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load offset=8
        local.tee 3
        local.get 1
        i32.load offset=4
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.store8
        local.get 0
        local.get 1
        i32.load
        local.get 3
        i32.add
        i32.load8_u
        i32.store8 offset=1
        br 1 (;@1;)
      end
      local.get 2
      i32.const 4
      i32.store offset=4
      local.get 0
      local.get 1
      local.get 2
      i32.const 4
      i32.add
      call $_RINvNtCsgzaNOZ9sV4N_10serde_json4read5errorNtB2_9SliceReadhEB4_
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_RINvNtCsgzaNOZ9sV4N_10serde_json4read5errorNtB2_9SliceReadhEB4_ (type 5) (param i32 i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 8
    i32.add
    local.get 1
    call $_RNvXs1_NtCsgzaNOZ9sV4N_10serde_json4readNtB5_9SliceReadNtB5_4Read8position
    local.get 3
    i64.load offset=8
    local.set 4
    call $_RNvNtCsjAdaHq5oevx_5alloc5boxed14box_new_uninit.333
    local.tee 1
    local.get 4
    i64.store offset=12 align=4
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    i32.const 1
    i32.store8
    local.get 1
    local.get 2
    i32.load offset=8
    i32.store offset=8
    local.get 1
    local.get 2
    i64.load align=4
    i64.store align=4
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_RNvNtCsgzaNOZ9sV4N_10serde_json4read19push_wtf8_codepoint (type 6) (param i32 i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.const 128
      i32.lt_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 4
      call $_RNvMs_NtCsjAdaHq5oevx_5alloc3vecINtB4_3VechE7reserveCsgzaNOZ9sV4N_10serde_json
      local.get 1
      i32.load offset=4
      local.get 1
      i32.load offset=8
      local.tee 2
      i32.add
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 2048
          i32.ge_u
          br_if 0 (;@3;)
          local.get 3
          local.get 0
          i32.const 6
          i32.shr_u
          i32.const 192
          i32.or
          i32.store8
          i32.const 2
          local.set 4
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 0
          i32.const 65535
          i32.gt_u
          br_if 0 (;@3;)
          local.get 3
          local.get 0
          i32.const 12
          i32.shr_u
          i32.const 224
          i32.or
          i32.store8
          local.get 3
          local.get 0
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=1
          i32.const 3
          local.set 4
          br 1 (;@2;)
        end
        local.get 3
        local.get 0
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        i32.store8
        local.get 3
        local.get 0
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=2
        local.get 3
        local.get 0
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=1
        i32.const 4
        local.set 4
      end
      local.get 1
      local.get 2
      local.get 4
      i32.add
      i32.store offset=8
      local.get 3
      local.get 4
      i32.add
      i32.const -1
      i32.add
      local.get 0
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8
      return
    end
    local.get 1
    local.get 0
    call $_RNvMsF_NtCsjAdaHq5oevx_5alloc3vecINtB5_3VechE4pushCsgzaNOZ9sV4N_10serde_json)
  (func $_RNvMs_NtCsgzaNOZ9sV4N_10serde_json4readNtB4_9SliceRead19skip_to_escape_slow (type 8) (param i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.load offset=8
    local.tee 1
    local.get 0
    i32.load offset=4
    local.tee 2
    local.get 1
    local.get 2
    i32.gt_u
    select
    local.set 3
    local.get 0
    i32.load
    local.set 4
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.eq
        br_if 1 (;@1;)
        local.get 4
        local.get 1
        i32.add
        i32.load8_u
        local.tee 2
        i32.const 34
        i32.eq
        br_if 1 (;@1;)
        local.get 2
        i32.const 92
        i32.eq
        br_if 1 (;@1;)
        local.get 2
        i32.const 32
        i32.lt_u
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        i32.const 1
        i32.add
        local.tee 1
        i32.store offset=8
        br 0 (;@2;)
      end
    end)
  (func $_RNvYINvNtCsgzaNOZ9sV4N_10serde_json4read6as_strNtB5_9SliceReadEINtNtNtCsdmBIiMovVma_4core3ops8function6FnOnceTRBJ_RShEE9call_onceB7_ (type 10) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    i32.const 0
    local.set 5
    block  ;; label = @1
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.get 3
      i32.const -7
      i32.add
      local.tee 6
      local.get 6
      local.get 3
      i32.gt_u
      select
      local.set 7
      local.get 2
      i32.const 3
      i32.add
      i32.const -4
      i32.and
      local.get 2
      i32.sub
      local.set 8
      i32.const 0
      local.set 6
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  local.get 6
                  i32.add
                  i32.load8_u
                  local.tee 5
                  i32.const 24
                  i32.shl
                  i32.const 24
                  i32.shr_s
                  local.tee 9
                  i32.const 0
                  i32.lt_s
                  br_if 0 (;@7;)
                  local.get 8
                  local.get 6
                  i32.sub
                  i32.const 3
                  i32.and
                  br_if 1 (;@6;)
                  local.get 6
                  local.get 7
                  i32.ge_u
                  br_if 2 (;@5;)
                  loop  ;; label = @8
                    local.get 2
                    local.get 6
                    i32.add
                    local.tee 5
                    i32.const 4
                    i32.add
                    i32.load
                    local.get 5
                    i32.load
                    i32.or
                    i32.const -2139062144
                    i32.and
                    br_if 3 (;@5;)
                    local.get 6
                    i32.const 8
                    i32.add
                    local.tee 6
                    local.get 7
                    i32.lt_u
                    br_if 0 (;@8;)
                    br 3 (;@5;)
                  end
                end
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 5
                              i32.load8_u offset=39505
                              i32.const -2
                              i32.add
                              br_table 0 (;@13;) 1 (;@12;) 2 (;@11;) 5 (;@8;)
                            end
                            local.get 6
                            i32.const 1
                            i32.add
                            local.tee 5
                            local.get 3
                            i32.ge_u
                            br_if 4 (;@8;)
                            local.get 2
                            local.get 5
                            i32.add
                            i32.load8_s
                            i32.const -65
                            i32.gt_s
                            br_if 4 (;@8;)
                            br 5 (;@7;)
                          end
                          local.get 6
                          i32.const 1
                          i32.add
                          local.tee 10
                          local.get 3
                          i32.ge_u
                          br_if 3 (;@8;)
                          local.get 2
                          local.get 10
                          i32.add
                          i32.load8_s
                          local.set 10
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 5
                              i32.const 224
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 5
                              i32.const 237
                              i32.eq
                              br_if 1 (;@12;)
                              local.get 9
                              i32.const 31
                              i32.add
                              i32.const 255
                              i32.and
                              i32.const 12
                              i32.lt_u
                              br_if 3 (;@10;)
                              local.get 9
                              i32.const -2
                              i32.and
                              i32.const -18
                              i32.ne
                              br_if 5 (;@8;)
                              local.get 10
                              i32.const -64
                              i32.lt_s
                              br_if 4 (;@9;)
                              br 5 (;@8;)
                            end
                            local.get 10
                            i32.const -32
                            i32.and
                            i32.const -96
                            i32.eq
                            br_if 3 (;@9;)
                            br 4 (;@8;)
                          end
                          local.get 10
                          i32.const -97
                          i32.gt_s
                          br_if 3 (;@8;)
                          br 2 (;@9;)
                        end
                        local.get 6
                        i32.const 1
                        i32.add
                        local.tee 10
                        local.get 3
                        i32.ge_u
                        br_if 2 (;@8;)
                        local.get 2
                        local.get 10
                        i32.add
                        i32.load8_s
                        local.set 10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 5
                                i32.const -240
                                i32.add
                                br_table 1 (;@13;) 0 (;@14;) 0 (;@14;) 0 (;@14;) 2 (;@12;) 0 (;@14;)
                              end
                              local.get 9
                              i32.const 15
                              i32.add
                              i32.const 255
                              i32.and
                              i32.const 2
                              i32.gt_u
                              br_if 5 (;@8;)
                              local.get 10
                              i32.const -64
                              i32.lt_s
                              br_if 2 (;@11;)
                              br 5 (;@8;)
                            end
                            local.get 10
                            i32.const 112
                            i32.add
                            i32.const 255
                            i32.and
                            i32.const 48
                            i32.lt_u
                            br_if 1 (;@11;)
                            br 4 (;@8;)
                          end
                          local.get 10
                          i32.const -113
                          i32.gt_s
                          br_if 3 (;@8;)
                        end
                        local.get 6
                        i32.const 2
                        i32.add
                        local.tee 5
                        local.get 3
                        i32.ge_u
                        br_if 2 (;@8;)
                        local.get 2
                        local.get 5
                        i32.add
                        i32.load8_s
                        i32.const -65
                        i32.gt_s
                        br_if 2 (;@8;)
                        local.get 6
                        i32.const 3
                        i32.add
                        local.tee 5
                        local.get 3
                        i32.ge_u
                        br_if 2 (;@8;)
                        local.get 2
                        local.get 5
                        i32.add
                        i32.load8_s
                        i32.const -64
                        i32.lt_s
                        br_if 3 (;@7;)
                        br 2 (;@8;)
                      end
                      local.get 10
                      i32.const -64
                      i32.ge_s
                      br_if 1 (;@8;)
                    end
                    local.get 6
                    i32.const 2
                    i32.add
                    local.tee 5
                    local.get 3
                    i32.ge_u
                    br_if 0 (;@8;)
                    local.get 2
                    local.get 5
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.le_s
                    br_if 1 (;@7;)
                  end
                  local.get 4
                  i32.const 8
                  i32.add
                  local.get 1
                  call $_RNvXs1_NtCsgzaNOZ9sV4N_10serde_json4readNtB5_9SliceReadNtB5_4Read8position
                  local.get 4
                  i32.load offset=12
                  local.set 7
                  local.get 4
                  i32.load offset=8
                  local.set 2
                  call $_RNvNtCsjAdaHq5oevx_5alloc5boxed14box_new_uninit.333
                  local.tee 5
                  local.get 2
                  i32.store offset=12
                  local.get 5
                  i32.const 15
                  i32.store
                  i32.const 0
                  local.set 2
                  local.get 5
                  i32.const 0
                  local.get 7
                  local.get 6
                  local.get 3
                  i32.sub
                  i32.add
                  local.tee 6
                  local.get 6
                  local.get 7
                  i32.gt_u
                  select
                  i32.store offset=16
                  br 6 (;@1;)
                end
                local.get 5
                i32.const 1
                i32.add
                local.set 6
                br 2 (;@4;)
              end
              local.get 6
              i32.const 1
              i32.add
              local.set 6
              br 1 (;@4;)
            end
            local.get 6
            local.get 3
            i32.ge_u
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 2
              local.get 6
              i32.add
              i32.load8_s
              i32.const 0
              i32.lt_s
              br_if 1 (;@4;)
              local.get 3
              local.get 6
              i32.const 1
              i32.add
              local.tee 6
              i32.ne
              br_if 0 (;@5;)
              br 3 (;@2;)
            end
          end
          local.get 6
          local.get 3
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 3
      local.set 5
    end
    local.get 0
    local.get 2
    i32.store
    local.get 0
    local.get 5
    i32.store offset=4
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_RNvCsbk048fJ53Vo_4zmij13umul192_hi128 (type 24) (param i32 i64 i64 i64)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    local.get 3
    i64.const 0
    local.get 1
    i64.const 0
    call $__multi3
    local.get 4
    i32.const 16
    i32.add
    local.get 3
    i64.const 0
    local.get 2
    i64.const 0
    call $__multi3
    local.get 0
    local.get 4
    i64.load offset=24
    local.tee 3
    local.get 4
    i64.load
    i64.add
    local.tee 1
    i64.store offset=8
    local.get 0
    local.get 1
    local.get 3
    i64.lt_u
    i64.extend_i32_u
    local.get 4
    i64.load offset=8
    i64.add
    i64.store
    local.get 4
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $memcmp (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    i32.const 0
    local.set 3
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        loop  ;; label = @3
          local.get 0
          i32.load8_u
          local.tee 4
          local.get 1
          i32.load8_u
          local.tee 5
          i32.ne
          br_if 1 (;@2;)
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 2
          i32.const -1
          i32.add
          local.tee 2
          i32.eqz
          br_if 2 (;@1;)
          br 0 (;@3;)
        end
      end
      local.get 4
      local.get 5
      i32.sub
      local.set 3
    end
    local.get 3)
  (func $__multi3 (type 25) (param i32 i64 i64 i64 i64)
    (local i64 i64 i64 i64 i64 i64)
    local.get 0
    local.get 3
    i64.const 4294967295
    i64.and
    local.tee 5
    local.get 1
    i64.const 4294967295
    i64.and
    local.tee 6
    i64.mul
    local.tee 7
    local.get 3
    i64.const 32
    i64.shr_u
    local.tee 8
    local.get 6
    i64.mul
    local.tee 6
    local.get 5
    local.get 1
    i64.const 32
    i64.shr_u
    local.tee 9
    i64.mul
    i64.add
    local.tee 5
    i64.const 32
    i64.shl
    i64.add
    local.tee 10
    i64.store
    local.get 0
    local.get 8
    local.get 9
    i64.mul
    local.get 5
    local.get 6
    i64.lt_u
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 5
    i64.const 32
    i64.shr_u
    i64.or
    i64.add
    local.get 10
    local.get 7
    i64.lt_u
    i64.extend_i32_u
    i64.add
    local.get 4
    local.get 1
    i64.mul
    local.get 3
    local.get 2
    i64.mul
    i64.add
    i64.add
    i64.store offset=8)
  (func $__fixdfti (type 26) (param i32 f64)
    (local i32 i64 i64 i64 i64 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i64.const 0
    local.set 3
    i64.const 0
    local.set 4
    block  ;; label = @1
      local.get 1
      i64.reinterpret_f64
      local.tee 5
      i64.const 9223372036854775807
      i64.and
      local.tee 6
      i64.const 4607182418800017408
      i64.lt_u
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 6
        i64.const 5179139571476070400
        i64.lt_u
        br_if 0 (;@2;)
        i64.const 0
        local.set 3
        i64.const 0
        local.set 4
        local.get 6
        i64.const 9218868437227405313
        i64.ge_u
        br_if 1 (;@1;)
        local.get 5
        i64.const 63
        i64.shr_s
        local.tee 3
        i64.const 9223372036854775807
        i64.xor
        local.set 4
        local.get 3
        i64.const -1
        i64.xor
        local.set 3
        br 1 (;@1;)
      end
      local.get 2
      i64.const 0
      local.get 6
      i64.const 11
      i64.shl
      i64.const -9223372036854775808
      i64.or
      i32.const 126
      local.get 6
      i64.const 52
      i64.shr_u
      i32.wrap_i64
      i32.sub
      i32.const 127
      i32.and
      call $__lshrti3
      i64.const 0
      local.get 2
      i64.load
      local.tee 4
      i64.sub
      local.get 4
      local.get 5
      i64.const 0
      i64.lt_s
      local.tee 7
      select
      local.set 3
      i64.const 0
      local.get 2
      i64.load offset=8
      local.tee 6
      local.get 4
      i64.const 0
      i64.ne
      i64.extend_i32_u
      i64.add
      i64.sub
      local.get 6
      local.get 7
      select
      local.set 4
    end
    local.get 0
    local.get 3
    i64.store
    local.get 0
    local.get 4
    i64.store offset=8
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $__lshrti3 (type 20) (param i32 i64 i64 i32)
    (local i64)
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 64
        i32.and
        br_if 0 (;@2;)
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.const 0
        local.get 3
        i32.sub
        i64.extend_i32_u
        i64.shl
        local.get 1
        local.get 3
        i64.extend_i32_u
        local.tee 4
        i64.shr_u
        i64.or
        local.set 1
        local.get 2
        local.get 4
        i64.shr_u
        local.set 2
        br 1 (;@1;)
      end
      local.get 2
      local.get 3
      i64.extend_i32_u
      i64.shr_u
      local.set 1
      i64.const 0
      local.set 2
    end
    local.get 0
    local.get 1
    i64.store
    local.get 0
    local.get 2
    i64.store offset=8)
  (func $__ashlti3 (type 20) (param i32 i64 i64 i32)
    (local i64)
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 64
        i32.and
        br_if 0 (;@2;)
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        local.get 3
        i64.extend_i32_u
        local.tee 4
        i64.shl
        local.get 1
        i32.const 0
        local.get 3
        i32.sub
        i64.extend_i32_u
        i64.shr_u
        i64.or
        local.set 2
        local.get 1
        local.get 4
        i64.shl
        local.set 1
        br 1 (;@1;)
      end
      local.get 1
      local.get 3
      i64.extend_i32_u
      i64.shl
      local.set 2
      i64.const 0
      local.set 1
    end
    local.get 0
    local.get 1
    i64.store
    local.get 0
    local.get 2
    i64.store offset=8)
  (func $__floattidf (type 27) (param i64 i64) (result f64)
    (local i32 i32 i64 i64 i64 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i64.const 0
    local.get 0
    i64.sub
    local.get 0
    local.get 1
    i64.const 0
    i64.lt_s
    local.tee 3
    select
    local.tee 4
    i64.const 0
    local.get 1
    local.get 0
    i64.const 0
    i64.ne
    i64.extend_i32_u
    i64.add
    i64.sub
    local.get 1
    local.get 3
    select
    local.tee 5
    local.get 5
    i64.clz
    local.get 4
    i64.clz
    i64.const 64
    i64.add
    local.get 5
    i64.const 0
    i64.ne
    select
    local.tee 6
    i32.wrap_i64
    i32.const 127
    i32.and
    call $__ashlti3
    local.get 2
    i64.load offset=8
    local.set 5
    local.get 2
    i64.load
    local.set 4
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
    i64.const -9223372036854775808
    i64.and
    local.get 5
    i64.const 11
    i64.shr_u
    local.tee 7
    i64.or
    i64.const 0
    i64.const 5174635971848699904
    local.get 6
    i64.const 52
    i64.shl
    i64.sub
    local.get 0
    local.get 1
    i64.or
    i64.eqz
    select
    i64.add
    local.get 4
    i64.const 11
    i64.shr_u
    local.get 5
    i64.const 53
    i64.shl
    local.tee 1
    i64.or
    local.get 4
    i64.const 4294967295
    i64.and
    i64.or
    local.get 1
    i64.const 63
    i64.shr_u
    local.get 7
    i64.const -1
    i64.xor
    i64.and
    i64.sub
    i64.const 63
    i64.shr_u
    i64.add
    f64.reinterpret_i64)
  (table (;0;) 39 39 funcref)
  (memory (;0;) 2 2)
  (global $__stack_pointer (mut i32) (i32.const 32768))
  (export "memory" (memory 0))
  (export "command_bench" (func $command_bench))
  (export "command_clock" (func $command_clock))
  (export "command_on_tick" (func $command_on_tick))
  (export "command_tick_report" (func $command_tick_report))
  (export "command_tick_start" (func $command_tick_start))
  (export "_critical_section_1_0_acquire" (func $_critical_section_1_0_acquire))
  (export "init_allocator" (func $init_allocator))
  (export "_critical_section_1_0_release" (func $_critical_section_1_0_acquire))
  (elem (;0;) (i32.const 1) func $_RNvXsd_NtNtNtCsdmBIiMovVma_4core3fmt3num3impyNtB9_7Display3fmt $_RNvXs1i_NtCsdmBIiMovVma_4core3fmtReNtB6_7Display3fmtCs3wU1vCl2ErL_10serde_core $_RNvXsW_NtNtCsdmBIiMovVma_4core3fmt3nummNtB7_5Debug3fmt $_RNvXs1g_NtCsdmBIiMovVma_4core3fmtRmNtB6_5Debug3fmtCs31HxFg2iDf6_9sha1_smol $_RNvXs1g_NtCsdmBIiMovVma_4core3fmtRDNtB6_5DebugEL_Bx_3fmtB8_ $_RNvXs1i_NtCsdmBIiMovVma_4core3fmtReNtB6_7Display3fmtB8_ $_RNvXs8_NtNtNtCsdmBIiMovVma_4core3fmt3num3impmNtB9_7Display3fmt $_RNvXs1i_NtCsdmBIiMovVma_4core3fmtRDNtNtCs3wU1vCl2ErL_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCsgzaNOZ9sV4N_10serde_json $_RNvXs7_NtCsgzaNOZ9sV4N_10serde_json5errorNtB5_14JsonUnexpectedNtNtCsdmBIiMovVma_4core3fmt7Display3fmt $_RNvXs1_NtNtCsdmBIiMovVma_4core5panic10panic_infoNtB5_12PanicMessageNtNtB9_3fmt7Display3fmt $_RNvXs1i_NtCsdmBIiMovVma_4core3fmtRNtNtNtB8_5panic8location8LocationNtB6_7Display3fmtCsdwI7iSz8jyL_10myrmic_sdk $_RNvXs_NtNtCsdmBIiMovVma_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtB8_ $_RNvXsj_NtCsdmBIiMovVma_4core3fmtcNtB5_5Debug3fmt $_RNvXsr_NtCsdmBIiMovVma_4core4cellNtB5_14BorrowMutErrorNtNtB7_3fmt7Display3fmt $_RNvXsq_NtCsdmBIiMovVma_4core3fmtOhNtB5_5Debug3fmtCsbqFb0Tus64I_21linked_list_allocator $_RNvXsg_NtCsdmBIiMovVma_4core3fmtbNtB5_7Display3fmt $_RNvXse_NtNtNtCsdmBIiMovVma_4core3fmt3num3impxNtB9_7Display3fmt $_RNvXsk_NtCsdmBIiMovVma_4core3fmtcNtB5_7Display3fmt $_RNvXs1g_NtCsdmBIiMovVma_4core3fmtReNtB6_5Debug3fmtCs3wU1vCl2ErL_10serde_core $_RNvXs3_NtCsdwI7iSz8jyL_10myrmic_sdk5errorNtB5_8ApiErrorNtNtCsdmBIiMovVma_4core3fmt5Debug3fmt $_RNvXs1g_NtCsdmBIiMovVma_4core3fmtRlNtB6_5Debug3fmtCsh49aHnobDmh_5bench $_RNvXs1g_NtCsdmBIiMovVma_4core3fmtRReNtB6_5Debug3fmtCsh49aHnobDmh_5bench $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueNtNtCsjAdaHq5oevx_5alloc6string6StringEBF_ $_RNvXsZ_NtCsjAdaHq5oevx_5alloc6stringNtB5_6StringNtNtCsdmBIiMovVma_4core3fmt5Write9write_str $_RNvXsZ_NtCsjAdaHq5oevx_5alloc6stringNtB5_6StringNtNtCsdmBIiMovVma_4core3fmt5Write10write_char $_RNvYNtNtCsjAdaHq5oevx_5alloc6string6StringNtNtCsdmBIiMovVma_4core3fmt5Write9write_fmtB6_ $_RNvXsK_NtCsdmBIiMovVma_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt $_RNvXs0_NtNtCsdmBIiMovVma_4core3fmt8buildersNtB5_10PadAdapterNtB7_5Write9write_str $_RNvXs0_NtNtCsdmBIiMovVma_4core3fmt8buildersNtB5_10PadAdapterNtB7_5Write10write_char $_RNvYNtNtNtCsdmBIiMovVma_4core3fmt8builders10PadAdapterNtB6_5Write9write_fmtB8_ $_RNvXs1g_NtCsdmBIiMovVma_4core3fmtROhNtB6_5Debug3fmtCsbqFb0Tus64I_21linked_list_allocator $_RNvXsd_NtNtCsdmBIiMovVma_4core5alloc6layoutNtB5_11LayoutErrorNtNtB9_3fmt5Debug3fmt.143 $_RNvXs_NtCs3wU1vCl2ErL_10serde_core2deNtNvXsX_NtB4_5implsmNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsdwI7iSz8jyL_10myrmic_sdk $_RNvXs_NtCs3wU1vCl2ErL_10serde_core2deNtNvXs5_NtCsgzaNOZ9sV4N_10serde_json6numberNtBH_6NumberNtB4_11Deserialize11deserialize13NumberVisitorNtB4_8Expected3fmtCsdwI7iSz8jyL_10myrmic_sdk $_RNvXs3_NtCs2WOo28oSl5V_8postcard5errorNtB5_5ErrorNtNtCsdmBIiMovVma_4core3fmt5Debug3fmt $_RNvXs_NtCsdwI7iSz8jyL_10myrmic_sdk14host_functionsNtB4_6RawBufNtNtCsdmBIiMovVma_4core3fmt5Write9write_str $_RNvYNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions6RawBufNtNtCsdmBIiMovVma_4core3fmt5Write10write_charB6_ $_RNvYNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions6RawBufNtNtCsdmBIiMovVma_4core3fmt5Write9write_fmtB6_)
  (data $.rodata (i32.const 32768) "on_tick\c0\01:\c0\01:\c0\00\16slice index starts at \c0\0d but ends at \c0\00\15byte range starts at \c0\0d but ends at \c0\00 index out of bounds: the len is \c0\12 but the index is \c0\00\11start byte index \c0' is out of bounds for string of length \c0\00\0fend byte index \c0' is out of bounds for string of length \c0\00\12range start index \c0\22 out of range for slice of length \c0\00\10range end index \c0\22 out of range for slice of length \c0\00\07string \c0\00\0finvalid value: \c0\0b, expected \c0\00\0einvalid type: \c0\0b, expected \c0\00\10assertion `left \c0\17 right` failed\0a  left: \c0\09\0a right: \c0\00\c0\02: \c0\00/Users/melkam/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/postcard-1.1.3/src/varint.rs\00/rustc/48a229ceaefd4985c50990b14116b6d856af0985/library/alloc/src/fmt.rs\00/Users/melkam/.cargo/git/checkouts/myrmic-5be315a0236dfb00/394b373/sdk/myrmic-sdk/src/host_functions/cell/timers.rs\00/Users/melkam/.cargo/git/checkouts/myrmic-5be315a0236dfb00/394b373/sdk/myrmic-sdk/src/messages.rs\00/Users/melkam/.rustup/toolchains/1.98.1-aarch64-apple-darwin/lib/rustlib/src/rust/library/core/src/ptr/mut_ptr.rs\00/Users/melkam/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.154/src/error.rs\00/Users/melkam/.rustup/toolchains/1.98.1-aarch64-apple-darwin/lib/rustlib/src/rust/library/core/src/str/pattern.rs\00/rustc/48a229ceaefd4985c50990b14116b6d856af0985/library/core/src/str/pattern.rs\00/Users/melkam/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/embedded-alloc-0.6.0/src/llff.rs\00/Users/melkam/.cargo/git/checkouts/myrmic-5be315a0236dfb00/394b373/sdk/myrmic-sdk/src/host_functions/time.rs\00/Users/melkam/.rustup/toolchains/1.98.1-aarch64-apple-darwin/lib/rustlib/src/rust/library/core/src/time.rs\00/Users/melkam/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/linked_list_allocator-0.10.6/src/hole.rs\00/rustc/48a229ceaefd4985c50990b14116b6d856af0985/library/core/src/fmt/mod.rs\00/rustc/48a229ceaefd4985c50990b14116b6d856af0985/library/core/src/str/mod.rs\00/rustc/48a229ceaefd4985c50990b14116b6d856af0985/library/alloc/src/raw_vec/mod.rs\00/Users/melkam/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.154/src/read.rs\00/rustc/48a229ceaefd4985c50990b14116b6d856af0985/library/alloc/src/alloc.rs\00/Users/melkam/Desktop/myrmic/aot-experiment/bench/kernels/src/lib.rs\00\1dBENCH ticks: started, period \c0\0f us, 2000 ticks\00\0dBENCH ticks: \c0\0a handled, \c0! us from first to last, mean gap \c0\06 us = \c0\08 ticks/s\00\15memory allocation of \c0\0d bytes failed\00\10floating point `\c0\01`\00\0bcharacter `\c0\01`\00\09integer `\c0\01`\00\09boolean `\c0\01`\00\0cFreed node (\c0\19) aliases existing hole (\c0\01[\c0\0d])! Bad free?\00\11start byte index \c0& is not a char boundary; it is inside \c0\08 (bytes \c0\0b of string)\00\0fend byte index \c0& is not a char boundary; it is inside \c0\08 (bytes \c0\0b of string)\00&copy_from_slice: source slice length (\c0+) does not match destination slice length (\c0\01)\00\11BENCH done (sink \c0\01)\00handler name is validated by #[cmd]\00\1e\83\00\00a\00\00\00)\00\00\003\00\00\00unable to start timerbench-probe\fe\ff\ff\ff\00\00\00\00\00\00\00\00\fe\ff\ff\ff\00\00\00\00\00\00\00\00\fe\ff\ff\ff\00\00\00\00\00\00\00\00\15\8b\00\00\0b\00\00\00\8f\88\00\00\0a\00\00\00\b8\00\00\00F\00\00\00In-memory value was already borrowed. Do not use re-entrantly.failed to read argumentsno payload was sent; declare the handler's payload as `Option<_>` to accept an invocation sent without one\8f\88\00\00\0a\00\00\00%\00\00\00\01\00\00\00\8f\88\00\00\0a\00\00\00\a1\00\00\00\01\00\00\00\8f\88\00\00\0a\00\00\00~\00\00\00\01\00\00\00\8f\88\00\00\0a\00\00\00q\00\00\00\01\00\00\00\8f\88\00\00\0a\00\00\00\8b\00\00\00\01\00\00\00uptime (direct host call)callsumwordscalecopy 4 KBKBxorshift64itertap::list_len (no handoff)gpio try_get (handoff)State::load (db)clock: tap::list_len (reference)clock: raw uptime_host importclock: postcard decode of the Durationclock: myrmic_sdk::uptime()clock: Duration::as_micros() as u64 (u128 math)clock: as_secs*1e6 + subsec_micros (u64 math)BENCH clock done\06BENCH \c0\02: \c0\01 \c0\04 in \c0\06 us = \c0\04 ns/\c8\02\00\00\00\00\00\00\00\00\08\00\00\00\04\00\00\00\13\00\00\00\00\00\00\00\0c\00\00\00\04\00\00\00\14\00\00\00\00\00\00\00\04\00\00\00\04\00\00\00\15\00\00\00UnknownErrorCodeUsageSemQuery\00\00\00\00\00\00\00\04\00\00\00\04\00\00\00\16\00\00\00SerdeTimedOutBufferTooSmallNotReadySignalLayerClaimedUnavailableTypeMismatchexpectedactualthis handler does not accept a payload\0a\88\00\00J\00\00\00=\02\00\00\09\00\00\00capacity overflow\00\00\00W\87\00\00P\00\00\00\1c\00\00\00\05\00\00\00\17\00\00\00\0c\00\00\00\04\00\00\00\18\00\00\00\19\00\00\00\1a\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1b\00\00\00a formatting trait implementation returned an error when the underlying stream did not\00\00a\82\00\00H\00\00\00\8f\02\00\00\0e\00\00\00Error\00\00\00U\88\00\00D\00\00\000\00\00\00\1a\00\00\00\00\02\06\04\07\01\01\01\14\01\00\01&\022\02\03\017\08\1b\04\06\0b\00\01<\02e\0e;\021\02\0f\01\1c\02\01\01\0b\05\22\05\ed\01\08\02\02\02\16\01\07\01\01\03\04\02\09\02\02\02\04\08\01\04\02\01\05\02\19\02\03\01\06\04\02\02\16\01\07\01\02\01\02\01\02\02\01\01\05\04\02\02\03\03\01\07\04\01\01\07\11\0a\03\01\09\01\03\01\16\01\07\01\02\01\05\02\0a\01\03\01\03\02\01\0f\04\02\0c\07\07\01\03\01\08\02\02\02\16\01\07\01\02\01\05\02\09\02\02\02\03\07\03\04\02\01\05\02\12\0a\02\01\06\03\03\01\04\03\02\01\01\01\02\03\02\03\03\03\0c\04\05\03\03\01\04\02\01\06\01\0e\15\05\0d\01\03\01\17\01\10\02\09\01\03\01\04\07\02\01\03\01\02\02\04\02\0a\07\16\01\03\01\17\01\0a\01\05\02\09\01\03\01\04\07\02\05\03\01\04\02\0a\01\03\0c\0d\01\03\013\01\03\01\06\04\10\02\1a\01\03\01\12\03\18\01\09\01\01\02\07\03\01\04\06\01\01\01\08\06\0a\02\03\0c:\04\1d%\02\01\01\01\05\01\18\01\01\01\17\02\05\01\01\01\07\01\0a\02\04 H\01$\04'\01$\01\0f\01\0d%\c6\01\01\05\01\02\00\01\04\02\07\01\01\01\04\02)\01\04\02!\01\04\02\07\01\01\01\04\02\0f\019\01\04\02C\02 \03\1a\06V\02\06\02\00\03Y\07\16\09\18\09\14\0c\0d\01\03\01\02\0c^\02\0a\06\0a\06\1a\06Y\07+\05F\0a\1f\01\0c\04\0c\04\01\03*\02\05\0b,\04\1a\06\0b\03>\02A\01\1d\02\0b\06\0a\06\0e\02.\02\0c\14M\01\a6\08<\03\0f\03>\05+\02\0b\08+\05\00\02\06\02&\02\06\02\08\01\01\01\01\01\01\01\1f\025\01\0f\01\0e\02\06\01\13\02\03\01\09\01e\01\0c\02\1b\01\0d\03\22\0e!\0f\8c\04\00\16\0b\15\00\02\00\05-\01\01\05\01\028\07\02\0e\18\09\07\01\07\01\07\01\07\01\07\01\07\01\07\01\07\01~\22\1a\01Y\0c\d6\1aP\01V\02g\05+\01^\01V\090\01\00\037\09\00\14\b8\08\dd\14<\03\0a\068\08F\08\0c\06t\0b\1e\03N\01\0b\04!\017\09\0e\02\0a\02g\18\1c\0a\06\02\06\02\06\09\07\01\07\01<\04~\02\0a\06\00\0c\17\041\04\00\02j&\07\0c\05\05\1a\01\05\01\01\01\02\01\02\01\00 *\063\01\13\01\04\04\05\01\87\02\01\01\be\03\06\02\06\02\06\02\03\03\07\01\07\0a\05\02\0c\01\1a\01\13\01\02\01\0f\02\0e\22{\05\03\04-\03X\01\0d\03\01/.\82\1d\031\0f\1c\04$\09\1e\05+\05\1e\01%\04\0e*\9e\02\0a\06$\04$\04(\084\0b\0c\01\0f\01\07\01\02\01\0b\01\0f\01\07\01\02\034\0c\00\09\16\0a\08\18\06\01*\01\09E\06\02\01\01,\01\02\03\01\02\17\01H\08\090\13\01\02\05!\03\1b\05\1b&8\04\14\022\01\02\05\08\01\03\01\1d\02\03\04\0a\07\09\07@ '\04\0c\096\03\1d\02\1b\05\1a\07\04\0c\07PI73\0d3\07.\08\0a\06&\03\1d\08\02\d0\1f\01*\01\03\02\02\10\06\08\09!.\08*\16\1a&\1c\14\17\09N\04$\09D\0a\01\02\19\07\0a\065\01\12\08'\09`\01\14\0b\12\01/>\07\01\01\01\04\01\0f\01\0b\06;\05\0a\06\04\01\08\02\02\02\16\01\07\01\02\01\05\01\0a\02\02\02\03\02\01\06\01\05\07\02\07\03\05\0b\0a\01\01\02\01\01&\01\0a\01\01\02\01\01\04\01\0a\01\02\08\02\1d\5c\01\05\1eH\08\0a\a66\02&\22E\0b\0a\06\0d\13:\06\0a\06\14\1c\1b\02\0f\04\17\b9<dS\0c\08\02\01\02\08\01\02\01\1e\01\02\02\0c\09\0aF\08\02.\02\0b\1bH\08S\0dI\07\0aV\08X\22\0e\0a\06\09\01-\01\0e\0a\1d\03 \02\16\01\0eI\07\01\02\01,\03\01\01\02\01\09\08\0a\06\06\01\02\01%\01\02\01\06\07\0a\06,\04\0a\f6\19\07\11\01)\03\1dU\01\0f2\0d\00fo\01\05\0b\c4\00c\0d\00\0a\00\05\00\00:\00\00\07\1f\01\0a\04Q\01\0a\06\1e\02\06\0aF\0a\0a\01\07\01\15\05\13\00:\c6[\05\19\02\19,K\049\07\11@\05\0b\07\09\00) as\00\04\01\07\01\02\01\00\0f\01\1d\03\02\01\0e\04\08\00\00k\05\0d\03\09\07\0a\02\08\00\fd\03\00\06\17\0f\11\0f.\02\17\09t<\f6\0a'\02\c2\15Fz\14\0c\14\0cW\09\19\87U\01G\01\02\02\01\02\02\02\04\01\0c\01\01\01\07\01A\01\04\02\08\01\07\01\1c\01\04\01\05\01\01\03\07\01\00\02\00\02\00\0f\05\01\0f\00\1f\06\06\d5\07\01\11\02\07\01\02\01\05\05>!\01p-\03\0e\02\0a\04\02\00\1f\11:\05\01\00*\d6+\04\01\c0\1f\01\16\08\02\e0\07\01\04\01\02\01\0f\01\c5\02\10)L\04\0a\04\02\00DL=\c2\04\01\1b\01\02\01\01\02\01\01\0a\01\04\01\01\01\01\06\01\04\01\01\01\01\01\01\03\01\02\01\01\02\01\01\01\01\01\01\01\01\01\01\02\01\01\02\04\01\07\01\04\01\04\01\01\01\0a\01\11\05\03\01\05\01\114\02\00,\04d\0c\0f\02\0f\01\0f\01%\0a\ae8\1d\0d,\04\09\07\02\0e\06\9a\00\03\11\03\0d\03\da\06\0c\04\01\0f\0c\048\08\0a\06(\08\1e\02\0c\04\02\0e\09'\00\08\0e\02\0d\03\0b\039\01\01\04\10\02\0c\04\0a\07\93\01g\00\00 \00\02\00\02\00\0f\00\00\00\00\00\05\00\00\00\00p\00\07\00-\01\01\01\02\01\02\01\01H\0b0\15\10\01e\07\02\06\02\02\01\04#\01\1e\1b[\0b:\09\09\01\18\04\01\09\01\03\01\05+\03;\09*\18\01 7\01\01\01\04\08\04\01\03\07\0a\02\1d\01:\01\01\01\02\04\08\01\09\01\0a\02\1a\01\02\029\01\04\02\04\02\02\03\03\01\1e\02\03\01\0b\029\01\04\05\01\02\04\01\14\02\16\06\01\01:\01\01\02\01\04\08\01\07\03\0a\02\1e\01;\01\01\01\0c\01\09\01(\01\03\017\01\01\03\05\03\01\04\07\02\0b\02\1d\01:\01\02\02\01\01\03\03\01\04\07\02\0b\02\1c\029\02\01\01\02\04\08\01\09\01\0a\02\1d\01H\01\04\01\02\03\01\01\08\01Q\01\02\07\0c\08b\01\02\09\0b\07I\02\1b\01\01\01\01\017\0e\01\05\01\02\05\0b\01$\09\01f\04\01\06\01\02\02\02\19\02\04\03\10\04\0d\01\02\02\06\01\0f\01\00\03\00\04\1c\03\1d\02\1e\02@\02\01\07\08\01\02\0b\09\01-\03\01\01u\02\22\01v\03\04\02\09\01\06\03\db\02\02\01:\01\01\07\01\01\01\01\02\08\06\0a\02\010.\02\0c\14\040\0a\04\03&\09\0c\02 \04\02\068\01\01\02\03\01\01\058\08\02\02\98\03\01\0d\01\07\04\01\06\01\03\02\c6@\00\01\c3!\00\03\8d\01` \00\06i\02\00\04\01\0a \02P\02\00\01\03\01\04\01\19\02\05\01\97\02\1a\12\0d\01&\08\19\0b\01\01,\030\01\02\04\02\02\02\01$\01C\06\02\02\02\02\0c\01\08\01/\013\01\01\03\02\02\05\02\01\01*\02\08\01\ee\01\02\01\04\01\00\01\00\10\10\10\00\02\00\01\e2\01\95\05\00\03\01\02\05\04(\03\04\01\a5\02\00\04A\05\00\02M\06F\0b1\04{\016\0f)\01\02\02\0a\031\04\02\02\07\01=\03$\05\01\08>\01\0c\024\09\01\01\08\04\02\01_\03\02\04\06\01\02\01\9d\01\03\08\15\029\02\01\01\01\01\0c\01\09\01\0e\07\03\05C\01\02\06\01\01\02\01\01\03\04\03\01\01\0e\02U\08\02\03\01\01\17\01Q\01\02\06\01\01\02\01\01\02\01\02\eb\01\02\04\06\02\01\02\1b\02U\08\02\01\01\02j\01\01\01\02\08e\01\01\01\02\04\01\05\00\09\01\02\f5\01\0a\04\04\01\90\04\02\02\04\01 \0a(\06\02\04\08\01\09\06\02\03.\0d\01\02\c6\01\01\03\01\01\c9\07\01\06\01\01R\16\02\07\01\02\01\02z\06\03\01\01\02\01\07\01\01H\02\03\01\01\01\00\02\0b\024\05\05\03\17\01\00\01\06\0f\00\0c\03\03\00\05;\07\00\01?\04Q\01\0b\02\00\02\00.\02\17\00\05\03\06\08\08\02\07\1e\04\94\03\007\042\08\01\0e\01\16\05\01\0f\00\07\01\11\02\07\01\02\01\05d\01\a0\07\00\01=\04\00\04\fe\02\f3\01\02\01\07\02\05\01\00\07m\07\00`\80\f0\00\ad\01\00\01\00\01\00\02\00\02U\05\00\05\1a\051\10\00\01\00\10\ef\01\a0\01O\09\00\04\00\08\00\00\00\ad\01\00\06\16\01\c0\011\01\00\02P\01\00\01\00\05\1a\051\05\01\0a\00\01\f9\03\00\01\0f\01\00\10\00\04\00\08\00\01\1e`\000123456789abcdef { , :  {\0a,\0a((\0a}) }\00\00\00\00\00\00\00\0c\00\00\00\04\00\00\00\1c\00\00\00\1d\00\00\00\1e\00\00\00\c7\84\00\00O\00\00\00\81\06\00\00\15\00\00\00\c7\84\00\00O\00\00\00\af\06\00\00\15\00\00\00\c7\84\00\00O\00\00\00\b0\06\00\00\15\00\00\00\c7\84\00\00O\00\00\00v\05\00\00(\00\00\00\c7\84\00\00O\00\00\00v\05\00\00\12\00\00\00\0b\87\00\00K\00\00\00\e5\01\00\00\14\00\00\00called `Option::unwrap()` on a `None` value==00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00x\03\00\000\05 \00\0e\07`\01I\12 \03\9d\16\a0(\16\1f\a0-*$\a07t+`=\f4,\e0=\8d\a4 >,\a6\a0D\a4\d7 En\fa\a0K\d0\fd`L7\07\a1N\9a#\e1[\90/a\85V4A\86\fbC\a1\86GF\e1\86\00a!\87\00hA\879j\81\87@m\a1\87\d6\8c\81\8a\f0\af\e1\8c#\b1\81\8d\fc\b2a\8e\00\bc\a1\8f\00\cc\c1\8f\b4\ce\01\91\a6\d6a\91\cc\d7a\99\8c\da\a1\99\00\df\e1\99\90\e2\81\9a\d0\e4\c1\9dq\ec\81\9e\00\f0A\a2\d9\f6A\abX\faa\ae\00\00\e2\b1\e0\a6\82\b4\1e\b8\a2\b4\ae\ce\e2\b4\e1\eb\22\b5^\eeb\b5\00\f8\a2\b5\1e\fa\c2\b5\00\00\e3\b5K\13\03\b6z4#\b6\fe\ffc\b6\fe\ff\94\b6\00\03\00\00\83\04 \00\91\05`\00]\13\a0\00\12\17 \1f\0c `\1f\ef,`+*0\e0+o\a6\a0,\02\a8 -\1e\fb .\00\fe`6\9e\ff\a06\fd\01!7\01\0aa7$\0d!8\ab\0e\a19/\18!:\f3\1e!K@4\a1S\1ea\e1T\f0jaUOo\e1U\9d\bcaV\00\cfaWe\d1\a1W\00\da!X\00\e0\a1Y\ae\e2![\ec\e4\e1\5c\d0\e8a] \00\ee^\f0\01\7f_O\03\00\00\1c\06`\00_\11\a0\00\b4\17\e0\00\0b  \01d1\a0\01\00\fe`\02\a0\bc\a1\02s\d1\a1\03\00\00\ee\03\00\10.\04\00\10_\04\00\06\00\00\90\08`\00\0e\18`\01\0b \e0\01\ff\fe \02\bd\10!\0304\a1\03\a0\bc!\04s\d1a\04\01\00\ae\04\80\00\ff\04..    0x0123456789ABCDEFfalsetrue\00\00\00\bf\86\00\00K\00\00\00\85\0b\00\00&\00\00\00\bf\86\00\00K\00\00\00\8e\0b\00\00\1a\00\00\00RefCell already borrowed\17\85\00\00c\00\00\004\00\00\00\12\00\00\00\17\85\00\00c\00\00\00G\00\00\00\12\00\00\00\17\85\00\00c\00\00\00Q\00\00\00\12\00\00\00\00\00\00\00\04\00\00\00\04\00\00\00\1f\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00 \00\00\00called `Result::unwrap()` on an `Err` valuealign_offset: align is not a power-of-two\80\83\00\00q\00\00\00\08\06\00\00\0d\00\00\00Freed node aliases existing hole! Bad free?\00S\86\00\00k\00\00\00\f5\01\00\00\0d\00\00\00S\86\00\00k\00\00\00\17\02\00\00\11\00\00\00S\86\00\00k\00\00\00*\02\00\00\09\00\00\00S\86\00\00k\00\00\00\a6\01\00\009\00\00\00assertion failed: aligned_hole_size >= size_of::<Hole>()S\86\00\00k\00\00\00P\01\00\00\09\00\00\00S\86\00\00k\00\00\00X\01\00\00\09\00\00\00LayoutErrorname can only contain ASCII alphanumeric characters and underscoresname cannot contain whitespacename cannot be empty\02\02\02\02\02\02\02\02\02\02\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00!\00\00\00ullruealse\00\00\00\00\00\00\00\00\00\00\01\00\00\00\22\00\00\00failed to deserialize jsonnot a JSON numberserializing get requestdeserializing get responsewasm panic -           \e2\86\aa panic (buffer busy)overflow in Duration::new\00\e8\85\00\00j\00\00\00\c9\00\00\00\12\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00#\00\00\00\01\82\00\00_\00\00\00?\00\00\00\1c\00\00\00\01\82\00\00_\00\00\00O\00\00\00\1c\00\00\00\01\82\00\00_\00\00\00\1f\00\00\00\1c\00\00\00{\85\00\00l\00\00\00b\00\00\00&\00\00\00serialization should not fail\00\00\00\aa\82\00\00s\00\00\00\9a\00\00\001\00\00\00unable to serialise requestWontImplementNotYetImplementedSerializeBufferFullSerializeSeqLengthUnknownDeserializeUnexpectedEndDeserializeBadVarintDeserializeBadBoolDeserializeBadCharDeserializeBadUtf8DeserializeBadOptionDeserializeBadEnumDeserializeBadEncodingDeserializeBadCrcSerdeSerCustomSerdeDeCustomCollectStrErrornumber is not a whole value in range for the target type\00\00\00\00\00\00\0c\00\00\00\04\00\00\00$\00\00\00%\00\00\00&\00\00\00byte arrayOption valuenewtype structsequencemapenumunit variantnewtype varianttuple variantstruct variantu32\a8\87\00\00a\00\00\00\1b\02\00\00\13\00\00\00\a8\87\00\00a\00\00\00$\02\00\00>\00\00\00\a8\87\00\00a\00\00\00 \02\00\003\00\00\00\a8\87\00\00a\00\00\00*\02\00\00:\00\00\00U\84\00\00q\00\00\00V\06\00\00\14\00\00\00U\84\00\00q\00\00\00E\06\00\00\14\00\00\00nullassertion failed: self.is_char_boundary(new_len)\a8\87\00\00a\00\00\00\ce\01\00\00\1a\00\00\00\a8\87\00\00a\00\00\00\d4\01\00\00\1f\00\00\00\a8\87\00\00a\00\00\00\c1\01\00\00E\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00$@\00\00\00\00\00\00Y@\00\00\00\00\00@\8f@\00\00\00\00\00\88\c3@\00\00\00\00\00j\f8@\00\00\00\00\80\84.A\00\00\00\00\d0\12cA\00\00\00\00\84\d7\97A\00\00\00\00e\cd\cdA\00\00\00 _\a0\02B\00\00\00\e8vH7B\00\00\00\a2\94\1amB\00\00@\e5\9c0\a2B\00\00\90\1e\c4\bc\d6B\00\004&\f5k\0cC\00\80\e07y\c3AC\00\a0\d8\85W4vC\00\c8Ngm\c1\abC\00=\91`\e4X\e1C@\8c\b5x\1d\af\15DP\ef\e2\d6\e4\1aKD\92\d5M\06\cf\f0\80D\f6J\e1\c7\02-\b5D\b4\9d\d9yCx\eaD\91\02(,*\8b E5\032\b7\f4\adTE\02\84\fe\e4q\d9\89E\81\12\1f/\e7'\c0E!\d7\e6\fa\e01\f4E\ea\8c\a09Y>)F$\b0\08\88\ef\8d_F\17n\05\b5\b5\b8\93F\9c\c9F\22\e3\a6\c8F\03|\d8\ea\9b\d0\feF\82M\c7raB3G\e3 y\cf\f9\12hG\1biWC\b8\17\9eG\b1\a1\16*\d3\ce\d2G\1dJ\9c\f4\87\82\07H\a5\5c\c3\f1)c=H\e7\19\1a7\fa]rHa\a0\e0\c4x\f5\a6Hy\c8\18\f6\d6\b2\dcHL}\cfY\c6\ef\11I\9e\5cC\f0\b7kFI\c63T\ec\a5\06|I\5c\a0\b4\b3'\84\b1Is\c8\a1\a01\e5\e5I\8f:\ca\08~^\1bJ\9ad~\c5\0e\1bQJ\c0\fd\ddv\d2a\85J0}\95\14G\ba\baJ>n\ddll\b4\f0J\ce\c9\14\88\87\e1$KA\fc\19j\e9\19ZK\a9=P\e21P\90K\13M\e4Z>d\c4KW`\9d\f1M}\f9Km\b8\04n\a1\dc/LD\f3\c2\e4\e4\e9cL\15\b0\f3\1d^\e4\98L\1b\9cp\a5u\1d\cfL\91af\87ir\03M\f5\f9?\e9\03O8Mr\f8\8f\e3\c4bnMG\fb9\0e\bb\fd\a2M\19z\c8\d1)\bd\d7M\9f\98:Ft\ac\0dNd\9f\e4\ab\c8\8bBN=\c7\dd\d6\ba.wN\0c9\95\8ci\fa\acN\a7C\dd\f7\81\1c\e2N\91\94\d4u\a2\a3\16O\b5\b9I\13\8bLLO\11\14\0e\ec\d6\af\81O\16\99\11\a7\cc\1b\b6O[\ff\d5\d0\bf\a2\ebO\99\bf\85\e2\b7E!P\7f/'\db%\97UP_\fb\f0Q\ef\fc\8aP\1b\9d6\93\15\de\c0PbD\04\f8\9a\15\f5P{U\05\b6\01[*QmU\c3\11\e1x`Q\c8*4V\19\97\94Qz5\c1\ab\df\bc\c9Ql\c1X\cb\0b\16\00R\c7\f1.\be\8e\1b4R9\ae\bamr\22iR\c7Y)\09\0fk\9fR\1d\d8\b9e\e9\a2\d3R$N(\bf\a3\8b\08S\ada\f2\ae\8c\ae>S\0c}W\ed\17-sSO\5c\ad\e8]\f8\a7Sc\b3\d8bu\f6\ddS\1ep\c7]\09\ba\12T%L9\b5\8bhGT.\9f\87\a2\aeB}T}\c3\94%\adI\b2T\5c\f4\f9n\18\dc\e6Tsq\b8\8a\1e\93\1cU\e8F\b3\16\f3\dbQU\a2\18`\dc\efR\86U\ca\1ex\d3\ab\e7\bbU?\13+d\cbp\f1U\0e\d85=\fe\cc%V\12N\83\cc=@[V\cb\10\d2\9f&\08\91V\fe\94\c6G0J\c5V=:\b8Y\bc\9c\faVf$\13\b8\f5\a10W\80\ed\17&s\cadW\e0\e8\9d\ef\0f\fd\99W\8c\b1\c2\f5)>\d0W\ef]3s\b4M\04Xk5\00\90!a9X\c5B\00\f4i\b9oX\bb)\808\e2\d3\a3X*4\a0\c6\da\c8\d8X5AHx\11\fb\0eY\c1(-\eb\ea\5cCY\f1r\f8\a5%4xY\ad\8fv\0f/A\aeY\cc\19\aai\bd\e8\e2Y?\a0\14\c4\ec\a2\17ZO\c8\19\f5\a7\8bMZ2\1d0\f9Hw\82Z~$|7\1b\15\b7Z\9e-[\05b\da\ecZ\82\fcXC}\08\22[\a3;/\94\9c\8aV[\8c\0a;\b9C-\8c[\97\e6\c4SJ\9c\c1[= \b6\e8\5c\03\f6[M\a8\e3\224\84+\5c0I\ce\95\a02a\5c|\dbA\bbH\7f\95\5c[R\12\ea\1a\df\ca\5cysK\d2p\cb\00]WP\de\06M\fe4]m\e4\95H\e0=j]\c4\ae]-\acf\a0]u\1a\b58W\80\d4]\12a\e2\06m\a0\09^\ab|M$D\04@^\d6\db`-U\05t^\cc\12\b9x\aa\06\a9^\7fW\e7\16UH\df^\af\96P.5\8d\13_[\bc\e4y\82pH_r\eb]\18\a3\8c~_'\b3:\ef\e5\17\b3_\f1_\09k\df\dd\e7_\ed\b7\cbEW\d5\1d`\f4R\9f\8bV\a5R`\b1'\87.\acN\87`\9d\f1(:W\22\bd`\02\97Y\84v5\f2`\c3\fco%\d4\c2&a\f4\fb\cb.\89s\5cax}?\bd5\c8\91a\d6\5c\8f,C:\c6a\0c4\b3\f7\d3\c8\fba\87\00\d0z\84]1b\a9\00\84\99\e5\b4eb\d4\00\e5\ff\1e\22\9bb\84 \ef_S\f5\d0b\a5\e8\ea7\a82\05c\cf\a2\e5ER\7f:c\c1\85\afk\93\8fpc2g\9bFx\b3\a4c\fe@BXV\e0\d9c\9fh)\f75,\10d\c6\c2\f3tC7Ddx\b30R\14EydV\e0\bcfY\96\afd6\0c6\e0\f7\bd\e3dC\8fC\d8u\ad\18e\14sTN\d3\d8Ne\ec\c7\f4\10\84G\83e\e8\f91\15e\19\b8eax~Z\be\1f\eee=\0b\8f\f8\d6\d3\22f\0c\ce\b2\b6\cc\88Wf\8f\81_\e4\ffj\8df\f9\b0\bb\ee\dfb\c2f8\9dj\ea\97\fb\f6f\86D\05\e5}\ba,g\d4J#\af\8e\f4ag\89\1d\ecZ\b2q\96g\eb$\a7\f1\1e\0e\ccg\13w\08W\d3\88\01h\d7\94\ca,\08\eb5h\0d:\fd7\caekhHD\feb\9e\1f\a1hZ\d5\bd\fb\85g\d5h\b1J\adzg\c1\0ai\afN\ac\ac\e0\b8@iZb\d7\d7\18\e7ti\f1:\cd\0d\df \aai\d6D\a0h\8bT\e0i\0cV\c8B\aei\14j\8fkz\d3\19\84Ijs\06YH \e5\7fj\08\a47-4\ef\b3j\0a\8d\858\01\eb\e8jL\f0\a6\86\c1%\1fk0V(\f4\98wSk\bbk21\7fU\88k\aa\06\7f\fd\dej\bek*do^\cb\02\f3k5=\0b6~\c3'l\82\0c\8e\c3]\b4]l\d1\c78\9a\ba\90\92l\c6\f9\c6@\e94\c7l7\b8\f8\90#\02\fdl#s\9b:V!2m\ebOB\c9\ab\a9fm\e6\e3\92\bb\16T\9cmp\ce;5\8e\b4\d1m\0c\c2\8a\c2\b1!\06n\8fr-3\1e\aa;n\99g\fc\dfRJqn\7f\81\fb\97\e7\9c\a5n\dfa\fa}!\04\dbn,}\bc\ee\94\e2\10ov\9ck*:\1bEo\94\83\06\b5\08bzo=\12$qE}\b0o\cc\16m\cd\96\9c\e4o\7f\5c\c8\80\bc\c3\19p\cf9}\d0U\1aPpC\88\9cD\eb \84pT\aa\c3\15&)\b9p\e9\944\9bos\efp\11\dd\00\c1%\a8#qV\14A1/\92XqkY\91\fd\ba\b6\8eq\e3\d7z\de42\c3q\dc\8d\19\16\c2\fe\f7qS\f1\9f\9br\fe-r\d4\f6C\a1\07\bfbr\89\f4\94\89\c9n\97r\ab1\fa\eb{J\cdr\0b_|s\8dN\02s\cdv[\d00\e26s\81Tr\04\bd\9als\d0t\c7\22\b6\e0\a1s\04Ry\ab\e3X\d6s\86\a6W\96\1c\ef\0bt\14\c8\f6\ddquAt\18ztU\ce\d2ut\9e\98\d1\ea\81G\abtc\ff\c22\b1\0c\e1t<\bfs\7f\ddO\15u\0b\afP\df\d4\a3Jugm\92\0be\a6\80u\c0\08wN\fe\cf\b4u\f1\ca\14\e2\fd\03\eau\d6\feL\ad~B v\8c>\a0X\1eSTv/N\c8\ee\e5g\89v\bbazj\df\c1\bfv\15}\8c\a2+\d9\f3vZ\9c/\8bv\cf(wp\83\fb-T\03_w&2\bd\9c\14b\93w\b0~\ec\c3\99:\c8w\5c\9e\e74@I\few\f9\c2\10!\c8\ed2x\b8\f3T):\a9gx\a50\aa\b3\88\93\9dxg^Jp5|\d2x\01\f6\5c\ccB\1b\07y\823t\7f\13\e2<y1\a0\a8/L\0dry=\c8\92;\9f\90\a6yMzw\0a\c74\dcyp\ac\8af\fc\a0\11z\8cW-\80;\09Fzo\ad8`\8a\8b{zel#|67\b1z\7fG,\1b\04\85\e5z^Y\f7!E\e6\1a{\db\97:5\eb\cfP{\d2=\89\02\e6\03\85{F\8d+\83\dfD\ba{L8\fb\b1\0bk\f0{_\06z\9e\ce\85$|\f6\87\18FB\a7Y|\faT\cfk\89\08\90|8*\c3\c6\ab\0a\c4|\c7\f4s\b8V\0d\f9|\f8\f1\90f\acP/};\97\1a\c0k\92c}\0a=!\b0\06w\98}L\8c)\5c\c8\94\ce}\b0\f7\999\fd\1c\03~\9cu\00\88<\e47~\03\93\00\aaK\ddm~\e2[@JO\aa\a2~\dar\d0\1c\e3T\d7~\90\8f\04\e4\1b*\0d\7f\ba\d9\82nQ:B\7f)\90#\ca\e5\c8v\7f3t\ac<\1f{\ac\7f\a0\c8\eb\85\f3\cc\e1\7f\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\00\00\01\00\02\00\03\00\04\00\05\00\06\00\07\00\08\00\09\00\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\0a\00\0b\00\0c\00\0d\00\0e\00\0f\00\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\0a\00\0b\00\0c\00\0d\00\0e\00\0f\00\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\00\00\10\00 \000\00@\00P\00`\00p\00\80\00\90\00\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\a0\00\b0\00\c0\00\d0\00\e0\00\f0\00\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\a0\00\b0\00\c0\00\d0\00\e0\00\f0\00\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff at line \00\00\00\f2\83\00\00b\00\00\00\f7\01\00\00!\00\00\00\f2\83\00\00b\00\00\00\fb\01\00\00\0c\00\00\00\f2\83\00\00b\00\00\00\02\02\00\00!\00\00\00\f2\83\00\00b\00\00\00\0b\02\00\00*\00\00\00\f2\83\00\00b\00\00\00\0f\02\00\00,\00\00\00\f2\83\00\00b\00\00\00\14\02\00\00\09\00\00\00a JSON number\00\00\00\a8\87\00\00a\00\00\00\89\02\00\00\19\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\05\05\06\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05\06\04\05\06\03\04\05\06\04\05e-324\00\05\00e-323\00\05\00e-322\00\05\00e-321\00\05\00e-320\00\05\00e-319\00\05\00e-318\00\05\00e-317\00\05\00e-316\00\05\00e-315\00\05\00e-314\00\05\00e-313\00\05\00e-312\00\05\00e-311\00\05\00e-310\00\05\00e-309\00\05\00e-308\00\05\00e-307\00\05\00e-306\00\05\00e-305\00\05\00e-304\00\05\00e-303\00\05\00e-302\00\05\00e-301\00\05\00e-300\00\05\00e-299\00\05\00e-298\00\05\00e-297\00\05\00e-296\00\05\00e-295\00\05\00e-294\00\05\00e-293\00\05\00e-292\00\05\00e-291\00\05\00e-290\00\05\00e-289\00\05\00e-288\00\05\00e-287\00\05\00e-286\00\05\00e-285\00\05\00e-284\00\05\00e-283\00\05\00e-282\00\05\00e-281\00\05\00e-280\00\05\00e-279\00\05\00e-278\00\05\00e-277\00\05\00e-276\00\05\00e-275\00\05\00e-274\00\05\00e-273\00\05\00e-272\00\05\00e-271\00\05\00e-270\00\05\00e-269\00\05\00e-268\00\05\00e-267\00\05\00e-266\00\05\00e-265\00\05\00e-264\00\05\00e-263\00\05\00e-262\00\05\00e-261\00\05\00e-260\00\05\00e-259\00\05\00e-258\00\05\00e-257\00\05\00e-256\00\05\00e-255\00\05\00e-254\00\05\00e-253\00\05\00e-252\00\05\00e-251\00\05\00e-250\00\05\00e-249\00\05\00e-248\00\05\00e-247\00\05\00e-246\00\05\00e-245\00\05\00e-244\00\05\00e-243\00\05\00e-242\00\05\00e-241\00\05\00e-240\00\05\00e-239\00\05\00e-238\00\05\00e-237\00\05\00e-236\00\05\00e-235\00\05\00e-234\00\05\00e-233\00\05\00e-232\00\05\00e-231\00\05\00e-230\00\05\00e-229\00\05\00e-228\00\05\00e-227\00\05\00e-226\00\05\00e-225\00\05\00e-224\00\05\00e-223\00\05\00e-222\00\05\00e-221\00\05\00e-220\00\05\00e-219\00\05\00e-218\00\05\00e-217\00\05\00e-216\00\05\00e-215\00\05\00e-214\00\05\00e-213\00\05\00e-212\00\05\00e-211\00\05\00e-210\00\05\00e-209\00\05\00e-208\00\05\00e-207\00\05\00e-206\00\05\00e-205\00\05\00e-204\00\05\00e-203\00\05\00e-202\00\05\00e-201\00\05\00e-200\00\05\00e-199\00\05\00e-198\00\05\00e-197\00\05\00e-196\00\05\00e-195\00\05\00e-194\00\05\00e-193\00\05\00e-192\00\05\00e-191\00\05\00e-190\00\05\00e-189\00\05\00e-188\00\05\00e-187\00\05\00e-186\00\05\00e-185\00\05\00e-184\00\05\00e-183\00\05\00e-182\00\05\00e-181\00\05\00e-180\00\05\00e-179\00\05\00e-178\00\05\00e-177\00\05\00e-176\00\05\00e-175\00\05\00e-174\00\05\00e-173\00\05\00e-172\00\05\00e-171\00\05\00e-170\00\05\00e-169\00\05\00e-168\00\05\00e-167\00\05\00e-166\00\05\00e-165\00\05\00e-164\00\05\00e-163\00\05\00e-162\00\05\00e-161\00\05\00e-160\00\05\00e-159\00\05\00e-158\00\05\00e-157\00\05\00e-156\00\05\00e-155\00\05\00e-154\00\05\00e-153\00\05\00e-152\00\05\00e-151\00\05\00e-150\00\05\00e-149\00\05\00e-148\00\05\00e-147\00\05\00e-146\00\05\00e-145\00\05\00e-144\00\05\00e-143\00\05\00e-142\00\05\00e-141\00\05\00e-140\00\05\00e-139\00\05\00e-138\00\05\00e-137\00\05\00e-136\00\05\00e-135\00\05\00e-134\00\05\00e-133\00\05\00e-132\00\05\00e-131\00\05\00e-130\00\05\00e-129\00\05\00e-128\00\05\00e-127\00\05\00e-126\00\05\00e-125\00\05\00e-124\00\05\00e-123\00\05\00e-122\00\05\00e-121\00\05\00e-120\00\05\00e-119\00\05\00e-118\00\05\00e-117\00\05\00e-116\00\05\00e-115\00\05\00e-114\00\05\00e-113\00\05\00e-112\00\05\00e-111\00\05\00e-110\00\05\00e-109\00\05\00e-108\00\05\00e-107\00\05\00e-106\00\05\00e-105\00\05\00e-104\00\05\00e-103\00\05\00e-102\00\05\00e-101\00\05\00e-100\00\05\00e-99\00\00\04\00e-98\00\00\04\00e-97\00\00\04\00e-96\00\00\04\00e-95\00\00\04\00e-94\00\00\04\00e-93\00\00\04\00e-92\00\00\04\00e-91\00\00\04\00e-90\00\00\04\00e-89\00\00\04\00e-88\00\00\04\00e-87\00\00\04\00e-86\00\00\04\00e-85\00\00\04\00e-84\00\00\04\00e-83\00\00\04\00e-82\00\00\04\00e-81\00\00\04\00e-80\00\00\04\00e-79\00\00\04\00e-78\00\00\04\00e-77\00\00\04\00e-76\00\00\04\00e-75\00\00\04\00e-74\00\00\04\00e-73\00\00\04\00e-72\00\00\04\00e-71\00\00\04\00e-70\00\00\04\00e-69\00\00\04\00e-68\00\00\04\00e-67\00\00\04\00e-66\00\00\04\00e-65\00\00\04\00e-64\00\00\04\00e-63\00\00\04\00e-62\00\00\04\00e-61\00\00\04\00e-60\00\00\04\00e-59\00\00\04\00e-58\00\00\04\00e-57\00\00\04\00e-56\00\00\04\00e-55\00\00\04\00e-54\00\00\04\00e-53\00\00\04\00e-52\00\00\04\00e-51\00\00\04\00e-50\00\00\04\00e-49\00\00\04\00e-48\00\00\04\00e-47\00\00\04\00e-46\00\00\04\00e-45\00\00\04\00e-44\00\00\04\00e-43\00\00\04\00e-42\00\00\04\00e-41\00\00\04\00e-40\00\00\04\00e-39\00\00\04\00e-38\00\00\04\00e-37\00\00\04\00e-36\00\00\04\00e-35\00\00\04\00e-34\00\00\04\00e-33\00\00\04\00e-32\00\00\04\00e-31\00\00\04\00e-30\00\00\04\00e-29\00\00\04\00e-28\00\00\04\00e-27\00\00\04\00e-26\00\00\04\00e-25\00\00\04\00e-24\00\00\04\00e-23\00\00\04\00e-22\00\00\04\00e-21\00\00\04\00e-20\00\00\04\00e-19\00\00\04\00e-18\00\00\04\00e-17\00\00\04\00e-16\00\00\04\00e-15\00\00\04\00e-14\00\00\04\00e-13\00\00\04\00e-12\00\00\04\00e-11\00\00\04\00e-10\00\00\04\00e-9\00\00\00\03\00e-8\00\00\00\03\00e-7\00\00\00\03\00e-6\00\00\00\03\00e-5\00\00\00\03\00e-4\00\00\00\03\00e-3\00\00\00\03\00e-2\00\00\00\03\00e-1\00\00\00\03\00e+0\00\00\00\03\00e+1\00\00\00\03\00e+2\00\00\00\03\00e+3\00\00\00\03\00e+4\00\00\00\03\00e+5\00\00\00\03\00e+6\00\00\00\03\00e+7\00\00\00\03\00e+8\00\00\00\03\00e+9\00\00\00\03\00e+10\00\00\04\00e+11\00\00\04\00e+12\00\00\04\00e+13\00\00\04\00e+14\00\00\04\00e+15\00\00\04\00e+16\00\00\04\00e+17\00\00\04\00e+18\00\00\04\00e+19\00\00\04\00e+20\00\00\04\00e+21\00\00\04\00e+22\00\00\04\00e+23\00\00\04\00e+24\00\00\04\00e+25\00\00\04\00e+26\00\00\04\00e+27\00\00\04\00e+28\00\00\04\00e+29\00\00\04\00e+30\00\00\04\00e+31\00\00\04\00e+32\00\00\04\00e+33\00\00\04\00e+34\00\00\04\00e+35\00\00\04\00e+36\00\00\04\00e+37\00\00\04\00e+38\00\00\04\00e+39\00\00\04\00e+40\00\00\04\00e+41\00\00\04\00e+42\00\00\04\00e+43\00\00\04\00e+44\00\00\04\00e+45\00\00\04\00e+46\00\00\04\00e+47\00\00\04\00e+48\00\00\04\00e+49\00\00\04\00e+50\00\00\04\00e+51\00\00\04\00e+52\00\00\04\00e+53\00\00\04\00e+54\00\00\04\00e+55\00\00\04\00e+56\00\00\04\00e+57\00\00\04\00e+58\00\00\04\00e+59\00\00\04\00e+60\00\00\04\00e+61\00\00\04\00e+62\00\00\04\00e+63\00\00\04\00e+64\00\00\04\00e+65\00\00\04\00e+66\00\00\04\00e+67\00\00\04\00e+68\00\00\04\00e+69\00\00\04\00e+70\00\00\04\00e+71\00\00\04\00e+72\00\00\04\00e+73\00\00\04\00e+74\00\00\04\00e+75\00\00\04\00e+76\00\00\04\00e+77\00\00\04\00e+78\00\00\04\00e+79\00\00\04\00e+80\00\00\04\00e+81\00\00\04\00e+82\00\00\04\00e+83\00\00\04\00e+84\00\00\04\00e+85\00\00\04\00e+86\00\00\04\00e+87\00\00\04\00e+88\00\00\04\00e+89\00\00\04\00e+90\00\00\04\00e+91\00\00\04\00e+92\00\00\04\00e+93\00\00\04\00e+94\00\00\04\00e+95\00\00\04\00e+96\00\00\04\00e+97\00\00\04\00e+98\00\00\04\00e+99\00\00\04\00e+100\00\05\00e+101\00\05\00e+102\00\05\00e+103\00\05\00e+104\00\05\00e+105\00\05\00e+106\00\05\00e+107\00\05\00e+108\00\05\00e+109\00\05\00e+110\00\05\00e+111\00\05\00e+112\00\05\00e+113\00\05\00e+114\00\05\00e+115\00\05\00e+116\00\05\00e+117\00\05\00e+118\00\05\00e+119\00\05\00e+120\00\05\00e+121\00\05\00e+122\00\05\00e+123\00\05\00e+124\00\05\00e+125\00\05\00e+126\00\05\00e+127\00\05\00e+128\00\05\00e+129\00\05\00e+130\00\05\00e+131\00\05\00e+132\00\05\00e+133\00\05\00e+134\00\05\00e+135\00\05\00e+136\00\05\00e+137\00\05\00e+138\00\05\00e+139\00\05\00e+140\00\05\00e+141\00\05\00e+142\00\05\00e+143\00\05\00e+144\00\05\00e+145\00\05\00e+146\00\05\00e+147\00\05\00e+148\00\05\00e+149\00\05\00e+150\00\05\00e+151\00\05\00e+152\00\05\00e+153\00\05\00e+154\00\05\00e+155\00\05\00e+156\00\05\00e+157\00\05\00e+158\00\05\00e+159\00\05\00e+160\00\05\00e+161\00\05\00e+162\00\05\00e+163\00\05\00e+164\00\05\00e+165\00\05\00e+166\00\05\00e+167\00\05\00e+168\00\05\00e+169\00\05\00e+170\00\05\00e+171\00\05\00e+172\00\05\00e+173\00\05\00e+174\00\05\00e+175\00\05\00e+176\00\05\00e+177\00\05\00e+178\00\05\00e+179\00\05\00e+180\00\05\00e+181\00\05\00e+182\00\05\00e+183\00\05\00e+184\00\05\00e+185\00\05\00e+186\00\05\00e+187\00\05\00e+188\00\05\00e+189\00\05\00e+190\00\05\00e+191\00\05\00e+192\00\05\00e+193\00\05\00e+194\00\05\00e+195\00\05\00e+196\00\05\00e+197\00\05\00e+198\00\05\00e+199\00\05\00e+200\00\05\00e+201\00\05\00e+202\00\05\00e+203\00\05\00e+204\00\05\00e+205\00\05\00e+206\00\05\00e+207\00\05\00e+208\00\05\00e+209\00\05\00e+210\00\05\00e+211\00\05\00e+212\00\05\00e+213\00\05\00e+214\00\05\00e+215\00\05\00e+216\00\05\00e+217\00\05\00e+218\00\05\00e+219\00\05\00e+220\00\05\00e+221\00\05\00e+222\00\05\00e+223\00\05\00e+224\00\05\00e+225\00\05\00e+226\00\05\00e+227\00\05\00e+228\00\05\00e+229\00\05\00e+230\00\05\00e+231\00\05\00e+232\00\05\00e+233\00\05\00e+234\00\05\00e+235\00\05\00e+236\00\05\00e+237\00\05\00e+238\00\05\00e+239\00\05\00e+240\00\05\00e+241\00\05\00e+242\00\05\00e+243\00\05\00e+244\00\05\00e+245\00\05\00e+246\00\05\00e+247\00\05\00e+248\00\05\00e+249\00\05\00e+250\00\05\00e+251\00\05\00e+252\00\05\00e+253\00\05\00e+254\00\05\00e+255\00\05\00e+256\00\05\00e+257\00\05\00e+258\00\05\00e+259\00\05\00e+260\00\05\00e+261\00\05\00e+262\00\05\00e+263\00\05\00e+264\00\05\00e+265\00\05\00e+266\00\05\00e+267\00\05\00e+268\00\05\00e+269\00\05\00e+270\00\05\00e+271\00\05\00e+272\00\05\00e+273\00\05\00e+274\00\05\00e+275\00\05\00e+276\00\05\00e+277\00\05\00e+278\00\05\00e+279\00\05\00e+280\00\05\00e+281\00\05\00e+282\00\05\00e+283\00\05\00e+284\00\05\00e+285\00\05\00e+286\00\05\00e+287\00\05\00e+288\00\05\00e+289\00\05\00e+290\00\05\00e+291\00\05\00e+292\00\05\00e+293\00\05\00e+294\00\05\00e+295\00\05\00e+296\00\05\00e+297\00\05\00e+298\00\05\00e+299\00\05\00e+300\00\05\00e+301\00\05\00e+302\00\05\00e+303\00\05\00e+304\00\05\00e+305\00\05\00e+306\00\05\00e+307\00\05\00e+308\00\05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0c}\fd\fe\96\c1_\cc\c8rb\a9I\edS\1eO\dc\bc\be\fc\b1w\ffz\0f\bb\13\9c\e8\e8%\b1\096\f7=\cf\aa\9f\ac\e9T\8ca\91\b1w\1d\8c\03u\0d\83\95\c7\17$j\ef\b9\f5\9d\d5%oD\d2\d0\e3z\f9\1d\adDk(s\05Kw\c5j\83b\ce\ec\9b2\ec\0aC\f9g\e3N\d5vE$\fb\01\e8\c2?\a7\cd\93\f7A\9c\22\8a\d4V\edy\02\a2\f3\0f\11\c1xuRCk\d6DV4\8cAE\98\a9\aaxk\89\13\0a\83\0c\d6kA\ef\91V\beS\d5V\c6k\98\cc#\8f\cb\c6\11k6\ec\ed\a8\8a\ec\b7\86\be\bf,9?\1c\eb\02\a2\b3\94\a9\d6\f32\14\d7\f7{\07O\e3\a5\83\8a\e0\b9S\cc\b0?\d9\cc\f5\da\c9\22\5c\8f$\adX\e8h\ff\9c\8f\0f@\b3\d1\be\95\99\d96l7\91\a1\1f\c2\b9\09\08\10#-\fb\ff\8fDG\85\b5\8a\a72(\0c\0a\d4\ab\f9\f9\ff\b3\15\99\e6\e2lQ?2\8f\0c\c9\16;\fc\7f\90\ad\1f\d0\8d\e3\92g\7f\d9\a7=\aeJ\fb\9f\f4\98'D\b1\9cwA\df\cf\11\cd\99\1d\fa\c71\7f1\95\dd\83\d5\11\d7CV@@R\fc\1c\7f\ef>}\8ar%kf\ea5(Hf;\e4^\ab\8e\1c\ad\cf\ee\05\00eC2\da@J\9d6V\b2c\d8\82j\07@>\d4\be\90hN\22\e2uO>\87\91\a2\04\e8\a6DwZ\02\e2\aaZS\e3\0d\a96\cb\05\a2\d0\15\15q\83\9aU1(\5cQ\d3\03>\87\caD[Z\0d\91\80\d5\1e\99\d9\12\84\c2\86\94\fe\0ayX\e8\b6\e0\8af\ff\8f\17\a5r\a89\beM\97nb\e3\98-@\ffs]\ce\8f\12\c8-!=\0a\fb\8e\7f\1c\88\7fh\fa\80\99\0b\9d\bc4f\e6|r\9f#j\9f\029\a1\80N\c4\eb\c1\ff\1f\1cN\87\acDGC\87\c9 b\b5f\b2\ff'\a3\22\a9\d7\15\19\14\e9\fb\a8\bab\00\9f\ff\f1K\b5\c9\a6\ad\8f\acq\9d\a9\b4=`\c3?wo\22|\10\99\b3\17\ce\c4\d3!M8\b4\0fU\cb+\9bT\7f\a0\9d\01\f6Hj`F\a1S*~\fb\e0\94O\84\02\c1\99mB\fc\cbDt\da.9\19zc%C1\c0\08S\fb\feU\11\91\fa\88\9fX\bc\ee\93=\f0\ca'\ba~\abU5y\b5c\b75u|&\96\deX4/\8bU\c1K\a2<%\83\92\1b\b0\bb\16o\01\fb\ed\aa\b1\9e\cb\8b\ee#w\22\9c\ea\dc\ca\c1y\a9\15^F_\17uv\8a\95\a1\92\c9\1e\19\ec\89\cd\fa\0b6]\12\14\ed\faI\b7{f\1fg\ec\80\f9\ce\84\f4\16Y\a8y\1c\e5\1a@\e7\80'\e1\b7\82\d2X\ae7\09\cc1\8f\10\88\90\b0\b8\ec\b2\d1\07\ef\99\85\0b?\fe\b2\15\aa\b4\dc\e6\a7\1f\86\c9j\00g\ce\ce\bd\df\9a\d4\e1\93\e0\91\a7g\bdB`\00A\a1\d6\8b\e0$m\5c,\bb\c8\e0mSx@\91I\cc\ae\18n\88s\f7\e9\faXHh\96\90\f5[\7f\da\9e\89jPu\a49\af-\01^zy\99\8f\88\03\96BR\c9\06\84mx\81\f5\d8\d7\7f\b3\aa\83;\d3\a6{\08\e5\c8\d6\e12\cf\cd_`\d5d\0a\88\90\9aJ\1e\fb&\cd\7f\a1\e0;\5c\85\7f\06U\9a\a0\ee\f2\5co\c0\df\c9\d8J\b3\a6\1eH\ea\c0H\aa/\f4\8b\b0W\fc\8e\1d`\d0&\da$\f1\da\94;\f1W\ce\b6]y\12<\82X\08\b7\d6\08=\c5v\ed\81$\b5\17\17\cb\a2n\cad\0cK\8cvTh\a2m\a2\dd\dc}\cb\09\fd}\cf]/\94\a9\02\0b\09\0b\15T]\feL|]C5;\f9\d3\e1\a6\e5&\8dT\fa\9e\afm\1aJ\01\c5{\c4\9a\10\9fp\b0\e9\b8\c6\1b\09\a1\9cA\b6\9a5\c0\d4\c6\8c\1c$g\f8bK\c9\03\d2c\01\c3\f8D\fc\d7\91v@\9b\1d\cf]Bc\de\e0y6V\fbM6\94\10\c2\e4B\f5\12\fc\15Y\98\c4+z\e1C\b9\94\f2\9d\93\b2\17{[o>Z[\ecl\ca\f3\9c\97B\9c\cf\ee,\99\05\a71r'\08\bd0\84\bdS\83\83*x\ff\c6P\bdN1J\ec<\e5\ec(d$5V\bf\f8\a46\d1^\ae\13F\0f\94\99\be6\e1\95w\1b\87\84\85\f6\99\98\17\13\b9?n\84Y{U\e2(\e5&t\c0~\ddW\e7\cf\89\e5/\da\ea\1a3O\98H8o\ea\96\90!v\ef]\c8\d2\f0?c\beZ\06\0b\a5\bc\b4\a9Skuz\07\ed\0f\fbm\f1\c7M\ce\eb\e1\94(\c6\12YI\e8\d3\bd\e4\f6\9c\f0`3\8d\5c\d9\bb\ab\d7-qd\ec\9d4\c4,9\80\b0\b3\cf\aa\96My\8d\bdg\c5A\f5wG\a0\dc\a0\83U\fc\a0\d7\f0\ec`\1bI\f9\aa,\e4\89Dr\b5\9d\c4\86\16\f49b\9b\b7\d57]\ac\d5\ce\22\c5u(\1c1\c7:\82%\cb\85t\d7\8b\82k6\932c}\bcdq\f7\9e\d3\a8\86\971\03\02\9c\ff]\ae\eb\bdM\b5\86\08S\a8\fc\fd\83\02\83\7f\f5\d9f-\a1b\a8\cag\d2{\fd$\c3c\dfr\d0`\bc\a4=\a9\de\80\83m\1e\f7Y\9e\cbGBx\eb\0d\8dS\16a\a4\08\e6t\f0\85\be\d9RVfQp\e8[y\cd\8b\1f\92l'.\90g\f6\df2Fq\d9k\80\b6S\db\a3\d8\1c\ba\00\f3\97\bf\97\cd\cf\86\a0\a4(\d2\cc\0e\a4\e8\80\f0}\af\fd\c0\83\a8\c8\cd\b2\06\80\12\cd\22al]\1b=\b1\a4\d2\fa\81_\08 W\80kyc\1a1\c6\ee\a6\c3\9c\b0;\05t60\e3\cb\fc`\bdw\aa\90\f4\c3\9c\8a\06\11D\fc\db\be;\b9\ac\15\d5\b4\f1\f4D-H\15U\fb\92\ee\c5\f3\8b-\05\11\17\99J\1cM-\15\dd\1bu\b6\f0\eexF\d5\5c\bf]c\a0xZ\d4b\d2\e4\ac*\17\98\0a4\ef4|\c8\16q\89\fb\86\0e\acz\0e\9f\86\80\95\a0M=\ae\e65]\d4\12W\19\d2F\a8\e0\ba\09\a1\ccY`\83t\89\d7\ac\9f\86X\d2\98\e9K\c9?p8\a4\d1+\06\cc#Tw\83\ff\91\cf\dd'F\a3\06c{\08\bf,)Ud\7f\b6B\d5\b1\17L\c8;\1a\ca\eewsj=\1f\e4\93J\9e\1d_\ba\ca >\f5*\88b\86\93\8e\9c\ee\82r{\b4~T\8d\b25*\fbg8\b2C\aa#O\9aa\9e\e91\1f\c3\f4\f9\81\c6\de\d4\94\ec\e2\00\fa\05d~\f3\f98<\11<\8b\04\dd\d3\8d@\bc\83\de^p8G\8b\15\0b\aeE\d4H\b1P\ab$\96v\8c\06\19\ee\da\8d\d9W\09\9b\dd$\d6\ad;\c9\17\a4\cf\d4\a8\f8\87\d6\e5\80\0a\d7\a5L\e5\bc\1d\8d\03\0a\d3\f6\a9L\1f!\cdL\cf\9f^+ep\84\cc\87t\d4\1fgi\00 \c3Gv;?\c6\d2\df\d4\c8\84s\e0A\00\f4\d9\ec)\09\cfw\c7\17\0a\fb\a5\90XR\00q\10h\f4\cc\c2U\b9\9d\ccy\cf\b4\eef@\8d\14\82q\bf\99\d5\93\e2\1f\ac\810U@H\d8L\f1\c6/\00\cb8\db'\17\a2|jPZ\0e\a0\ad\b8;\c0\fd\06\d2\f1\9c\ca\1c\85\e4\f0\11\08\d9\a6J0\bd\88F.D\fdc\a6\1dm\16J\8f\90.>v\15\ec\9cJ\9e\fe\872\04N\8eY\9a\ba\cd\d3\1a'D\dd\c5\fd)?\85\e1\f1\ef@(\c1\88\e10\95T\f7|\f4\8e\e6Y\ee+\d1\b9x\f5\8c>\dd\94\9a\ceX\190\f8t\bb\82\e7\d620\8e\14:\c1\01\af\1f<6Rj\e3\a1\8c?\bc\b1\99\88\f1\c1\9a'\cb\c3\e6D\dc\e5\b7\a7\15\0f`\f5\96\b9\c0\f8^:\10\ab)\de\a5\11\db\12\b8\b2\bc\e7\f0\b6\f6H\d4\15tV\0f\d6\91\17f\df\eb!\add4[I\1b\11\95\c9%\bb\ce\9fk\934\ec\be\00\d9\0d\b1\ca\fb;\efi\c2\87F\b8B\a7\ee@OQ]=\fa\0ak\04\b3)X\e6\12Q*\11\a3\a5\b4\0c\dc\e6\c2\e2\0f\1a\f7\8f\abr\ba\ea\85\e7\f0G\93\a0s\db\93\e0\f4\b3V\0fieg!\edY\b8\88P\d2\b8\18\f2\e0,S\c3>\c1ih0sUr\83sO\97\8c\fb\13:\c7\18BA\1e\cf\eaNdP#\bd\af\fa\98\08\f9\9e\92\d1\e5\83\a5b}$l\ac\db9\bfJ\b7F\f7E\dfr\a7]\ce\96\c3K\89\83\b7\8e2\8c\ba\8bkO\11\f5\81|\b4\9e\abde2?/\a9n\06\a2Ur\a2\9ba\86\d6\bd\fe\fe\0e{S\0a\c8\85u\87E\01\fd\13\866__\e9,t\06\bd\e7R\e9\96A\fc\98\a7\047\b7#8\11H,\a0\a7\a3\fcQ;\7f\d1\c5\04\a5,\86\15Z\f7\c4H\e6=\13\85\ef\82\fb\22\e7\dbsM\98\9a\f5\da_\0dXf\ab\a3\ba\eb\e0\d2\d0`>\c1\b3\d1\b7\10\ee?\96\cc\a8&\99\07\05\f9\8d1\1f\c6\e5\94\e9\cf\bb\ffRp\7fIFw\f1\fd\d3\9b\0f\fd\f1a\d5\9f3\a6\ef\ed\8b\ea\b6\fe\c8\82S|n\ba\ca\c7\c0\8fk\e9.\a5d\fe{ch\1b\0ai\bd\f9\b0s\c6\a3z\ce\fd=->!Q\a6a\16\9cN\08\5c\a6\0c\a1\be\06\b8\8di\e5\0f\fa\1b\c3b\0a\f3\cfOInH&\f1\c3\de\93\f8\e2\f3\fa\cc\ef\c3\a3\db\89Z\b7v:k\5c\dbm\98\1c\e0uZF)\96\f8e\14\09\863R\89\be#X\13\f1\97\b3\bb\f6\7fY\8bg\c0\a6+\ee,.X\ed}\a0jt\ef\17\b7@8H\db\94\dc\1cW\b4N\a4\c2\a8\eb\dd\e4PF\1a\12\ba\13\e4labM\f3\92f\15\1e\e5\d7\a0\96\e8\17\1d\c8\f9\ba \b0w`\cd2\ef\86$^\91.\12\1d\dct\14\ce\0a\b8\80\ff\aa\a8\ad\b5\b5\baV$\13\92\99\81\0d\e6`\bf\d5\12\19#\e3il\ed\97\f6\ff\e1\10\8f\9c\97\c5\ab\ef\f5\8d\c1c\f4\1e\fa?\8d\ca\b3\83\fd\b6\96ks\b1\b2|\b1\a6\f8\8f0\bd\a0\e4\bcd|F\d0\dd\de\db]\d0\f6\b3|\ac\e4\0e\f6\be\0d,\a2\8ak\a9:Bz\f0\cdk\9d\92\b3.\11\b7J\ad\c6S\c9\d2\98l\c1\86Dw`z\d5d\9d\d8\b7\a8{\07\bf\c7q\e8\8bJ|l\05_b\87rI\add\d7\1cG\11-]\9b\c7\c6\f6:\a9\cf\9b\d8=\0d\e4\98\d5y4\82yx\b4\89\d3\c3\c2N\8d\10\1d\ffJ\cb`\f1K\cb\106\84\ba9QX*r\df\ce\fe\b8\ed\1e\fe\94C\a5(\88e\ee\b4N\97\c2>'\a9\a6=z\94\ce2\ea\fe)b\22=s\87\b8)\88f\cc\1c\81_R?Z}5\06\08\a8&4*\80\ffc\a1\f7&\cf\b0\dc\c2\07\caR0\c14`\ff\bc\c9\b5\f0\02\dd\93\b3\89\fcg|\f1A8?,\fc\e2\acC\d4x \ac\bb\c0\ed6)\83\a7\9b\9d\0dL\aa\84K\94K\d51\a9\84\f3c\91\02\c5\11\df\d4e^y\9e\0a}\d3e\f0\bc5C\f6\d5\16J\ff\b5\17FM.\a4?\16\96\01\ea\99EN\8e\bf\d1\ceKP9\8d\cf\9b\fb\81d\c0\d6\e1q/\86\c2^\e4\88p\c3\82z\a2}\f0LZN\bb'sv]U&\ba\91\8c\85N\96o\f8\10\d5\f8\07j:\ea\af(\b6\ef&\e2\bb\8b6U\0a\f7\89\04\89\e5\db\b2\a3\ab\b0\da\ea.\84\ea\cct\acE+o\c9OFk\ae\c8\92\9d\92\12\00\c9\8b\0b;\cb\bb\e3\17\06\daz\b7D7\17@\bbn\ce\09\bd\aa\dc\9d\87\90Y\e5\15\05\1d\10j\0aB\cc\b6\ea\a9\c2T\faW\8f-#\12J\82F\a9\9fdeT\f3\e9\f8-\b3\f9\ab\96\dc\22\98\93G\bd~)p$w\f9\df\f7V\bc\93+~xY6\ef\19\c6v\ea\fb\8bZ\b6U<\dbN\ebW\03k\a0w\14\e5\fa\ae\f1#k\0b\92\22\e6\ed\c4\85\88\95Y\9e\b9\da\ed\ecE\8e6\ab_\e9\9bSu\fd\f7\02\b4\88\14\b4\eb\18\02\cb\db\11\81\a8\d2\fc\b5\03\e1\aa\19\a1&\9f\c2\bdR\d6\a2R\07|\a3D\99\d5_I\f0F3m\e7K\a5\93\84-\e6\ca\7f\85\db-V\0c@\a4po\8e\b8\e5\b8\9f\bd\df\a6R\b9k\0fP\cdL\cb\b2&\1f\a7\07\ad\97\d0\a7\a7F\13\a4\00 ~/xs\c8$\cc^\82\c8(\0c\8cf\00\d4\8e;V\90\fa-\7f\f6\a2\fa2\0f/\80\00\89r\cak4y\f9\1e\b4\cb\b9\ff\d2:\a0@+O\bc\86\81\d7\b7&\a1\fe\a8\bf\87I\c8\10\f6\e26\f4\b0\e62\b8$\9f\c9\d7\f4-}\ca\d9\0dC1]\a0?\e6\ed\c6\bb\0dry\1c=P\91\94}t\88\cf_\a9\f8*\91\ce\97cL\a4u|\ceH\b5\e1\dbi\9b\ba\1a\e1>\be\af\86\c9\1b\02\9b\22\daRD\c2ha\99\ce\ad[\e8\fb\a2\c2A\ab\90g\d5\f2\c3\b9?B\99r\e2\fa\a5\19\09k\ba`\c5\97\1a\d4g\c9\9f\87\cd\dc\0f`\cb\05\e9\b8\b6\bd \c9\c1\bb\87\e9\00T\138>G#g$\edh;\b2\aa\e9#\01)\0b\e3\86\0cv\c06\94!e\af\0ar\b6\a0\f9\ce\9b\a8\8f\93pD\b9i>[\8d\0e\e4\08\f8\c2\c2\92s\b8\8c\95\e7\04\0e\b20\12\1d\0b\b6\b9\b9;H\f3w\bd\90\c2Ho^+\f2\c6\b1(\a8J\1a\f0\d5\ec\b4\f3\1a\0b6\b6\ae8\1e2R\dd l\0b(\e2\b0\e1\8d\c3c\da\c6%_S\8a\94#\07Y\8d\0e\ad8Z~H\9cW7\e8\acy\ecH\af\b0Q\d8\c6\f0\9dZ\83-D\22\18\98'\1b\db\dce\8e\f8lE1\e4\f8k\15\0f\bf\f8\f0\08\8a\ffX\1bd\cb\9e\8e\1b\c5\da\d2\ee6-\8b\ac?/\22=~Fr\e2w\91\87\aa\84\f8\ad\d7\0f\bbj\cc\1d\d8\0e[\ea\ba\94\eaR\bb\cc\86\e9\b4\c2\9f\12G\e9\98\a5\e99\a5'\ea\7f\a8$b\b3G\d7\98#?\0ed\88\8e\b1\e4\9f\d2\ad:\a0\19\0d\7f\ec\8e\89>\15\f9\ee\ee\a3\83\ac$\040h\cfS\19+\8eZ\b7\aa\ea\8c\a4\d7-\05<B\c3\a8_\b611eU%\b0\cdMy\06\cb\12\f4\927\11\bf>_U\17\8e\80\d0\0b\e4\be\8b\d8\bb\e2\d6n\0e\b7*\9d\b1\a0\c4\0e\9d\ae\ae\cej[\8b\0a\d2du\04\de\c8uRDZZ\82E\f2.\8d\06\be\92\85\15\fb\12g\d5\f0\f0\e2\d6\ee=\18\c4\b6{s\ed\9ck`\85\96\d6MFUL\1eu\a4Z\d0(\c4\86\b8&<L\e1\97\aa\dfe\92Mq\043\f5\a8f0K\9f\d9=\d5\ab\7f{\d0\c6\e2?\99)@\fe\8e\03\a8F\e5\96_\9a\84x\db\8f\bf3\d0\bdr\04R\98\de|\f7\c0\a5V\d2s\ef@Dm\8f\85f>\96\ad\9a\98'vc\a8\95\a8J\a4y\13\00\e7\ddY\c1~\b1S|\12\bbR]\0dX\18\c0`U\afq\de\9dh\1b\d7\e9\a6\b4\10n\1e\f0\b8\aa\0d\07\abb!q&\92\e8p\ca\04\13\96\b3\ca\d1\c8U\bbi\0d\b0\b6\22\0d\fd\c5\97{`=\05;+*\c4\10\5c\e4jP|\b7}\9a\b8\8c\e3\04[\9az\8a\b9\8eB\b2\ad\92\8e`\f3w\1c\c6\f1@\19\edg\b2\d3\1eY7\b28\f0U\a37.\91_\e8\01\df\88f/\c5\deFlk\c6\e2\bc\ba;1a\8b\15\a0=;K\ac##w\1bl\a9\8a}9\ae\1a\08\0d\0a^\97\ec\abU\22\c7S\ed\dc\c7\d9!J\90\8c5\bd\e7\96uu\5cT\14\ea\1c\88T.\dawA\d6P~\d2\92si\99$$\aa\e9\b9\d0\d5\d1\0b\e5\dd\87w\d0\c3\bf-\ad\d4d\e8DK\c6N^\95\b4Jb\da\97<\ec\84>\11\0b\ef;\f1Z\bda\dd\fa\d0\bdK'\a6\8e\d5\cd\ea\8a\ad\b1\ec\ba\949E\ad\1e\b1\cf\f2J\81\a5\ed\18\deg\f4\fcCK,\b3\ce\81\d7\cep\87\94\cf\ea\801\fc\14^\f7_B\a2\8d\02M\a9y\83%\a1>;\9a5\f5\f7\d2\ca0C\a0\13X\e4n\09\0d\ca\00\83\f2\b5\87\fd\fcS\88\18n\9d\ca\8bH~\e0\91\b7\d1t\9e}4U\cfd\a2^w\da\9dXv%\06\12\c6\9d\81*\03\feJ6\95Q\c5\ee\d3\ae\87\96\f7\04\22\f5\83\bd\dd\83:R;uD\cd\14\be\9aB5yr\96j\92\c4'\8a\92\95\00\9am\c1\93\82\17\0f<\05\b7u\b1,\f7\ba\80\00\c9\f18c\dd\12\8b\c6$S\ee{\datP\a0\1d\97\03^\ca\eb\16\fc\f6\d3\ea\1a\11\92d\08\e5\bc\84\f5\bc\a6\1c\bb\f4\88\a5a\95\b6}J\1e\ec\e52l\d0\e3\e91+\07]\1d\92\8e\ee\92\93\cf\9fCb.2\ff:I\b4\a462\aaw\b8\c2\87\d4\fa\b9\fe\be\09[\e1M\c4\be\94\95\e6\b3\a9\89yh\be.L\d9\ac\b0:\f7|\1d\90\10\0a\f6K\017\9d\0f\0f\d8\5c\095\dc$\b4\94\8c\f3\9e\c1\84\84S\13\0e\b4KB\13.\e1\b9o\b0\06\f2\a5e(\cb\88Po\09\cc\bc\8c\d3E.D\b7\87?\f9\fe\aa$\cb\0b\ff\eb\afH\d79\15\a5i\8f\f7\be\d5\ed\bd\ce\fe\e6\db\1bM\88Z\0eDs\b5\97\a5\b46A_p\8900\95\f8\88\0ah1\fc\cea\84\11w\cc\ab=|\ba6+\0d\c2\fd\bcBz\e5\d5\94\bf\d6L\1bi\04v\902=\b5il\af\05\bd7\86\0f\b1\c1\c2I\9a?\a6#\84G\1bG\ac\c5\a7S\1dr3\dc\80\cf\0f+e\19\e2X\17\b7\d1\a8\a4N@\13a\c3\d3;\dfO\8d\97n\12\83\e9&1\08\ac\1cZd\0a\d7\a3p=\0a\d7\a3\a3p=\0a\d7\a3p=\cc\cc\cc\cc\cc\cc\cc\cc\cc\cc\cc\cc\cc\cc\cc\cc\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\a0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\c8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\fa\00\00\00\00\00\00\00\00\00\00\00\00\00\00@\9c\00\00\00\00\00\00\00\00\00\00\00\00\00\00P\c3\00\00\00\00\00\00\00\00\00\00\00\00\00\00$\f4\00\00\00\00\00\00\00\00\00\00\00\00\00\80\96\98\00\00\00\00\00\00\00\00\00\00\00\00\00 \bc\be\00\00\00\00\00\00\00\00\00\00\00\00\00(k\ee\00\00\00\00\00\00\00\00\00\00\00\00\00\f9\02\95\00\00\00\00\00\00\00\00\00\00\00\00@\b7C\ba\00\00\00\00\00\00\00\00\00\00\00\00\10\a5\d4\e8\00\00\00\00\00\00\00\00\00\00\00\00*\e7\84\91\00\00\00\00\00\00\00\00\00\00\00\80\f4 \e6\b5\00\00\00\00\00\00\00\00\00\00\00\a01\a9_\e3\00\00\00\00\00\00\00\00\00\00\00\04\bf\c9\1b\8e\00\00\00\00\00\00\00\00\00\00\00\c5.\bc\a2\b1\00\00\00\00\00\00\00\00\00\00@v:k\0b\de\00\00\00\00\00\00\00\00\00\00\e8\89\04#\c7\8a\00\00\00\00\00\00\00\00\00\00b\ac\c5\ebx\ad\00\00\00\00\00\00\00\00\00\80z\17\b7&\d7\d8\00\00\00\00\00\00\00\00\00\90\acn2x\86\87\00\00\00\00\00\00\00\00\00\b4W\0a?\16h\a9\00\00\00\00\00\00\00\00\00\a1\ed\cc\ce\1b\c2\d3\00\00\00\00\00\00\00\00\a0\84\14@aQY\84\00\00\00\00\00\00\00\00\c8\a5\19\90\b9\a5o\a5\00\00\00\00\00\00\00\00:\0f \f4'\8f\cb\ce\00\00\00\00\00\00\00\00\84\09\94\f8x9?\81\00\00\00\00\00\00\00@\e5\0b\b96\d7\07\8f\a1\00\00\00\00\00\00\00P\deNg\04\cd\c9\f2\c9\00\00\00\00\00\00\00\a4\96\22\81E@|o\fc\00\00\00\00\00\00\00M\9d\b5p+\a8\ad\c5\9d\00\00\00\00\00\00 \f0\05\e3L6\12\197\c5\00\00\00\00\00\00(l\c6\1b\e0\c3V\df\84\f6\00\00\00\00\00\002\c7\5c\11l:\96\0b\13\9a\00\00\00\00\00@\7f<\b3\15\07\c9{\ce\97\c0\00\00\00\00\00\10\9fK \dbH\bb\1a\c2\bd\f0\00\00\00\00\00\d4\86\1e\f4\88\0d\b5P\99v\96\00\00\00\00\80D\14\131\ebP\e2\a4?\14\bc\00\00\00\00\a0U\d9\17\fd%\e5\1a\8eO\19\eb\00\00\00\00\08\ab\cf]\be7\cf\d0\b8\d1\ef\92\00\00\00\00\e5\ca\a1Z\ad\05\03\05'\c6\ab\b7\00\00\00@\9e=J\f1\19\c7C\c6\b0\b7\96\e5\00\00\00\d0\05\cd\9cmo\5c\ea{\ce2~\8f\00\00\00\a2#\00\82\e4\8b\f3\e4\1a\82\bf]\b3\00\00\80\8a,\80\a2\ddn0\9e\a1b/5\e0\00\00 \ad7 \0b\d5E\de\02\a5\9d=!\8c\00\004\cc\22\f4&E\d6\95C\0e\05\8d)\af\00\00A\7f+\b1p\96L{\d4QF\f0\f3\da\00@\11_v\dd\0c<\0f\cd$\f3+v\d8\88\00\c8j\fbi\0a\88\a5S\00\ee\ef\b6\93\0e\ab\00zEz\04\0d\ea\8eh\80\e9\ab\a48\d2\d5\80\d8\d6\98E\90\a4rA\f0q\ebfc\a3\85PG\86\7f+\da\a6GQlN\a6@<\0c\a7$\d9g_\b6\90\90\99e\07\e2\cfPK\cf\d0m\cfA\f7\e3\b4\f4\ff\9fD\ed\81\12\8f\81\82\a4!\89z\0e\f1\f8\bf\c7\95h\22\d7\f2!\a3\0dj+\19R-\f7\af9\bb\02\eb\8co\ea\cb\90Dv\9f\a6\f8\f4\9b\08j\c3%p\0b\e5\fe\b4\d5SG\d06\f2\02E\22\9a\17&'O\9f\90e\94,Bb\d7\01\d6\aa\80\9d\ef\f0\22\c7\f5~\b9\b7\d2:MB\8b\d5\e0\84+\ad\eb\f8\b2\de\a7e\87\89\e0\d2w\85\0c3;L\93\9b/\eb\88\9f\f4U\ccc\d5\a6\cf\ffI\1fx\c2\fb%k\c7qk\bf<\8a\90\c3\7f\1c'\16\f3z\efE9NF\ef\8bV:\da\cfq\d8\ed\97\ac\b5\cb\e3\f0\8bu\97\ec\c8\d0C\8eN\e9\bd\17\a3\be\1c\ed\eeR='\fb\c4\d41\a2c\ed\ddK\eec\a8\aa\a7L\f8\1c\fb$_E^\94j\eft>\a9\ca\e8\8f6\e49\ee\b6\d6u\b9D+\12\8eS\fd\e2\b3D]\c8\a9dL\d3\e7\16\b6\96q\a8\bc\db`J:\1d\ea\be\0f\e4\90\cd1\feF\e9U\89\bc\dd\88\a4\a4\ae\13\1d\b5A\be\bd\98c\ab\abk\14\ab\cdM\9aXd\e2\d1-\ed~<\96\96\c6\ec\8a\a0p`\b7~\8d\a2<T\cf\e5\1d\1e\fc\a8\ad\c8\8c8e\de\b0\cbK)C_\a5%;\12\d9\fa\af\86\fe\15\dd\be\9e\f3\13\b7\0e\efI\ab\c7\fc-\14\bf-\8a7Cxl2i5n\96\f9{9\d9.\b9\ac\04T\96\07\7f\c3\c2I\fb\f7\da\87\8fz\e7\d7\06\e9{\c9^t3\dc\fd\da\e8\b4\99\ac\f0\86\a3q\ed=\bb(\a0i\bc\11#\22\c0\d7\ac\a8\0c\ceh\0d\ea2\08\c4+\d6\ab*\b0\0d\d8\d2\90\01\c3\90\a4?\0a\f5\dbe\ab\1a\8e\08\c7\83\fa\e0y\da\c6g&yR?V\a1\b1\ca\b8\a48Y\18\91\b8\01pW&\cf\ab\09^\fd\e6\cd\86o^\b5&\02L\edxa\0b\c6Z^\b0\80\b4\05[1X\81OT\d69\8ew\f1u\dc\a0!\c7\b1=\aeaciL\c8q\d5m\93\13\c9\e98\1e\cd\19:\bc\03_:\ceJIxX\fb#\c7e@\a0H\ab\04{\e4\c0\ce-K\17\9dv\9c?(d\0d\ebb\9a\1dqB\f9\1d]\c4\94\83O2\bd\d0\a5;\00e\0d\93wet\f5yd\e3~\ecD\8f\ca _\e8\bbj\bfh\99\cb\1eN\cf\13\8b\99~\e8v\e2jE\ef\c2\bf~\a6!\c3\d8\ed?\9e\a2\14\9b\c5\16\ab\b3\ef\1e\10\ea\f3N\e9\cf\c5\e5\ec\80;\eeJ\d0\95\12JrX\d1\f1\a1\bb\1f(a\ca\a9]D\bb\97\dc\8e\aeEn\8a*&r\f9<\14u\15\ea\bd\932\1a\d7\09-\f5X\e7\1b\a6,iM\92V\9c_p&&<Y.\e1\a2\cfw\c3\e0\b6l\83w\0c\b0/\8boz\99\8b\c3U\f4\98\e4Gd\95\0f\9c\fbm\0b\ec?7\9a\b5\98\df\8e\ac^\bd\89A\bd$G\e7\0f\c5\00\e3~\97\b2W\b6,\ec\91\ec\edX\e1S\f6\c0\9b^=\df\ed\e37g\b6g)/l\f4\99X![\86\8bt\ee\82\00\d2\e0y\bd\87q\c0\ae\e9\f1g\ae\11\aa\a3\80\06Y\d8\ec\e9\8dp\1ad\ee\01\da\95\94\cc Ho\0e\e8\b2X\86\90\fe4A\88\dd\dc\7f\14\8d\05\091\de\ee\a74>\82Q\aa\15\d4\9fY\f0FK\bd\96\ea\d1\c1\cd\e2\e5\d4\1a\c9\07p\ac\18\9el\9e2#\99\c0\ad\0f\85\b0\dd\04\c6k\cf\e2\03E\ffk\bf0\99S\a6\1c\15\86\b7F\83\db\84\16\ffF\ef|\7f\e8\cfc\9age\18d\12\e6n_\8c\15\aeO\f1\81~\c0`?\8f~\cbOIw\ef\9a\99\a3m\a2\9d\f08\0f3^\be\e3\1cU\ab\01\80\0c\09\cb\c5,\07\d3\bf\f5\ad\5cc*\16\02\a0O\cb\fd\f6\f7\c8\c7/s\d9s~\daM\01\c4\11\9f\9e\fa\9a\dd\dc\fd\e7g(\1dQ\a1\015\d6F\c6\b8\01\15T\fd\e1\81\b2e\a5\09B\c2\8b\d8\f7&B\1a\a9|Z\22\1f_\07FiYW\e7\9aXi\b0\e9\8dxu37\89\97\c3/-\a1\c1\ae\83\1cd\b1\d6R\00\84k}\b4{x\09\f2\9a\a4#\bd]\8cg\c02c\cePM\ebE\97\e0F6\96\ba\b7@\f8\ff\fb\01\a5 f\17\bd\98\d8\c3;\a9\e5P\b6\ffzB\ce\a8?]\ec\be\ce\b4\8a\13\1f\e5\a3\df\8c\e9\80\c9G\ba\937\01\b16l3o\c6\17\f0#\e1\bb\d9\a8\b8\84A]DG\00\0b\b8\1d\ecl\d9*\10\d3\e6\e5\91t\15Y\c0\0d\a6\92\13\e4\c7\1a\eaC\90/\dbh\ad7\98\c8\87w\18\ddy\a1\e4T\b4\fb\11\c3\98E\be\ba)\94^T\d8\c9\1dj\e1z\d6\f3\fe\d6m)\f4\1d\bb4'\9eR\e2\8c\0cfX_\a6\e4\99\18\e4\e9\01\b1E\e7\1a\b0\8f\7f.\f7\cf]\c0^]dB\1d\17\a1!\dcs\1f\fa\f4Cupv\ba~Ir\ae\04\95\89\a8S\1cyJI\06ji\de\db\0e\daE\fa\ab\92hc\17\9d\db\87\04\03\d6\92\92P\d7\f8\d6\b6B<]\84\d2\a9E\c2\c5\9b[\92\86[\86\b2\a9E\ba\92#\8a\0b2\b7\82\f26h\f2\a7\1e\14\d7hw\acl\8e\ffd#\afD\02\ef\d1&\d9\0cC\95\d7\072\1f\1fv\edja5\83\b8\07\e8I\bd\e6D\7f\e7\a6\d3\a8\c5\b9\02\a4\a6\09b\9cl \16_\a1\90\08\137h\03\cd\0f\8cz\c3\87\a8\db6dZ\e5k\22!\22\80\89\97,\daTII\c2\fd\b0\de\06k\a9*\a0l\bd\b7\10\aa\9b\db\f2=]\96\c8\c5S5\c8\c7\ac\e5\94\94\82\92o\8c\f4\bb:\b7\a8B\fa\f9\17\1f\ba9#w\cb\d7x\b5\84r\a9i\9c\fbnS\14\04v*\ff\0d\d7\e2%\cf\13\84\c3\baJh\19\85\13\f5\fe\d1\8c[\ef\c2\18e\f4i]\c2_fX\b2~\028\99\d5y/\bf\98az\d9\fb?w/\ef\03\86\ffJX\fb\ee\be\fa\d8\cf\fa\0fU\fb\aa\84g\bf].\ba\aa\ee8\cf\83\f9S*\ba\95\b2\a0\97\fa\5c\b4*\95\83a\f2{tZ\94\dd\df\88=9tau\ba\e4\f9\ee\9a\11q\f9\94\17\eb\8cG\d1\b9\12\e9]\b8\aa\01V\cd7z\ee\12\b8\cc\22\b4\ab\91:\b3\0a\c1U\e0b\ac\aa\17\e6\7f+\a1\16\b6\09`M1k\98{W\94\9d\df_vI\9c\e3\0b\b8\a0\fd\85~Z\ed}\c2\eb\fb\e9\adA\8e\07s\84\be\13\8fX\14\1c\b3\e6zd\19\d2\b1\c8\8f%\ae\d8\b2nY\e3_\a0\99\bd\9fF\de\bb\f3\ae\d9\8e_\cao\ee;\04\80\d6#\ec\8aTX\0dH\b9{\de%\e9J\05 \cc,\a7\adj\ae\10\9a\a7\1aV\af\a4\9d\06(\ff\f7\10\d9\04\da\94\80Q\a1+\1b\86\22\04y\ff\9a\aa\87B\08]\f0\d2D\fb\90(+EW\bfA\95\a9SJt\ac\07\16:5\f2u\16-/\92\fa\d3\e8\5c\91\97\89\9b\88B\b7\09.|]\9b|\84\11\da\ba\fe5a\95i%\8c9\db4\c2\9b\a5\95\90i~\83\b9\faC.\ef\07\12\c2\b2\02\cf\bb\f4\03^\e4g\f9\94}\f5DK\b9\afa\81\f5x\c2\ba\ee\e0\1b\1d\dc2\16\9e\a7\1b\ba\a12\17si*\d9bd\93\bf\9b\85\91\a2(\ca\fe\dc\cf\03u\8f{}x\af\02\e75\cb\b2\fc>\d4\c3DRs\da\5c\ab\ada\b0\01\bf\ef\9d\a7d\faj\13\88\08:\16\19z\1c\c2\aek\c5\d0\fd\b8E\18\aa\8a\08[\9f\98\a3r\9a\c6\f6E='W\9eT\ad\8a\99c?\a6\87 <\9aK\86x\f6\e2T\ac6\7f<\cf\8f\a9(\cb\c0\dd\a7\16\b4\1bjW\84\9f\0b\c3\f3\d3\f2\fd\f0\d5Q\1c\a1\a2DmeC\e7Yx\c4\b7\9e\96%\b3\b1\a4\e5Jd\9f\14ap\96\b5eF\bc\ee\1f\de\0d\9f]=\87Yy\0c\fc\22\ffW\eb\ea\a7U\d1\06\b5\0c\a9\d8\cb\87\ddu\ff\16\93\f2\88\d5B$\f1\a7\09\ce\be\e9TS\bf\dc\b7/\eb\8aSm\ed\11\0c\81.$*(\ef\d3\e5\fa\a5m\a8\c8h\16\8f\10\9dV\1ayu\a4\8f\bc\87Di}\01n\f9UD\ec`\d7\92\8d\b3\ac\a9\95\c3\dc\81\c97jU'9\8d\f7p\e0\17\14{\f4S\e2\bb\85b\95\b8C\b8\9aF\8c\8e\ec\ccxtm\95\93\bb\ba\a6TfAX\af\b2'\00\97\d1\c8z8ji\d0\e9\bfQ.\db\9e1\c0\fc\05{\99\06\e2A\22\f2\17\f3\fc\88\03\1f\f8\bd\e3\ec\1fDZ\d2\aa\ee\dd/<\ab\c3&v\ad\1c\e8'\d5\f1\86Uj\d5;\0b\d6t\b0\d3\d8#\e2q\8aVtube\05\c7\85IN\84gV-\87\f6l\d1\12\bb\be\c68\a7\dbae\01\ac\f8(\b4\c7\85\d7in\f8\06\d1R\ba\be\01\d763\e1\9c\b3&\02E[\a4\82s4\17aF\02\c0\ec\84`\b0B\16rM\a3\90\01]\f9\d7\02\f0'\a5x\5c\d3\9b\ce \cc\f4A\b4\f7\8d\03\ec1\ce\963\c8B\02)\ffqR\a1uq\04g~A> \bdi\a1y\9f\86\d3\84\e9\c6b\00\0f\d1Mh,\c4\09X\c7h\08\e6\a3x{\c0REa\8275\0c.\f9\82\8a\df\ccV\9ap\a7\cb|\b1B\a1\c7\bc\9b\91\b6\0b@v`\a6\88\fe\db]\93\89\f9\ab\c25\a4\0e\d0\93\f8\cfj\feR5\f8\eb\f7V\f3CM\12\c4\b8\f6\83\05\deS!{\f3Z\16\98Jp\8bz3zr\c3\d6\a8\e9Y\b0\f1\1b\be\5cL.Y\c0\18Ot\0c\13dp\1c\ee\a2\eds\dfyo\f0\deb\11\e7\8b>\c6\d1\d4\85\94\a8+\acEV\cb\dd\8a\e1.\ce7\06J\a7\b9\926\17\d7+>\95m\99\ba\c1\c5\87\1c\11\e87\04\dd\cc\b6\8d\fa\c8\a0\14\99\db\d4\b1\0a\91\a2\22\0a@\92\98\9c\1d\c8Y\7f\12J^M\b5K\ab\0c\d0\b6\be\03%:0\1f\97\dc\b5\a0\e2\1d\d6\0f\84d\aeD.$~s\de\a9q\a4\8d\d2\e5\89\d2\fe\ec\ea\5c\ad]\10V\14\8e\0d\b1G_,\87>\a8%t\18u\94k\99\f1P\dd\19w\f7(N\12/\d1/\c9<\e3\ff\96R\8ao\aa\9a\d9pk\bd\82{\fb\0b\dc\bf<\e7\ac\0bU\01\10M\c6lcZ\fa\0e\d3\ef\0b!\d8N\aa\01T\e0\f7G<x\5c\e9\e3u\a7\14\87q\0a\814\ec\fa\ace\96\b3\e3\5cS\d1\d9\a8\0dM\a1A\a79\18\7f|\a0\1c4\a8E\10\d3P\a0\09\12\11H\de\1eM\e4\91 \89+\ea\832\04F\ab\0a\edJ\93`]\b6hk\b6\e4\a4?\85\17VM\a8\1d\f8\b9\f4\e3B\06\e4\1d\ce\8ef\9d\ab`\12%6\f3x\ce\e9\83\ae\d2\80\19`Bk|+\d7\c10\17B\e4$Z\07\a1\1f\f8\12\86[\f6L\b2\fc\9cR\1d\ae0I\c9'\b6\97g\f23\e0\de<D\a7\a4\d9|\9b\fb\b1\a3}\01\ef@\98\16\a5\8a\e8\06\08.A\9dN\86\ee`\95(\1f\8eN\ad\a2\08\8ay\91\c4\e2'*\b9\ba\f2\a6\f1\a2X\cb\8a\ec\d7\b5\f5\db\b1tgi\af\10\aee\17\bf\d6\f3\a6\91\99)\ef\a8\e0\a1m\ca\ac?\ddn\cc\b0\10\f6\bf\f3*\d3X\0a\09\fd\17\8e\94\8a\ff\dc\94\f3\ef\b0\f5\07\efLK\fc\dd\d9\9c\b6\1f\0a=\f8\95\8e\f9d\15\10\af\bdJ\0fD\a4\a7LLv\bb\f17\be\1a\d4\1am\9d\13U\8d\d1_\dfS\ea\ed\c5m!\89a\c8\84,U\f8\e2\9bkt\92\b4\9b\e4\b4\f5<\fd2wj\b6\db\82\86\11\b7\a1\c2\1d\223\8c\bc?\15\05\a4\92#\e8\d5\e4J3\a5\ea?\af\ab\0f-\83\a6;\16\b1\05\8f\0e@\a7\f2\87M\cb)\f8#\90\ca[\1d\c7\b2\12\10Q\ef\e9 >t\f6,4\bd\b2\e4x\df\16T%k$\a9M\91\1a\9c@\b6\ef\8e\ab\8b\8eT\f7\c2\b6\89\d0\1a \c3\d0\a3\abr\96\ae\b1)\b5s$\ac\84\a1\e8\f3\c4\8cV\0f<\da\1et\a2\90-\d7\e5\c9q\18\fb\17\96\89e\88\92\88ez|\a6/~\8d\de\f9\9d\fb\eb~\aa\b7\ea\fe\98\1b\90\bb\dd1Vx\85\fa\a6\1e\d5e\a5>\7f\22t*U\de5k\93\5c(3\85_'\87\8f\95\88:\d5V\03F\b8s\f2\7f\a67\f1h\f3\ba*\89\8a,\84W\a6\10\ef\1f\d0\85-C\b0iu+-\9b\b2\f6gj\f5\13\82s\fc)\0eb);\9cB_\f4\01\c5\f2\98\a2\8f{\b4\91\ba\f3I\83\13wqBv/?\cbs\9a!6\a9p\1c$\d7\d4\0d\d3S\fb\0e\fe\10\01\aa\83\d3\8c#\ed\06\a5\e8c\14]\c9\9e\aa@J2\0486\f4H\ce\e2|Y\b4{\c6\d5\d0\dc>\05\c6C\b1\da\81\1b\dco\a1\1a\f8\0a\05\94\8e\86\b7\94\dd(1\91\e9\e5\a4\10\9b&\83\1c\19\b4\f2|\car}\f5c\1f\ce\d4\c1\f0\a3c\1fa/\1c\fd\cf\dc\f2<\a7\01J\f2\ec\8c<g9;c\bc\01\ca\17\86\08An\97\13\d8\85\e0\03\05\be\d5\82\bc\9d\a7J\d1I\bd\18N\a7\d8D\86-K\a2+\85Q\9dE\9c\ec\9e!\d1\0e\d6\e7\f8\ddE;\f3R\82\ab\e1\93\03\b5B\c9\e5\90\bb\ca\17\0a\b0\e7b\16\da\b8Cb\93;\1fuj=\9d\0c\9c\a1\fb\9b\10\e7\d4:x\0ag\12\c5\0c\e2\87\01E}aj\90\c5$\8bf\80+\fb'\da\e9A\96\dc\f9\84\b4\f6\ed-\80`\f6\f9\b1Qd\d2\bbS8\a6\e1si9\a0\f8sx^\b2~cU4\e3\07\8d\e8\e1#d{H\0b\db_^\bcj\01\dcI\b0b\da,=\9a\1a\ce\91\f7uk\c5\01S\5c\dc\fb\10x\cc@\a1Av\ba)c\1b\e1\b3\b9\89\9d\0a\cb\7f\c8\04\e9\a9)\f4;b\d9 (\acD\cd\bd\9f\faEcT3\f1\ca\ba\0f)2\d7\95@\adGy\17|\a9\c0\d6\be\d4\a9Y\7f\86]H\cc\cc\ab\8e\edIp\8c\eeI\140\1f\a8tZ\ff\bfV\f2h\5c\8c/j\5c\19\fc&\d2\111\ffo\ec.\83s\b7]\c2\d9\8f]X\83\ab~\ff\c5S\fd1\c8%\f52\d0\f3t.\a4U^\7f\b7\a8|>\bao\b2?\c40\12:\cd\eb5_\e5\d2\1b\ce(\85\cf\a7z^KD\80\b3\81[\cfc\d1\80yf\c3Q\196^U\a0\1fb2\c3\bc\05\e1\d7@4\a6\9f\c3\b5j\c8\a7\fa\fe\f3+G\d9\8dP\c1\8f\874c\85\faQ\b9\fe\f0\f6\98O\b1\d2\d8\b9\d4\00^\93\9c\d33\9fV\9a\bf\d1n\07O\e8\09\815\b8\c3\c8\00G\ec\80/\86\0a\c8bbL\e1B\a6\f4\fa\c0X'a\bb'\cd\bd}\bd\cf\cc\e9\e7\98\9cx\97\b8\1c\d58\80,\dd\ac\03@\e4!\bf\c3V\bd\e6c\0aG\e0x\14\98\04P]\ea\eet\acl\e0\fc\ccX\18\cb\0c\df\02RzR\95\c8\ebC\0c\1e\807\0f\fd\cf\96\83\e6\18\a7\ba\ba\e6T\8f%`\05\d3\fd\83|$ \dfP\e9i *\f3.\b8\c6G~\d2\cd\16t\8b\d2\91AT\faW\1d3\dcL\1dG\81\1cQ.G\b6R\e9\f8\ad\e4?\13\e0\e5\98\a1c\e5\f9\d8\e3\a6#w\d9\dd\0f\18X\8f\ffD^/\9cg\8eHv\ea\a7\ea\09\0fWs?\d65;\83\01\b2\da\13\e5Qe\cc\d2,O\cfK\03\0a\e4\81\de\d1X^\a6~\7f\07\f8\91a\0fB\86.\11\8b\82\f7\fa'\af\af\04\fb\f69\93\d2'z\d5\adc\b5\f9\f1\9a\db\c5yt\088\c7\b1\d8J\d9\bc\22x\ae\81R7\18H\05\83\1co\c7\ce\87\b5\15\0b\0d\91\93\22\8f\9a\c6\a3\e3Jy\c2\a9\22\dbMPu8\eb\b2A\b8\8c\9c\9d\173\d4\ebQa\a4\92\06\a6_(\f3\d7\81\c2\ee\9f\843\d3\bc\a6\1b\c4\c7\db\f3\efM\22s\ea\c7\a5\00\08l\90\22\b5\b9\12\efk\e1\ea\0f\e59\cf\00\0a\874k\22h\d7u\e3\cc\f2)/\84\81@f\d4\00\83\15\a1\e6S\1c\80o\f4:\e5\a1\d0\7f\09\c1\e3ZI`h#`\8b\b1\89^\ca\c4\dfK\b1\9c\b1[8B,8\ee\1d,\f6\fc\b5\d7\9e\dd\03\9erF\a9\1b\e3\b4\92\db\19\9e\d1F\83j\c2\a2\07l\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00inf-infNaN\00\00\0d\00\00\00\11\00\00\00\13\00\00\00\19\00\00\00\18\00\00\00\14\00\00\00\12\00\00\00\12\00\00\00\12\00\00\00\14\00\00\00\12\00\00\00\16\00\00\00\11\00\00\00\0e\00\00\00\0d\00\00\00\0f\00\00\00\db\a1\00\00\e8\a1\00\00\f9\a1\00\00\0c\a2\00\00%\a2\00\00=\a2\00\00Q\a2\00\00c\a2\00\00u\a2\00\00\87\a2\00\00\9b\a2\00\00\ad\a2\00\00\c3\a2\00\00\d4\a2\00\00\e2\a2\00\00\ef\a2\00\00")
  (data $.data (i32.const 62988) "\00\00\00\00\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))
