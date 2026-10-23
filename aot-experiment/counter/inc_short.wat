  (func $command_increment (type 11) (param i64 i64 i64 i64 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    local.get 3
    i64.const 56
    i64.shl
    local.get 3
    i64.const 65280
    i64.and
    i64.const 40
    i64.shl
    i64.or
    local.get 3
    i64.const 16711680
    i64.and
    i64.const 24
    i64.shl
    local.get 3
    i64.const 4278190080
    i64.and
    i64.const 8
    i64.shl
    i64.or
    i64.or
    local.get 3
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 3
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 3
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 3
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store offset=40
    local.get 5
    local.get 2
    i64.const 56
    i64.shl
    local.get 2
    i64.const 65280
    i64.and
    i64.const 40
    i64.shl
    i64.or
    local.get 2
    i64.const 16711680
    i64.and
    i64.const 24
    i64.shl
    local.get 2
    i64.const 4278190080
    i64.and
    i64.const 8
    i64.shl
    i64.or
    i64.or
    local.get 2
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 2
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 2
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 2
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store offset=32
    local.get 5
    local.get 1
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
    i64.store offset=24
    local.get 5
    local.get 0
    i64.const 56
    i64.shl
    local.get 0
    i64.const 65280
    i64.and
    i64.const 40
    i64.shl
    i64.or
    local.get 0
    i64.const 16711680
    i64.and
    i64.const 24
    i64.shl
    local.get 0
    i64.const 4278190080
    i64.and
    i64.const 8
    i64.shl
    i64.or
    i64.or
    local.get 0
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 0
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 0
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 0
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store offset=16
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
              i32.const 35241
              local.set 6
              br 1 (;@4;)
            end
            local.get 5
            i32.const 80
            i32.add
            i32.const 34724
            call $State::load_from
            local.get 5
            i32.load offset=88
            local.set 4
            local.get 5
            i32.load offset=84
            local.set 6
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 5
                  i32.load offset=80
                  br_if 0 (;@7;)
                  local.get 5
                  i32.const 8
                  i32.add
                  i32.const 34724
                  local.get 4
                  i32.const 1
                  i32.add
                  i32.const 1
                  local.get 6
                  i32.const 1
                  i32.and
                  select
                  local.tee 4
                  call $State::save_to
                  local.get 5
                  i32.load offset=8
                  local.tee 6
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 5
                  i32.load offset=12
                  local.set 4
                  br 2 (;@5;)
                end
                local.get 6
                br_if 1 (;@5;)
              end
              local.get 5
              local.get 4
              i32.store offset=56
              i32.const 34724
              call $drop_glue
              local.get 5
              i32.const 8
              i32.store offset=92
              local.get 5
              local.get 5
              i32.const 32
              i32.add
              i32.store offset=88
              local.get 5
              i32.const 9
              i32.store offset=84
              local.get 5
              local.get 5
              i32.const 56
              i32.add
              i32.store offset=80
              local.get 5
              i32.const 68
              i32.add
              i32.const 34557
              local.get 5
              i32.const 80
              i32.add
              call $alloc::fmt::format
              local.get 5
              i32.const 80
              i32.add
              local.get 5
              i32.load offset=72
              local.tee 4
              local.get 5
              i32.load offset=76
              i32.const 2
              call $sdk::log
              local.get 5
              i32.load offset=68
              local.get 4
              call $RawVec::drop
              i32.const 0
              local.set 4
              br 2 (;@3;)
            end
            i32.const 34724
            call $drop_glue
          end
          local.get 5
          local.get 4
          i32.store offset=52
          local.get 5
          local.get 6
          i32.store offset=48
          local.get 5
          i32.const 68
          i32.add
          local.get 6
          local.get 4
          call $sdk::report_error
          local.get 5
          i32.load offset=68
          i32.const -1
          i32.ne
          br_if 1 (;@2;)
          local.get 5
          i32.const 10
          i32.store offset=84
          local.get 5
          local.get 5
          i32.const 48
          i32.add
          i32.store offset=80
          local.get 5
          i32.const 68
          i32.add
          i32.const 33303
          local.get 5
          i32.const 80
          i32.add
          call $alloc::fmt::format
          local.get 5
          i32.const 56
          i32.add
          local.get 5
          i32.load offset=72
          local.tee 4
          local.get 5
          i32.load offset=76
          i32.const 4
          call $sdk::log
          local.get 5
          i32.load offset=56
          i32.const -1
          i32.ne
          br_if 2 (;@1;)
          local.get 5
          i32.load offset=68
          local.get 4
          call $RawVec::drop
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
      i32.load offset=76
      i32.store offset=88
      local.get 5
      local.get 5
      i64.load offset=68 align=4
      i64.store offset=80
      i32.const 39220
      i32.const 43
      local.get 5
      i32.const 80
      i32.add
      i32.const 34768
      i32.const 34700
      call $unwrap_failed
      unreachable
    end
    local.get 5
    local.get 5
    i32.load offset=64
    i32.store offset=88
    local.get 5
    local.get 5
    i64.load offset=56 align=4
    i64.store offset=80
    i32.const 39220
    i32.const 43
    local.get 5
    i32.const 80
    i32.add
    i32.const 34768
    i32.const 34700
    call $unwrap_failed
    unreachable)
