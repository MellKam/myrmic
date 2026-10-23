(module $counter.wasm
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;3;) (func (param i32 i32)))
  (type (;4;) (func (param i32)))
  (type (;5;) (func (param i32 i32 i32)))
  (type (;6;) (func (param i32) (result i32)))
  (type (;7;) (func))
  (type (;8;) (func (param i32 i32 i32 i32 i32)))
  (type (;9;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;10;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;11;) (func (param i64 i64 i64 i64 i32) (result i32)))
  (type (;12;) (func (param i32 i32 i32 i32)))
  (import "db" "key_put" (func $_RNvNtNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions2db2kv11c_functions7key_put (type 1)))
  (import "db" "key_get" (func $_RNvNtNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions2db2kv11c_functions7key_get (type 2)))
  (import "arguments" "get_arguments" (func $_RNvNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions9arguments11c_functions13get_arguments (type 1)))
  (import "cell" "send_command" (func $_RNvNtNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions4cell8commands11c_functions12send_command (type 1)))
  (import "logging" "log_host" (func $_RNvNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions7logging11c_functions8log_host (type 0)))
  (import "error" "report_error" (func $_RNvNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions6errors11c_functions12report_error (type 1)))
  (func $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjAdaHq5oevx_5alloc6borrow3CoweEEECs42wnaUBpYLM_7counter (type 3) (param i32 i32)
    block  ;; label = @1
      local.get 0
      i32.const -2
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueINtNtCsjAdaHq5oevx_5alloc6borrow3CoweEECs42wnaUBpYLM_7counter
    end)
  (func $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueINtNtCsjAdaHq5oevx_5alloc6borrow3CoweEECs42wnaUBpYLM_7counter (type 3) (param i32 i32)
    block  ;; label = @1
      local.get 0
      i32.const -1
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
    end)
  (func $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common (type 3) (param i32 i32)
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
  (func $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueINtNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions2db5state5StatelEECs42wnaUBpYLM_7counter (type 4) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 1
      i32.const -2
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      i32.load offset=4
      call $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueINtNtCsjAdaHq5oevx_5alloc6borrow3CoweEECs42wnaUBpYLM_7counter
    end
    local.get 0
    i32.load offset=12
    local.get 0
    i32.load offset=16
    call $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjAdaHq5oevx_5alloc6borrow3CoweEEECs42wnaUBpYLM_7counter
    local.get 0
    i32.load offset=24
    local.get 0
    i32.load offset=28
    call $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjAdaHq5oevx_5alloc6borrow3CoweEEECs42wnaUBpYLM_7counter)
  (func $_RINvXs_NvMNtCsjAdaHq5oevx_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs42wnaUBpYLM_7counter (type 5) (param i32 i32 i32)
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
        local.get 5
        local.get 1
        local.get 2
        call $memcpy
        drop
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
  (func $_RNvNtCsjAdaHq5oevx_5alloc7raw_vec12handle_error (type 3) (param i32 i32)
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
  (func $_RNvMNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions2db5stateINtB2_5StatelE5scopeCs42wnaUBpYLM_7counter (type 3) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load
        i32.const -2
        i32.eq
        br_if 0 (;@2;)
        local.get 2
        i32.const 4
        i32.add
        local.get 1
        call $_RNvXs0_NtCsjAdaHq5oevx_5alloc6borrowINtB5_3CoweENtNtCsdmBIiMovVma_4core5clone5Clone5cloneCsdwI7iSz8jyL_10myrmic_sdk
        br 1 (;@1;)
      end
      local.get 2
      i32.const -2
      i32.store offset=4
    end
    local.get 0
    i32.const 12
    i32.add
    local.get 1
    i32.const 12
    i32.add
    call $_RNvXs4_NtCsdmBIiMovVma_4core6optionINtB5_6OptionINtNtCsjAdaHq5oevx_5alloc6borrow3CoweEENtNtB7_5clone5Clone5cloneCs42wnaUBpYLM_7counter
    local.get 0
    i32.const 24
    i32.add
    local.get 1
    i32.const 24
    i32.add
    call $_RNvXs4_NtCsdmBIiMovVma_4core6optionINtB5_6OptionINtNtCsjAdaHq5oevx_5alloc6borrow3CoweEENtNtB7_5clone5Clone5cloneCs42wnaUBpYLM_7counter
    local.get 0
    local.get 2
    i32.load offset=12
    i32.store offset=8
    local.get 0
    local.get 2
    i64.load offset=4 align=4
    i64.store align=4
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_RNvXs0_NtCsjAdaHq5oevx_5alloc6borrowINtB5_3CoweENtNtCsdmBIiMovVma_4core5clone5Clone5cloneCsdwI7iSz8jyL_10myrmic_sdk (type 3) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.load offset=8
    local.set 3
    local.get 1
    i32.load offset=4
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load
        i32.const -1
        i32.eq
        br_if 0 (;@2;)
        local.get 2
        i32.const 8
        i32.add
        local.get 3
        call $_RNvMs5_NtCsjAdaHq5oevx_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdwI7iSz8jyL_10myrmic_sdk
        local.get 2
        i32.load offset=8
        local.set 5
        local.get 2
        i32.load offset=12
        local.set 1
        local.get 0
        i32.const 0
        i32.store offset=8
        local.get 0
        local.get 1
        i32.store offset=4
        local.get 0
        local.get 5
        i32.store
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 4
        local.get 3
        call $memcpy
        drop
        local.get 0
        local.get 3
        i32.store offset=8
        br 1 (;@1;)
      end
      local.get 0
      local.get 3
      i32.store offset=8
      local.get 0
      local.get 4
      i32.store offset=4
      local.get 0
      i32.const -1
      i32.store
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_RNvXs4_NtCsdmBIiMovVma_4core6optionINtB5_6OptionINtNtCsjAdaHq5oevx_5alloc6borrow3CoweEENtNtB7_5clone5Clone5cloneCs42wnaUBpYLM_7counter (type 3) (param i32 i32)
    block  ;; label = @1
      local.get 1
      i32.load
      i32.const -2
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $_RNvXs0_NtCsjAdaHq5oevx_5alloc6borrowINtB5_3CoweENtNtCsdmBIiMovVma_4core5clone5Clone5cloneCsdwI7iSz8jyL_10myrmic_sdk
      return
    end
    local.get 0
    i32.const -2
    i32.store)
  (func $_RNvMs_NtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions2db5stateINtB4_5StatelE7save_toCs42wnaUBpYLM_7counter (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 4
    i32.add
    i32.const 34504
    i32.const 6
    call $_RINvXs_NvMNtCsjAdaHq5oevx_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs42wnaUBpYLM_7counter
    local.get 3
    i32.const 0
    i32.store offset=48
    local.get 3
    i64.const 4294967296
    i64.store offset=40 align=4
    local.get 3
    i32.const 0
    i32.store8 offset=104
    local.get 3
    i32.const 0
    i32.store offset=100
    local.get 2
    i32.const 1
    i32.shl
    local.get 2
    i32.const 31
    i32.shr_s
    i32.xor
    local.set 2
    i32.const 1
    local.set 4
    block  ;; label = @1
      loop  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 6
          i32.ne
          br_if 0 (;@3;)
          i32.const 5
          local.set 4
          br 2 (;@1;)
        end
        local.get 3
        i32.const 100
        i32.add
        local.get 4
        i32.add
        i32.const -1
        i32.add
        local.tee 5
        local.get 2
        i32.store8
        local.get 2
        i32.const 128
        i32.lt_u
        br_if 1 (;@1;)
        local.get 5
        local.get 2
        i32.const 128
        i32.or
        i32.store8
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        local.get 2
        i32.const 7
        i32.shr_u
        local.set 2
        br 0 (;@2;)
      end
    end
    local.get 3
    i32.const 40
    i32.add
    local.get 3
    i32.const 100
    i32.add
    local.get 4
    call $_RNvMs1_NtCsjAdaHq5oevx_5alloc3vecINtB5_3VechE17extend_from_sliceCs18QDUBBZXOQ_13myrmic_common
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.load offset=40
        local.tee 6
        i32.const -1
        i32.ne
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=4
        local.get 3
        i32.load offset=8
        call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
        i32.const 28
        local.set 2
        i32.const 32798
        local.set 4
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=44
      local.set 5
      local.get 3
      i32.const 16
      i32.add
      local.get 3
      i32.load offset=48
      local.tee 7
      i32.const 1024
      i32.add
      call $_RINvNtCsjAdaHq5oevx_5alloc3vec9from_elemhECsdwI7iSz8jyL_10myrmic_sdk
      local.get 3
      i32.const 64
      i32.add
      local.tee 8
      local.get 1
      call $_RNvMNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions2db5stateINtB2_5StatelE5scopeCs42wnaUBpYLM_7counter
      local.get 3
      local.get 7
      i32.store offset=60
      local.get 3
      local.get 5
      i32.store offset=56
      local.get 3
      local.get 6
      i32.store offset=52
      local.get 3
      local.get 3
      i64.load offset=4 align=4
      i64.store offset=40
      local.get 3
      local.get 3
      i32.load offset=12
      i32.store offset=48
      local.get 3
      local.get 3
      i32.load offset=20
      local.tee 4
      local.get 3
      i32.load offset=24
      i32.add
      i32.store offset=108
      local.get 3
      local.get 4
      i32.store offset=104
      local.get 3
      local.get 4
      i32.store offset=100
      local.get 8
      local.get 3
      i32.const 100
      i32.add
      call $_RINvXNvNtCs18QDUBBZXOQ_13myrmic_common2db1__NtB5_5ScopeNtNtCs3wU1vCl2ErL_10serde_core3ser9Serialize9serializeQINtNtNtCs2WOo28oSl5V_8postcard3ser10serializer10SerializerNtNtB1P_7flavors5SliceEECsdwI7iSz8jyL_10myrmic_sdk
      local.set 2
      local.get 3
      i32.load offset=44
      local.set 9
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.const 255
              i32.and
              i32.const 255
              i32.ne
              br_if 0 (;@5;)
              local.get 3
              i32.const 100
              i32.add
              local.get 9
              local.get 3
              i32.load offset=48
              call $_RNvXs_NtNtCs2WOo28oSl5V_8postcard3ser10serializerQINtB4_10SerializerNtNtB6_7flavors5SliceENtNtCs3wU1vCl2ErL_10serde_core3ser10Serializer13serialize_strCsdwI7iSz8jyL_10myrmic_sdk
              i32.const 255
              i32.and
              i32.const 255
              i32.ne
              br_if 0 (;@5;)
              local.get 3
              i32.const 100
              i32.add
              local.get 7
              call $_RNvMNtNtCs2WOo28oSl5V_8postcard3ser10serializerINtB2_10SerializerNtNtB4_7flavors5SliceE21try_push_varint_usizeCsdwI7iSz8jyL_10myrmic_sdk
              i32.const 255
              i32.and
              i32.const 255
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              local.set 2
              local.get 3
              i32.load offset=104
              local.set 10
              local.get 3
              i32.load offset=108
              local.set 11
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 10
                  local.get 2
                  i32.add
                  local.set 1
                  local.get 7
                  local.get 2
                  i32.eq
                  br_if 1 (;@6;)
                  local.get 1
                  local.get 11
                  i32.eq
                  br_if 2 (;@5;)
                  local.get 1
                  local.get 5
                  local.get 2
                  i32.add
                  i32.load8_u
                  i32.store8
                  local.get 2
                  i32.const 1
                  i32.add
                  local.set 2
                  br 0 (;@7;)
                end
              end
              local.get 3
              i32.load offset=100
              local.tee 2
              br_if 1 (;@4;)
            end
            local.get 8
            call $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueNtNtCs18QDUBBZXOQ_13myrmic_common2db5ScopeECsdwI7iSz8jyL_10myrmic_sdk
            local.get 3
            i32.load offset=40
            local.get 9
            call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
            local.get 6
            local.get 5
            call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
            local.get 3
            i32.load offset=16
            local.get 4
            call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
            br 1 (;@3;)
          end
          local.get 3
          i32.const 28
          i32.add
          local.get 4
          local.get 1
          local.get 2
          i32.sub
          call $_RNvNtNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions2db2kv11c_functions7key_put
          call $_RNvXNtCsdwI7iSz8jyL_10myrmic_sdk5errorlNtB2_9ErrorCode9to_result
          local.get 3
          i32.load offset=28
          local.set 2
          local.get 8
          call $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueNtNtCs18QDUBBZXOQ_13myrmic_common2db5ScopeECsdwI7iSz8jyL_10myrmic_sdk
          local.get 3
          i32.load offset=40
          local.get 9
          call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
          local.get 6
          local.get 5
          call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
          local.get 3
          i32.load offset=16
          local.get 4
          call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
          local.get 2
          i32.const -1
          i32.eq
          br_if 1 (;@2;)
        end
        i32.const 14
        local.set 2
        i32.const 32826
        local.set 4
        br 1 (;@1;)
      end
      i32.const 0
      local.set 4
    end
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 4
    i32.store
    local.get 3
    i32.const 112
    i32.add
    global.set $__stack_pointer)
  (func $_RNvMs1_NtCsjAdaHq5oevx_5alloc3vecINtB5_3VechE17extend_from_sliceCs18QDUBBZXOQ_13myrmic_common (type 5) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 1
    local.get 2
    i32.add
    call $_RNvXs2_NtNtCsjAdaHq5oevx_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsdmBIiMovVma_4core5slice4iter4IterhEE11spec_extendCs18QDUBBZXOQ_13myrmic_common)
  (func $_RINvNtCsjAdaHq5oevx_5alloc3vec9from_elemhECsdwI7iSz8jyL_10myrmic_sdk (type 3) (param i32 i32)
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
  (func $_RINvXNvNtCs18QDUBBZXOQ_13myrmic_common2db1__NtB5_5ScopeNtNtCs3wU1vCl2ErL_10serde_core3ser9Serialize9serializeQINtNtNtCs2WOo28oSl5V_8postcard3ser10serializer10SerializerNtNtB1P_7flavors5SliceEECsdwI7iSz8jyL_10myrmic_sdk (type 1) (param i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load
              i32.const -2
              i32.eq
              br_if 0 (;@5;)
              local.get 1
              i32.const 1
              call $_RNvMNtNtCs2WOo28oSl5V_8postcard3ser10serializerINtB2_10SerializerNtNtB4_7flavors5SliceE19try_push_varint_u32CsdwI7iSz8jyL_10myrmic_sdk
              i32.const 255
              i32.and
              i32.const 255
              i32.eq
              br_if 1 (;@4;)
              br 4 (;@1;)
            end
            local.get 1
            i32.const 0
            call $_RNvMNtNtCs2WOo28oSl5V_8postcard3ser10serializerINtB2_10SerializerNtNtB4_7flavors5SliceE19try_push_varint_u32CsdwI7iSz8jyL_10myrmic_sdk
            i32.const 255
            i32.and
            i32.const 255
            i32.ne
            br_if 3 (;@1;)
            br 1 (;@3;)
          end
          local.get 1
          local.get 0
          i32.load offset=4
          local.get 0
          i32.load offset=8
          call $_RNvXs_NtNtCs2WOo28oSl5V_8postcard3ser10serializerQINtB4_10SerializerNtNtB6_7flavors5SliceENtNtCs3wU1vCl2ErL_10serde_core3ser10Serializer13serialize_strCsdwI7iSz8jyL_10myrmic_sdk
          local.tee 2
          i32.const 255
          i32.and
          i32.const 255
          i32.ne
          br_if 1 (;@2;)
        end
        local.get 1
        local.get 0
        i32.const 12
        i32.add
        call $_RINvXs5_NtNtCs2WOo28oSl5V_8postcard3ser10serializerQINtB6_10SerializerNtNtB8_7flavors5SliceENtNtCs3wU1vCl2ErL_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCsdmBIiMovVma_4core6option6OptionINtNtCsjAdaHq5oevx_5alloc6borrow3CoweEEECsdwI7iSz8jyL_10myrmic_sdk
        local.tee 2
        i32.const 255
        i32.and
        i32.const 255
        i32.ne
        br_if 0 (;@2;)
        local.get 1
        local.get 0
        i32.const 24
        i32.add
        call $_RINvXs5_NtNtCs2WOo28oSl5V_8postcard3ser10serializerQINtB6_10SerializerNtNtB8_7flavors5SliceENtNtCs3wU1vCl2ErL_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCsdmBIiMovVma_4core6option6OptionINtNtCsjAdaHq5oevx_5alloc6borrow3CoweEEECsdwI7iSz8jyL_10myrmic_sdk
        local.set 2
      end
      local.get 2
      return
    end
    i32.const 2)
  (func $_RNvXs_NtNtCs2WOo28oSl5V_8postcard3ser10serializerQINtB4_10SerializerNtNtB6_7flavors5SliceENtNtCs3wU1vCl2ErL_10serde_core3ser10Serializer13serialize_strCsdwI7iSz8jyL_10myrmic_sdk (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32)
    i32.const 2
    local.set 3
    block  ;; label = @1
      local.get 0
      local.get 2
      call $_RNvMNtNtCs2WOo28oSl5V_8postcard3ser10serializerINtB2_10SerializerNtNtB4_7flavors5SliceE21try_push_varint_usizeCsdwI7iSz8jyL_10myrmic_sdk
      i32.const 255
      i32.and
      i32.const 255
      i32.ne
      br_if 0 (;@1;)
      local.get 2
      local.get 0
      i32.load offset=8
      local.get 0
      i32.load offset=4
      local.tee 4
      i32.sub
      i32.gt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 4
      local.get 1
      local.get 2
      call $memcpy
      local.get 2
      i32.add
      i32.store offset=4
      i32.const 255
      local.set 3
    end
    local.get 3)
  (func $_RNvMNtNtCs2WOo28oSl5V_8postcard3ser10serializerINtB2_10SerializerNtNtB4_7flavors5SliceE21try_push_varint_usizeCsdwI7iSz8jyL_10myrmic_sdk (type 1) (param i32 i32) (result i32)
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
    call $_RNvNtCs2WOo28oSl5V_8postcard6varint12varint_usize.170
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
      local.get 0
      local.get 4
      local.get 2
      i32.load
      local.get 3
      call $memcpy
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
  (func $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueNtNtCs18QDUBBZXOQ_13myrmic_common2db5ScopeECsdwI7iSz8jyL_10myrmic_sdk (type 4) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 1
      i32.const -2
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      i32.load offset=4
      call $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueINtNtCsjAdaHq5oevx_5alloc6borrow3CoweEECs42wnaUBpYLM_7counter
    end
    local.get 0
    i32.load offset=12
    local.get 0
    i32.load offset=16
    call $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjAdaHq5oevx_5alloc6borrow3CoweEEECs42wnaUBpYLM_7counter
    local.get 0
    i32.load offset=24
    local.get 0
    i32.load offset=28
    call $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjAdaHq5oevx_5alloc6borrow3CoweEEECs42wnaUBpYLM_7counter)
  (func $_RNvXNtCsdwI7iSz8jyL_10myrmic_sdk5errorlNtB2_9ErrorCode9to_result (type 3) (param i32 i32)
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
  (func $_RNvMs_NtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions2db5stateINtB4_5StatelE9load_fromCs42wnaUBpYLM_7counter (type 3) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 384
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 32
    i32.add
    i32.const 34504
    i32.const 6
    call $_RINvXs_NvMNtCsjAdaHq5oevx_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs42wnaUBpYLM_7counter
    local.get 2
    i32.const 44
    i32.add
    i32.const 0
    i32.const 256
    call $memset
    drop
    local.get 2
    i32.const 300
    i32.add
    i32.const 8192
    call $_RINvNtCsjAdaHq5oevx_5alloc3vec9from_elemhECsdwI7iSz8jyL_10myrmic_sdk
    local.get 2
    i32.const 324
    i32.add
    local.tee 3
    local.get 1
    call $_RNvMNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions2db5stateINtB2_5StatelE5scopeCs42wnaUBpYLM_7counter
    local.get 2
    local.get 2
    i64.load offset=32 align=4
    i64.store offset=312
    local.get 2
    local.get 2
    i32.load offset=40
    i32.store offset=320
    local.get 2
    i32.load offset=308
    local.set 4
    local.get 2
    i32.load offset=304
    local.set 5
    local.get 2
    local.get 2
    i32.const 44
    i32.add
    i32.const 256
    i32.add
    i32.store offset=380
    local.get 2
    local.get 2
    i32.const 44
    i32.add
    i32.store offset=376
    local.get 2
    local.get 2
    i32.const 44
    i32.add
    i32.store offset=372
    local.get 3
    local.get 2
    i32.const 372
    i32.add
    call $_RINvXNvNtCs18QDUBBZXOQ_13myrmic_common2db1__NtB5_5ScopeNtNtCs3wU1vCl2ErL_10serde_core3ser9Serialize9serializeQINtNtNtCs2WOo28oSl5V_8postcard3ser10serializer10SerializerNtNtB1P_7flavors5SliceEECsdwI7iSz8jyL_10myrmic_sdk
    local.set 6
    local.get 2
    i32.load offset=316
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 6
          i32.const 255
          i32.and
          i32.const 255
          i32.ne
          br_if 0 (;@3;)
          local.get 2
          i32.const 372
          i32.add
          local.get 1
          local.get 2
          i32.load offset=320
          call $_RNvXs_NtNtCs2WOo28oSl5V_8postcard3ser10serializerQINtB4_10SerializerNtNtB6_7flavors5SliceENtNtCs3wU1vCl2ErL_10serde_core3ser10Serializer13serialize_strCsdwI7iSz8jyL_10myrmic_sdk
          i32.const 255
          i32.and
          i32.const 255
          i32.ne
          br_if 0 (;@3;)
          local.get 2
          i32.load offset=372
          local.tee 6
          br_if 1 (;@2;)
        end
        i32.const 1
        local.set 6
        i32.const 3
        local.set 7
        i32.const 39440
        local.set 8
        i32.const 23
        local.set 4
        br 1 (;@1;)
      end
      local.get 2
      i32.const 372
      i32.add
      local.get 2
      i32.const 44
      i32.add
      local.get 2
      i32.load offset=376
      local.get 6
      i32.sub
      local.get 5
      local.get 4
      call $_RNvNtNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions2db2kv11c_functions7key_get
      call $_RNvXNtCsdwI7iSz8jyL_10myrmic_sdk5errorlNtB2_9ErrorCode9to_result
      block  ;; label = @2
        local.get 2
        i32.load offset=372
        local.tee 7
        i32.const -1
        i32.eq
        br_if 0 (;@2;)
        local.get 2
        i32.load offset=380
        local.set 4
        local.get 2
        i32.load offset=376
        local.set 8
        i32.const 1
        local.set 6
        br 1 (;@1;)
      end
      local.get 2
      local.get 5
      i32.store offset=364
      local.get 2
      local.get 5
      local.get 4
      i32.add
      i32.store offset=368
      local.get 2
      i32.const 24
      i32.add
      local.get 2
      i32.const 364
      i32.add
      call $_RNvXs_NtNtCs2WOo28oSl5V_8postcard2de7flavorsNtB4_5SliceNtB4_6Flavor3pop.168
      block  ;; label = @2
        local.get 2
        i32.load8_u offset=24
        br_if 0 (;@2;)
        i32.const -1
        local.set 7
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.load8_u offset=25
            i32.const 255
            i32.and
            br_table 1 (;@3;) 0 (;@4;) 2 (;@2;)
          end
          i32.const -1
          local.set 6
          i32.const 0
          local.set 4
          i32.const 0
          local.set 9
          loop  ;; label = @4
            local.get 6
            i32.const 4
            i32.eq
            br_if 2 (;@2;)
            local.get 2
            i32.const 16
            i32.add
            local.get 2
            i32.const 364
            i32.add
            call $_RNvXs_NtNtCs2WOo28oSl5V_8postcard2de7flavorsNtB4_5SliceNtB4_6Flavor3pop.168
            local.get 2
            i32.load8_u offset=16
            br_if 2 (;@2;)
            local.get 6
            i32.const 1
            i32.add
            local.set 6
            local.get 2
            i32.load8_u offset=17
            local.tee 10
            i32.const 127
            i32.and
            local.get 4
            i32.shl
            local.get 9
            i32.or
            local.set 9
            local.get 4
            i32.const 7
            i32.add
            local.set 4
            local.get 10
            i32.const 24
            i32.shl
            i32.const 24
            i32.shr_s
            i32.const 0
            i32.lt_s
            br_if 0 (;@4;)
          end
          block  ;; label = @4
            local.get 6
            i32.const 4
            i32.ne
            br_if 0 (;@4;)
            local.get 10
            i32.const 255
            i32.and
            i32.const 15
            i32.gt_u
            br_if 2 (;@2;)
          end
          local.get 2
          i32.const 8
          i32.add
          i32.const 0
          local.get 9
          i32.const 1048576
          local.get 9
          i32.const 1048576
          i32.lt_u
          select
          local.get 2
          i32.load offset=368
          local.get 2
          i32.load offset=364
          i32.sub
          local.get 9
          i32.lt_u
          select
          call $_RNvMs5_NtCsjAdaHq5oevx_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdwI7iSz8jyL_10myrmic_sdk
          local.get 2
          i32.const 0
          i32.store offset=380
          local.get 2
          local.get 2
          i64.load offset=8
          i64.store offset=372 align=4
          block  ;; label = @4
            loop  ;; label = @5
              local.get 9
              i32.eqz
              br_if 1 (;@4;)
              local.get 2
              local.get 2
              i32.const 364
              i32.add
              call $_RNvXs_NtNtCs2WOo28oSl5V_8postcard2de7flavorsNtB4_5SliceNtB4_6Flavor3pop.168
              block  ;; label = @6
                local.get 2
                i32.load8_u
                i32.eqz
                br_if 0 (;@6;)
                local.get 2
                i32.load offset=372
                local.get 2
                i32.load offset=376
                call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
                br 4 (;@2;)
              end
              local.get 2
              i32.const 372
              i32.add
              local.get 2
              i32.load8_u offset=1
              call $_RNvMsF_NtCsjAdaHq5oevx_5alloc3vecINtB5_3VechE4pushCsdwI7iSz8jyL_10myrmic_sdk
              local.get 9
              i32.const -1
              i32.add
              local.set 9
              br 0 (;@5;)
            end
          end
          local.get 2
          i32.load offset=372
          local.tee 7
          i32.const -3
          i32.gt_u
          br_if 1 (;@2;)
          local.get 7
          i32.const -3
          i32.eq
          br_if 1 (;@2;)
          local.get 2
          i64.load32_u offset=377 align=1
          local.get 2
          i32.const 383
          i32.add
          i64.load8_u
          i64.const 48
          i64.shl
          local.get 2
          i32.const 381
          i32.add
          i64.load16_u align=1
          i64.const 32
          i64.shl
          i64.or
          i64.or
          local.set 11
          local.get 2
          i32.load8_u offset=376
          local.set 6
        end
        local.get 11
        i32.wrap_i64
        i32.const 8
        i32.shl
        local.get 6
        i32.const 255
        i32.and
        i32.or
        local.set 8
        local.get 11
        i64.const 24
        i64.shr_u
        i32.wrap_i64
        local.set 4
        i32.const 0
        local.set 6
        br 1 (;@1;)
      end
      i32.const 1
      local.set 6
      i32.const 3
      local.set 7
      i32.const 39463
      local.set 8
      i32.const 26
      local.set 4
    end
    local.get 3
    call $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueNtNtCs18QDUBBZXOQ_13myrmic_common2db5ScopeECsdwI7iSz8jyL_10myrmic_sdk
    local.get 2
    i32.load offset=312
    local.get 1
    call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.eqz
        br_if 0 (;@2;)
        i32.const 34679
        local.set 3
        i32.const 18
        local.set 1
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
                            local.get 7
                            br_table 9 (;@3;) 0 (;@12;) 1 (;@11;) 2 (;@10;) 3 (;@9;) 4 (;@8;) 5 (;@7;) 6 (;@6;) 7 (;@5;) 8 (;@4;) 9 (;@3;)
                          end
                          i32.const 34697
                          local.set 3
                          i32.const 19
                          local.set 1
                          br 8 (;@3;)
                        end
                        i32.const 34716
                        local.set 3
                        i32.const 19
                        local.set 1
                        br 7 (;@3;)
                      end
                      local.get 4
                      local.set 1
                      local.get 8
                      local.set 3
                      br 6 (;@3;)
                    end
                    i32.const 34735
                    local.set 3
                    i32.const 9
                    local.set 1
                    br 5 (;@3;)
                  end
                  i32.const 34744
                  local.set 3
                  i32.const 36
                  local.set 1
                  br 4 (;@3;)
                end
                i32.const 34780
                local.set 3
                i32.const 20
                local.set 1
                br 3 (;@3;)
              end
              i32.const 34800
              local.set 3
              i32.const 36
              local.set 1
              br 2 (;@3;)
            end
            i32.const 34836
            local.set 3
            i32.const 34
            local.set 1
            br 1 (;@3;)
          end
          i32.const 34870
          local.set 3
          i32.const 40
          local.set 1
        end
        local.get 0
        local.get 1
        i32.store offset=8
        local.get 0
        local.get 3
        i32.store offset=4
        i32.const 1
        local.set 3
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 7
        i32.const -1
        i32.eq
        br_if 0 (;@2;)
        local.get 4
        i32.const 5
        local.get 4
        i32.const 5
        i32.lt_u
        select
        local.set 12
        i32.const 0
        local.set 13
        local.get 8
        local.set 1
        i32.const 0
        local.set 6
        i32.const 0
        local.set 4
        block  ;; label = @3
          loop  ;; label = @4
            i32.const 30
            local.set 10
            i32.const 32768
            local.set 14
            local.get 6
            local.tee 3
            local.get 12
            i32.eq
            br_if 1 (;@3;)
            local.get 1
            i32.load8_s
            local.tee 9
            i32.const 127
            i32.and
            local.get 3
            i32.const 7
            i32.mul
            i32.shl
            local.get 4
            i32.or
            local.set 4
            local.get 1
            i32.const 1
            i32.add
            local.set 1
            local.get 3
            i32.const 1
            i32.add
            local.set 6
            local.get 9
            i32.const 0
            i32.lt_s
            br_if 0 (;@4;)
          end
          block  ;; label = @4
            local.get 3
            i32.const 4
            i32.ne
            br_if 0 (;@4;)
            local.get 9
            i32.const 15
            i32.gt_u
            br_if 1 (;@3;)
          end
          i32.const 1
          local.set 13
          i32.const 0
          local.set 14
          local.get 4
          i32.const 1
          i32.shr_u
          i32.const 0
          local.get 4
          i32.const 1
          i32.and
          i32.sub
          i32.xor
          local.set 10
        end
        local.get 7
        local.get 8
        call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
        block  ;; label = @3
          local.get 13
          br_if 0 (;@3;)
          local.get 0
          local.get 10
          i32.store offset=8
          local.get 0
          local.get 14
          i32.store offset=4
          i32.const 1
          local.set 3
          br 2 (;@1;)
        end
        local.get 0
        local.get 10
        i32.store offset=8
        local.get 0
        i32.const 1
        i32.store offset=4
        i32.const 0
        local.set 3
        br 1 (;@1;)
      end
      i32.const 0
      local.set 3
      local.get 0
      i32.const 0
      i32.store offset=4
    end
    local.get 0
    local.get 3
    i32.store
    local.get 2
    i32.load offset=300
    local.get 5
    call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
    local.get 2
    i32.const 384
    i32.add
    global.set $__stack_pointer)
  (func $_RNvXs_NtNtCs2WOo28oSl5V_8postcard2de7flavorsNtB4_5SliceNtB4_6Flavor3pop.168 (type 3) (param i32 i32)
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
  (func $_RNvMs5_NtCsjAdaHq5oevx_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdwI7iSz8jyL_10myrmic_sdk (type 3) (param i32 i32)
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
  (func $_RNvMsF_NtCsjAdaHq5oevx_5alloc3vecINtB5_3VechE4pushCsdwI7iSz8jyL_10myrmic_sdk (type 3) (param i32 i32)
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
  (func $_RNvNtCsjAdaHq5oevx_5alloc3fmt6format (type 5) (param i32 i32 i32)
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
              local.get 2
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              local.get 1
              local.get 2
              i32.const 1
              i32.shr_u
              call $_RINvXs_NvMNtCsjAdaHq5oevx_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs42wnaUBpYLM_7counter
              br 1 (;@4;)
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 1
                      i32.load8_u
                      local.tee 4
                      i32.eqz
                      br_if 0 (;@9;)
                      i32.const 0
                      local.set 5
                      local.get 1
                      local.set 6
                      i32.const 0
                      local.set 7
                      loop  ;; label = @10
                        local.get 6
                        i32.const 1
                        i32.add
                        local.set 6
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 4
                            i32.const 24
                            i32.shl
                            i32.const 24
                            i32.shr_s
                            i32.const -1
                            i32.gt_s
                            br_if 0 (;@12;)
                            block  ;; label = @13
                              local.get 4
                              i32.const 255
                              i32.and
                              i32.const 128
                              i32.ne
                              br_if 0 (;@13;)
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
                              br 2 (;@11;)
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
                            br 1 (;@11;)
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
                        br_if 0 (;@10;)
                      end
                      local.get 7
                      local.get 5
                      i32.const 16
                      i32.lt_u
                      i32.and
                      i32.eqz
                      br_if 1 (;@8;)
                    end
                    i32.const 1
                    local.set 6
                    br 1 (;@7;)
                  end
                  i32.const 1
                  local.set 6
                  local.get 5
                  i32.const 1
                  i32.shl
                  local.tee 4
                  i32.const -1
                  i32.le_s
                  br_if 4 (;@3;)
                  local.get 4
                  br_if 1 (;@6;)
                end
                i32.const 0
                local.set 4
                br 1 (;@5;)
              end
              local.get 4
              call $_RNvXs_NtCsf2KWoDnNIRz_14embedded_alloc4llffNtB4_4HeapNtNtNtCsdmBIiMovVma_4core5alloc6global11GlobalAlloc5alloc
              local.tee 6
              i32.eqz
              br_if 3 (;@2;)
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
            i32.const 35124
            local.get 1
            local.get 2
            call $_RNvNtCsdmBIiMovVma_4core3fmt5write
            br_if 3 (;@1;)
            local.get 0
            local.get 3
            i32.load offset=8
            i32.store offset=8
            local.get 0
            local.get 3
            i64.load align=4
            i64.store align=4
          end
          local.get 3
          i32.const 16
          i32.add
          global.set $__stack_pointer
          return
        end
        call $_RNvNtCsjAdaHq5oevx_5alloc7raw_vec17capacity_overflow
        unreachable
      end
      local.get 4
      call $_RNvNtCsjAdaHq5oevx_5alloc5alloc18handle_alloc_error
      unreachable
    end
    i32.const 35164
    i32.const 86
    local.get 3
    i32.const 15
    i32.add
    i32.const 35148
    i32.const 35252
    call $_RNvNtCsdmBIiMovVma_4core6result13unwrap_failed
    unreachable)
  (func $_RNvXs_NtCsf2KWoDnNIRz_14embedded_alloc4llffNtB4_4HeapNtNtNtCsdmBIiMovVma_4core5alloc6global11GlobalAlloc5alloc (type 6) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const 38696
    call $_RNvMst_NtCsdmBIiMovVma_4core4cellINtB5_7RefCellNtCsbqFb0Tus64I_21linked_list_allocator4HeapE10borrow_mutCsf2KWoDnNIRz_14embedded_alloc
    i32.const 0
    local.set 2
    local.get 1
    i32.const 12
    i32.add
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 8
          local.get 0
          i32.const 8
          i32.gt_u
          select
          i32.const 3
          i32.add
          local.tee 0
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=72432
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.const -4
          i32.and
          local.set 5
          local.get 0
          i32.const -1
          i32.xor
          i32.const 31
          i32.shr_u
          local.set 6
          i32.const 72428
          local.set 0
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  loop  ;; label = @8
                    local.get 0
                    local.set 7
                    block  ;; label = @9
                      local.get 4
                      local.tee 0
                      i32.load
                      local.tee 4
                      local.get 5
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 0
                      local.set 8
                      block  ;; label = @10
                        local.get 0
                        local.get 6
                        call $_RNvCsbqFb0Tus64I_21linked_list_allocator8align_up
                        local.tee 9
                        local.get 0
                        i32.eq
                        local.tee 10
                        br_if 0 (;@10;)
                        local.get 0
                        i32.const 8
                        i32.add
                        local.get 6
                        call $_RNvCsbqFb0Tus64I_21linked_list_allocator8align_up
                        local.tee 8
                        local.get 0
                        i32.sub
                        local.set 11
                      end
                      local.get 8
                      local.get 5
                      i32.add
                      local.tee 12
                      local.get 0
                      local.get 4
                      i32.add
                      local.tee 4
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 4
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
                      local.get 4
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 7
                      i32.const 0
                      i32.store offset=4
                      local.get 0
                      i32.load offset=4
                      local.set 4
                      local.get 0
                      i32.const 0
                      i32.store offset=4
                      local.get 7
                      i32.const 4
                      i32.add
                      local.set 7
                      local.get 9
                      local.get 0
                      i32.ne
                      br_if 3 (;@6;)
                      local.get 13
                      local.set 11
                      local.get 12
                      local.set 0
                      br 4 (;@5;)
                    end
                    local.get 0
                    i32.load offset=4
                    local.tee 4
                    br_if 0 (;@8;)
                    br 5 (;@3;)
                  end
                end
                local.get 7
                i32.const 0
                i32.store offset=4
                local.get 0
                i32.load offset=4
                local.set 4
                local.get 0
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
              local.get 4
              i32.store offset=4
              local.get 12
              local.get 13
              i32.store
              local.get 0
              local.get 12
              i32.store offset=4
              local.get 0
              local.get 11
              i32.store
              local.get 7
              local.get 0
              i32.store
              br 3 (;@2;)
            end
            local.get 0
            local.get 4
            i32.store offset=4
            local.get 0
            local.get 11
            i32.store
            local.get 0
            local.set 4
          end
          local.get 7
          local.get 4
          i32.store
          local.get 8
          br_if 1 (;@2;)
        end
        i32.const 0
        local.set 5
        br 1 (;@1;)
      end
      local.get 1
      local.get 6
      i32.store offset=12
      local.get 1
      i32.const 8
      i32.add
      local.set 3
    end
    local.get 3
    local.get 5
    i32.store
    block  ;; label = @1
      local.get 1
      i32.load offset=12
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      i32.load offset=72424
      local.get 1
      i32.load offset=8
      i32.add
      i32.store offset=72424
      local.get 8
      local.set 2
    end
    i32.const 0
    i32.const 0
    i32.load offset=72420
    i32.const 1
    i32.add
    i32.store offset=72420
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2)
  (func $_RNvNtCsdmBIiMovVma_4core3fmt5write (type 2) (param i32 i32 i32 i32) (result i32)
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
        call_indirect (type 0)
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
                  call_indirect (type 1)
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
                  call_indirect (type 0)
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
                call_indirect (type 0)
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
            call_indirect (type 1)
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
  (func $_RNvNtCsjAdaHq5oevx_5alloc7raw_vec17capacity_overflow (type 7)
    i32.const 35088
    i32.const 35
    i32.const 35108
    call $_RNvNtCsdmBIiMovVma_4core9panicking9panic_fmt
    unreachable)
  (func $_RNvNtCsjAdaHq5oevx_5alloc5alloc18handle_alloc_error (type 4) (param i32)
    local.get 0
    call $_RNvCs1njKG4L9aB3_7___rustc26___rust_alloc_error_handler
    unreachable)
  (func $_RNvNtCsdmBIiMovVma_4core6result13unwrap_failed (type 8) (param i32 i32 i32 i32 i32)
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
    i32.const 1
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
    i32.const 2
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 5
    i64.extend_i32_u
    i64.or
    i64.store offset=16
    i32.const 33299
    local.get 5
    i32.const 16
    i32.add
    local.get 4
    call $_RNvNtCsdmBIiMovVma_4core9panicking9panic_fmt
    unreachable)
  (func $_RNvXs1g_NtCsdmBIiMovVma_4core3fmtRNtCs3cr5glMGIhR_4uuid4UuidNtB6_5Debug3fmtCs42wnaUBpYLM_7counter (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.load offset=4
    local.set 3
    local.get 1
    i32.load
    local.set 4
    local.get 0
    i32.load
    local.set 5
    local.get 2
    i64.const 0
    i64.store offset=32
    local.get 2
    i64.const 0
    i64.store offset=24
    local.get 2
    i64.const 0
    i64.store offset=16
    local.get 2
    i64.const 0
    i64.store offset=8
    local.get 2
    i32.const 8
    i32.add
    local.set 0
    i32.const 0
    local.set 1
    block  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.const 16
        i32.eq
        br_if 1 (;@1;)
        local.get 0
        i32.const 39
        i32.const 0
        local.get 5
        local.get 1
        i32.add
        i32.load8_u
        local.tee 6
        i32.const 159
        i32.gt_u
        select
        local.get 6
        i32.const 4
        i32.shr_u
        i32.add
        i32.const 48
        i32.add
        i32.store8
        local.get 0
        i32.const 1
        i32.add
        i32.const 39
        i32.const 0
        local.get 6
        i32.const 15
        i32.and
        local.tee 6
        i32.const 9
        i32.gt_u
        select
        local.get 6
        i32.add
        i32.const 48
        i32.add
        i32.store8
        local.get 0
        i32.const 2
        i32.add
        local.set 0
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        br 0 (;@2;)
      end
    end
    i32.const 0
    local.set 1
    local.get 2
    i32.const 44
    i32.add
    i32.const 0
    i32.const 36
    call $memset
    drop
    block  ;; label = @1
      loop  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 8
          i32.ne
          br_if 0 (;@3;)
          i32.const 45
          local.set 0
          i32.const 8
          local.set 1
          loop  ;; label = @4
            local.get 2
            i32.const 44
            i32.add
            local.get 1
            i32.add
            local.get 0
            i32.store8
            block  ;; label = @5
              local.get 1
              i32.const 12
              i32.ne
              br_if 0 (;@5;)
              local.get 2
              i32.const 45
              i32.store8 offset=57
              local.get 2
              i32.const 20
              i32.add
              local.set 0
              i32.const 0
              local.set 1
              loop  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  i32.const 4
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 2
                  i32.const 45
                  i32.store8 offset=62
                  local.get 2
                  i32.const 24
                  i32.add
                  local.set 0
                  i32.const 0
                  local.set 1
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 1
                      i32.const 4
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 2
                      i32.const 45
                      i32.store8 offset=67
                      local.get 2
                      i32.const 28
                      i32.add
                      local.set 0
                      i32.const 0
                      local.set 1
                      loop  ;; label = @10
                        local.get 1
                        i32.const 12
                        i32.eq
                        br_if 9 (;@1;)
                        local.get 2
                        i32.const 44
                        i32.add
                        local.get 1
                        i32.add
                        i32.const 24
                        i32.add
                        local.get 0
                        local.get 1
                        i32.add
                        i32.load8_u
                        i32.store8
                        local.get 1
                        i32.const 1
                        i32.add
                        local.set 1
                        br 0 (;@10;)
                      end
                    end
                    local.get 2
                    i32.const 44
                    i32.add
                    local.get 1
                    i32.add
                    i32.const 19
                    i32.add
                    local.get 0
                    local.get 1
                    i32.add
                    i32.load8_u
                    i32.store8
                    local.get 1
                    i32.const 1
                    i32.add
                    local.set 1
                    br 0 (;@8;)
                  end
                end
                local.get 2
                i32.const 44
                i32.add
                local.get 1
                i32.add
                i32.const 14
                i32.add
                local.get 0
                local.get 1
                i32.add
                i32.load8_u
                i32.store8
                local.get 1
                i32.const 1
                i32.add
                local.set 1
                br 0 (;@6;)
              end
            end
            local.get 2
            i32.const 8
            i32.add
            local.get 1
            i32.add
            i32.load8_u
            local.set 0
            local.get 1
            i32.const 1
            i32.add
            local.set 1
            br 0 (;@4;)
          end
        end
        local.get 2
        i32.const 44
        i32.add
        local.get 1
        i32.add
        local.get 2
        i32.const 8
        i32.add
        local.get 1
        i32.add
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 44
    i32.add
    i32.const 36
    call $memcpy
    drop
    local.get 4
    local.get 2
    i32.const 8
    i32.add
    i32.const 36
    local.get 3
    i32.load offset=12
    call_indirect (type 0)
    local.set 1
    local.get 2
    i32.const 80
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_RNvXs1g_NtCsdmBIiMovVma_4core3fmtRReNtB6_5Debug3fmtCs42wnaUBpYLM_7counter (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.tee 0
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
      call_indirect (type 1)
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
            local.set 1
            block  ;; label = @5
              loop  ;; label = @6
                local.get 12
                local.get 1
                i32.add
                local.tee 14
                i32.load8_u
                local.tee 0
                i32.const -127
                i32.add
                i32.const 255
                i32.and
                i32.const 161
                i32.lt_u
                br_if 1 (;@5;)
                local.get 0
                i32.const 34
                i32.eq
                br_if 1 (;@5;)
                local.get 0
                i32.const 92
                i32.eq
                br_if 1 (;@5;)
                local.get 11
                local.get 1
                i32.const 1
                i32.add
                local.tee 1
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
                local.tee 0
                i32.const -1
                i32.le_s
                br_if 0 (;@6;)
                local.get 14
                i32.const 1
                i32.add
                local.set 12
                local.get 0
                i32.const 255
                i32.and
                local.set 0
                br 1 (;@5;)
              end
              local.get 14
              i32.load8_u offset=1
              i32.const 63
              i32.and
              local.set 11
              local.get 0
              i32.const 31
              i32.and
              local.set 12
              block  ;; label = @6
                local.get 0
                i32.const -33
                i32.gt_u
                br_if 0 (;@6;)
                local.get 12
                i32.const 6
                i32.shl
                local.get 11
                i32.or
                local.set 0
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
                local.get 0
                i32.const -16
                i32.ge_u
                br_if 0 (;@6;)
                local.get 11
                local.get 12
                i32.const 12
                i32.shl
                i32.or
                local.set 0
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
              local.set 0
              local.get 14
              i32.const 4
              i32.add
              local.set 12
            end
            local.get 1
            local.get 10
            i32.add
            local.set 1
            local.get 2
            local.get 0
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
                    local.get 1
                    local.get 9
                    i32.lt_u
                    br_if 0 (;@8;)
                    local.get 1
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
                      local.get 1
                      local.get 3
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 4
                      local.get 1
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
                    local.get 1
                    local.get 9
                    i32.sub
                    local.get 7
                    i32.load offset=12
                    local.tee 9
                    call_indirect (type 0)
                    i32.eqz
                    br_if 1 (;@7;)
                    br 3 (;@5;)
                  end
                  local.get 4
                  local.get 3
                  local.get 9
                  local.get 1
                  i32.const 38624
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
                    call_indirect (type 1)
                    br_if 3 (;@5;)
                    br 1 (;@7;)
                  end
                  local.get 6
                  local.get 2
                  local.get 11
                  i32.add
                  local.get 10
                  local.get 9
                  call_indirect (type 0)
                  br_if 2 (;@5;)
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.const 128
                    i32.ge_u
                    br_if 0 (;@8;)
                    i32.const 1
                    local.set 14
                    br 1 (;@7;)
                  end
                  block  ;; label = @8
                    local.get 0
                    i32.const 2048
                    i32.ge_u
                    br_if 0 (;@8;)
                    i32.const 2
                    local.set 14
                    br 1 (;@7;)
                  end
                  i32.const 3
                  i32.const 4
                  local.get 0
                  i32.const 65536
                  i32.lt_u
                  select
                  local.set 14
                end
                local.get 14
                local.get 1
                i32.add
                local.set 9
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.const 128
                  i32.ge_u
                  br_if 0 (;@7;)
                  i32.const 1
                  local.set 0
                  br 1 (;@6;)
                end
                block  ;; label = @7
                  local.get 0
                  i32.const 2048
                  i32.ge_u
                  br_if 0 (;@7;)
                  i32.const 2
                  local.set 0
                  br 1 (;@6;)
                end
                i32.const 3
                i32.const 4
                local.get 0
                i32.const 65536
                i32.lt_u
                select
                local.set 0
              end
              local.get 0
              local.get 1
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
        i32.const 38640
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
      call_indirect (type 0)
      br_if 0 (;@1;)
      local.get 6
      i32.const 34
      local.get 8
      call_indirect (type 1)
      local.set 5
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 5)
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
      i32.load8_u offset=37579
      i32.store8 offset=9
      local.get 3
      local.get 1
      i32.const 4
      i32.shr_u
      i32.const 15
      i32.and
      i32.load8_u offset=37579
      i32.store8 offset=13
      local.get 3
      local.get 1
      i32.const 8
      i32.shr_u
      i32.const 15
      i32.and
      i32.load8_u offset=37579
      i32.store8 offset=12
      local.get 3
      local.get 1
      i32.const 12
      i32.shr_u
      i32.const 15
      i32.and
      i32.load8_u offset=37579
      i32.store8 offset=11
      local.get 3
      local.get 1
      i32.const 16
      i32.shr_u
      i32.const 15
      i32.and
      i32.load8_u offset=37579
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
      i32.load8_u offset=37579
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
  (func $_RNvNtCsdmBIiMovVma_4core3str16slice_error_fail (type 8) (param i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $_RNvNtCsdmBIiMovVma_4core3str19slice_error_fail_rt
    unreachable)
  (func $_RNvXs1g_NtCsdmBIiMovVma_4core3fmtRlNtB6_5Debug3fmtCs42wnaUBpYLM_7counter (type 1) (param i32 i32) (result i32)
    (local i32 i32)
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
        block  ;; label = @3
          local.get 1
          i32.load offset=8
          local.tee 3
          i32.const 33554432
          i32.and
          br_if 0 (;@3;)
          local.get 3
          i32.const 67108864
          i32.and
          br_if 1 (;@2;)
          local.get 0
          local.get 1
          call $_RNvXs9_NtNtNtCsdmBIiMovVma_4core3fmt3num3implNtB9_7Display3fmt
          local.set 0
          br 2 (;@1;)
        end
        local.get 0
        i32.load
        local.set 3
        i32.const 9
        local.set 0
        loop  ;; label = @3
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
          i32.load8_u offset=37579
          i32.store8
          local.get 0
          i32.const -1
          i32.add
          local.set 0
          local.get 3
          i32.const 4
          i32.shr_u
          local.tee 3
          br_if 0 (;@3;)
        end
        local.get 1
        i32.const 1
        i32.const 38606
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
        br 1 (;@1;)
      end
      local.get 0
      i32.load
      local.set 3
      i32.const 9
      local.set 0
      loop  ;; label = @2
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
        i32.load8_u offset=38608
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
      i32.const 38606
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
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_RNvXs9_NtNtNtCsdmBIiMovVma_4core3fmt3num3implNtB9_7Display3fmt (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 10
    local.set 3
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 4
      local.get 4
      i32.const 31
      i32.shr_s
      local.tee 0
      i32.xor
      local.get 0
      i32.sub
      local.tee 5
      i32.const 1000
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 10
      local.set 3
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
        i32.load16_u offset=37701 align=1
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
        i32.load16_u offset=37701 align=1
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
      i32.load16_u offset=37701 align=1
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
      i32.load8_u offset=37702
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
  (func $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter12pad_integral (type 9) (param i32 i32 i32 i32 i32 i32) (result i32)
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
                call_indirect (type 1)
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
              call_indirect (type 1)
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
          call_indirect (type 0)
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
            call_indirect (type 1)
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
        call_indirect (type 0)
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
      call_indirect (type 0)
      local.set 10
    end
    local.get 10)
  (func $_RNvXs3_NtCsdwI7iSz8jyL_10myrmic_sdk5errorNtB5_8ApiErrorNtNtCsdmBIiMovVma_4core3fmt5Debug3fmt (type 1) (param i32 i32) (result i32)
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
                        i32.const 34910
                        i32.const 16
                        local.get 2
                        i32.const 8
                        i32.add
                        i32.const 3
                        call $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish
                        local.set 1
                        br 9 (;@1;)
                      end
                      local.get 1
                      i32.load
                      i32.const 34926
                      i32.const 5
                      local.get 1
                      i32.load offset=4
                      i32.load offset=12
                      call_indirect (type 0)
                      local.set 1
                      br 8 (;@1;)
                    end
                    local.get 1
                    i32.load
                    i32.const 34931
                    i32.const 8
                    local.get 1
                    i32.load offset=4
                    i32.load offset=12
                    call_indirect (type 0)
                    local.set 1
                    br 7 (;@1;)
                  end
                  local.get 2
                  local.get 0
                  i32.const 4
                  i32.add
                  i32.store offset=8
                  local.get 1
                  i32.const 34939
                  i32.const 5
                  local.get 2
                  i32.const 8
                  i32.add
                  i32.const 4
                  call $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish
                  local.set 1
                  br 6 (;@1;)
                end
                local.get 1
                i32.load
                i32.const 34944
                i32.const 8
                local.get 1
                i32.load offset=4
                i32.load offset=12
                call_indirect (type 0)
                local.set 1
                br 5 (;@1;)
              end
              local.get 1
              i32.load
              i32.const 34952
              i32.const 14
              local.get 1
              i32.load offset=4
              i32.load offset=12
              call_indirect (type 0)
              local.set 1
              br 4 (;@1;)
            end
            local.get 1
            i32.load
            i32.const 34966
            i32.const 8
            local.get 1
            i32.load offset=4
            i32.load offset=12
            call_indirect (type 0)
            local.set 1
            br 3 (;@1;)
          end
          local.get 1
          i32.load
          i32.const 34974
          i32.const 18
          local.get 1
          i32.load offset=4
          i32.load offset=12
          call_indirect (type 0)
          local.set 1
          br 2 (;@1;)
        end
        local.get 1
        i32.load
        i32.const 34992
        i32.const 11
        local.get 1
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 0)
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
      i32.const 35003
      i32.const 12
      local.get 1
      i32.load offset=4
      i32.load offset=12
      call_indirect (type 0)
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
      i32.const 35015
      i32.const 8
      local.get 0
      i32.const 4
      i32.add
      i32.const 5
      call $_RNvMs1_NtNtCsdmBIiMovVma_4core3fmt8buildersNtB5_11DebugStruct5field
      i32.const 35023
      i32.const 6
      local.get 2
      i32.const 4
      i32.add
      i32.const 6
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
        i32.const 37612
        i32.const 2
        local.get 1
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 0)
        local.set 1
        br 1 (;@1;)
      end
      local.get 1
      i32.load
      i32.const 37610
      i32.const 1
      local.get 1
      i32.load offset=4
      i32.load offset=12
      call_indirect (type 0)
      local.set 1
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
    i32.const 1
    i32.and)
  (func $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish (type 10) (param i32 i32 i32 i32 i32) (result i32)
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
      call_indirect (type 0)
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
          i32.const 37607
          i32.const 1
          local.get 9
          call_indirect (type 0)
          br_if 2 (;@1;)
          local.get 3
          local.get 0
          local.get 4
          call_indirect (type 1)
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
        i32.const 37608
        i32.const 2
        local.get 9
        call_indirect (type 0)
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
        i32.const 37616
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
        call_indirect (type 1)
        br_if 1 (;@1;)
        local.get 5
        i32.load offset=16
        i32.const 37605
        i32.const 2
        local.get 5
        i32.load offset=20
        i32.load offset=12
        call_indirect (type 0)
        br_if 1 (;@1;)
      end
      local.get 7
      i32.const 37611
      i32.const 1
      local.get 9
      call_indirect (type 0)
      local.set 6
    end
    local.get 5
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 6)
  (func $_RNvXsW_NtNtCsdmBIiMovVma_4core3fmt3nummNtB7_5Debug3fmt (type 1) (param i32 i32) (result i32)
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
      i32.load
      local.get 1
      call $_RNvXsw_NtNtCsdmBIiMovVma_4core3fmt3nummNtB7_8UpperHex3fmt
      return
    end
    local.get 0
    i32.load
    local.get 1
    call $_RNvXsu_NtNtCsdmBIiMovVma_4core3fmt3nummNtB7_8LowerHex3fmt)
  (func $_RNvMs1_NtNtCsdmBIiMovVma_4core3fmt8buildersNtB5_11DebugStruct5field (type 10) (param i32 i32 i32 i32 i32) (result i32)
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
        i32.const 37598
        i32.const 37595
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
        call_indirect (type 0)
        br_if 1 (;@1;)
        local.get 8
        i32.load
        local.get 1
        local.get 2
        local.get 8
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 0)
        br_if 1 (;@1;)
        local.get 8
        i32.load
        i32.const 37600
        i32.const 2
        local.get 8
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 0)
        br_if 1 (;@1;)
        local.get 3
        local.get 8
        local.get 4
        call_indirect (type 1)
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
        i32.const 37602
        i32.const 3
        local.get 8
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 0)
        br_if 1 (;@1;)
      end
      i32.const 1
      local.set 6
      local.get 5
      i32.const 1
      i32.store8 offset=15
      local.get 5
      i32.const 37616
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
      i32.const 37600
      i32.const 2
      call $_RNvXs0_NtNtCsdmBIiMovVma_4core3fmt8buildersNtB5_10PadAdapterNtB7_5Write9write_str
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 3
        local.get 5
        i32.const 16
        i32.add
        local.get 4
        call_indirect (type 1)
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        local.set 6
        br 1 (;@1;)
      end
      local.get 5
      i32.load offset=16
      i32.const 37605
      i32.const 2
      local.get 5
      i32.load offset=20
      i32.load offset=12
      call_indirect (type 0)
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
  (func $_RNvXs1g_NtCsdmBIiMovVma_4core3fmtRmNtB6_5Debug3fmtCs31HxFg2iDf6_9sha1_smol (type 1) (param i32 i32) (result i32)
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
      i32.load
      local.get 1
      call $_RNvXsw_NtNtCsdmBIiMovVma_4core3fmt3nummNtB7_8UpperHex3fmt
      return
    end
    local.get 0
    i32.load
    local.get 1
    call $_RNvXsu_NtNtCsdmBIiMovVma_4core3fmt3nummNtB7_8LowerHex3fmt)
  (func $_RNvXs8_NtNtNtCsdmBIiMovVma_4core3fmt3num3impmNtB9_7Display3fmt (type 1) (param i32 i32) (result i32)
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
        i32.load16_u offset=37701 align=1
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
        i32.load16_u offset=37701 align=1
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
      i32.load16_u offset=37701 align=1
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
      i32.load8_u offset=37702
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
  (func $_RNvXsw_NtNtCsdmBIiMovVma_4core3fmt3nummNtB7_8UpperHex3fmt (type 1) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 9
    local.set 3
    loop  ;; label = @1
      local.get 2
      i32.const 8
      i32.add
      local.get 3
      i32.add
      i32.const -2
      i32.add
      local.get 0
      i32.const 15
      i32.and
      i32.load8_u offset=38608
      i32.store8
      local.get 3
      i32.const -1
      i32.add
      local.set 3
      local.get 0
      i32.const 4
      i32.shr_u
      local.tee 0
      br_if 0 (;@1;)
    end
    local.get 1
    i32.const 1
    i32.const 38606
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
    local.set 3
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $_RNvXsu_NtNtCsdmBIiMovVma_4core3fmt3nummNtB7_8LowerHex3fmt (type 1) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 9
    local.set 3
    loop  ;; label = @1
      local.get 2
      i32.const 8
      i32.add
      local.get 3
      i32.add
      i32.const -2
      i32.add
      local.get 0
      i32.const 15
      i32.and
      i32.load8_u offset=37579
      i32.store8
      local.get 3
      i32.const -1
      i32.add
      local.set 3
      local.get 0
      i32.const 4
      i32.shr_u
      local.tee 0
      br_if 0 (;@1;)
    end
    local.get 1
    i32.const 1
    i32.const 38606
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
    local.set 3
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $_RNvXse_NtNtCs18QDUBBZXOQ_13myrmic_common5cells3idsNtB5_3SriNtNtCsdmBIiMovVma_4core3fmt5Debug3fmt (type 1) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 1
    i32.const 35067
    i32.const 3
    local.get 2
    i32.const 12
    i32.add
    i32.const 7
    call $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_RNvXsq_NtCsjAdaHq5oevx_5alloc6stringNtB5_6StringNtNtCsdmBIiMovVma_4core3fmt7Display3fmt (type 1) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    call $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter3pad)
  (func $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter3pad (type 0) (param i32 i32 i32) (result i32)
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
            call_indirect (type 1)
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
        call_indirect (type 0)
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
          call_indirect (type 1)
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
      call_indirect (type 0)
      local.set 9
    end
    local.get 9)
  (func $command_count (type 11) (param i64 i64 i64 i64 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 128
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
              block  ;; label = @6
                local.get 4
                br_if 0 (;@6;)
                i32.const -1
                local.set 6
                br 1 (;@5;)
              end
              local.get 5
              i32.const 60
              i32.add
              local.get 4
              call $_RINvNtCsjAdaHq5oevx_5alloc3vec9from_elemhECsdwI7iSz8jyL_10myrmic_sdk
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 5
                      i32.load offset=64
                      local.tee 7
                      local.get 5
                      i32.load offset=68
                      local.tee 8
                      call $_RNvNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions9arguments11c_functions13get_arguments
                      local.tee 4
                      i32.const 0
                      i32.ge_s
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 72
                      i32.add
                      local.get 4
                      call $_RNvXs1_NtCsdwI7iSz8jyL_10myrmic_sdk5errorNtB5_8ApiErrorINtNtCsdmBIiMovVma_4core7convert4FromlE4from
                      local.get 5
                      i32.load offset=72
                      i32.const -1
                      i32.ne
                      br_if 1 (;@8;)
                      local.get 5
                      i32.load offset=76
                      local.set 4
                    end
                    block  ;; label = @9
                      local.get 4
                      local.get 8
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 5
                      local.get 4
                      i32.store offset=68
                      local.get 4
                      local.set 8
                    end
                    local.get 5
                    i32.load offset=60
                    local.set 9
                    local.get 8
                    i32.eqz
                    br_if 1 (;@7;)
                    i32.const 0
                    local.get 8
                    i32.const -7
                    i32.add
                    local.tee 4
                    local.get 4
                    local.get 8
                    i32.gt_u
                    select
                    local.set 10
                    local.get 7
                    i32.const 3
                    i32.add
                    i32.const -4
                    i32.and
                    local.get 7
                    i32.sub
                    local.set 11
                    i32.const 0
                    local.set 4
                    loop  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 7
                              local.get 4
                              i32.add
                              i32.load8_u
                              local.tee 6
                              i32.const 24
                              i32.shl
                              i32.const 24
                              i32.shr_s
                              local.tee 12
                              i32.const 0
                              i32.lt_s
                              br_if 0 (;@13;)
                              local.get 11
                              local.get 4
                              i32.sub
                              i32.const 3
                              i32.and
                              br_if 1 (;@12;)
                              local.get 4
                              local.get 10
                              i32.ge_u
                              br_if 2 (;@11;)
                              loop  ;; label = @14
                                local.get 7
                                local.get 4
                                i32.add
                                local.tee 6
                                i32.const 4
                                i32.add
                                i32.load
                                local.get 6
                                i32.load
                                i32.or
                                i32.const -2139062144
                                i32.and
                                br_if 3 (;@11;)
                                local.get 4
                                i32.const 8
                                i32.add
                                local.tee 4
                                local.get 10
                                i32.lt_u
                                br_if 0 (;@14;)
                                br 3 (;@11;)
                              end
                            end
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          local.get 6
                                          i32.load8_u offset=37901
                                          i32.const -2
                                          i32.add
                                          br_table 0 (;@19;) 1 (;@18;) 2 (;@17;) 5 (;@14;)
                                        end
                                        local.get 4
                                        i32.const 1
                                        i32.add
                                        local.tee 4
                                        local.get 8
                                        i32.ge_u
                                        br_if 4 (;@14;)
                                        local.get 7
                                        local.get 4
                                        i32.add
                                        i32.load8_s
                                        i32.const -65
                                        i32.gt_s
                                        br_if 4 (;@14;)
                                        br 5 (;@13;)
                                      end
                                      local.get 4
                                      i32.const 1
                                      i32.add
                                      local.tee 13
                                      local.get 8
                                      i32.ge_u
                                      br_if 3 (;@14;)
                                      local.get 7
                                      local.get 13
                                      i32.add
                                      i32.load8_s
                                      local.set 13
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          local.get 6
                                          i32.const 224
                                          i32.eq
                                          br_if 0 (;@19;)
                                          local.get 6
                                          i32.const 237
                                          i32.eq
                                          br_if 1 (;@18;)
                                          local.get 12
                                          i32.const 31
                                          i32.add
                                          i32.const 255
                                          i32.and
                                          i32.const 12
                                          i32.lt_u
                                          br_if 3 (;@16;)
                                          local.get 12
                                          i32.const -2
                                          i32.and
                                          i32.const -18
                                          i32.ne
                                          br_if 5 (;@14;)
                                          local.get 13
                                          i32.const -64
                                          i32.lt_s
                                          br_if 4 (;@15;)
                                          br 5 (;@14;)
                                        end
                                        local.get 13
                                        i32.const -32
                                        i32.and
                                        i32.const -96
                                        i32.eq
                                        br_if 3 (;@15;)
                                        br 4 (;@14;)
                                      end
                                      local.get 13
                                      i32.const -97
                                      i32.gt_s
                                      br_if 3 (;@14;)
                                      br 2 (;@15;)
                                    end
                                    local.get 4
                                    i32.const 1
                                    i32.add
                                    local.tee 13
                                    local.get 8
                                    i32.ge_u
                                    br_if 2 (;@14;)
                                    local.get 7
                                    local.get 13
                                    i32.add
                                    i32.load8_s
                                    local.set 13
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            local.get 6
                                            i32.const -240
                                            i32.add
                                            br_table 1 (;@19;) 0 (;@20;) 0 (;@20;) 0 (;@20;) 2 (;@18;) 0 (;@20;)
                                          end
                                          local.get 12
                                          i32.const 15
                                          i32.add
                                          i32.const 255
                                          i32.and
                                          i32.const 2
                                          i32.gt_u
                                          br_if 5 (;@14;)
                                          local.get 13
                                          i32.const -64
                                          i32.lt_s
                                          br_if 2 (;@17;)
                                          br 5 (;@14;)
                                        end
                                        local.get 13
                                        i32.const 112
                                        i32.add
                                        i32.const 255
                                        i32.and
                                        i32.const 48
                                        i32.lt_u
                                        br_if 1 (;@17;)
                                        br 4 (;@14;)
                                      end
                                      local.get 13
                                      i32.const -113
                                      i32.gt_s
                                      br_if 3 (;@14;)
                                    end
                                    local.get 4
                                    i32.const 2
                                    i32.add
                                    local.tee 6
                                    local.get 8
                                    i32.ge_u
                                    br_if 2 (;@14;)
                                    local.get 7
                                    local.get 6
                                    i32.add
                                    i32.load8_s
                                    i32.const -65
                                    i32.gt_s
                                    br_if 2 (;@14;)
                                    local.get 4
                                    i32.const 3
                                    i32.add
                                    local.tee 4
                                    local.get 8
                                    i32.ge_u
                                    br_if 2 (;@14;)
                                    local.get 7
                                    local.get 4
                                    i32.add
                                    i32.load8_s
                                    i32.const -64
                                    i32.lt_s
                                    br_if 3 (;@13;)
                                    br 2 (;@14;)
                                  end
                                  local.get 13
                                  i32.const -64
                                  i32.ge_s
                                  br_if 1 (;@14;)
                                end
                                local.get 4
                                i32.const 2
                                i32.add
                                local.tee 4
                                local.get 8
                                i32.ge_u
                                br_if 0 (;@14;)
                                local.get 7
                                local.get 4
                                i32.add
                                i32.load8_s
                                i32.const -65
                                i32.le_s
                                br_if 1 (;@13;)
                              end
                              local.get 9
                              local.get 7
                              call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
                              i32.const 32840
                              local.set 10
                              i32.const 32
                              local.set 11
                              br 7 (;@6;)
                            end
                            local.get 4
                            i32.const 1
                            i32.add
                            local.set 4
                            br 2 (;@10;)
                          end
                          local.get 4
                          i32.const 1
                          i32.add
                          local.set 4
                          br 1 (;@10;)
                        end
                        local.get 4
                        local.get 8
                        i32.ge_u
                        br_if 0 (;@10;)
                        loop  ;; label = @11
                          local.get 7
                          local.get 4
                          i32.add
                          i32.load8_s
                          i32.const 0
                          i32.lt_s
                          br_if 1 (;@10;)
                          local.get 8
                          local.get 4
                          i32.const 1
                          i32.add
                          local.tee 4
                          i32.ne
                          br_if 0 (;@11;)
                          br 4 (;@7;)
                        end
                      end
                      local.get 4
                      local.get 8
                      i32.lt_u
                      br_if 0 (;@9;)
                      br 2 (;@7;)
                    end
                  end
                  local.get 5
                  i32.load offset=60
                  local.get 7
                  call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
                  i32.const 32872
                  local.set 4
                  i32.const 24
                  local.set 7
                  br 3 (;@4;)
                end
                local.get 5
                i32.const 116
                i32.add
                local.get 7
                local.get 8
                call $_RINvXs_NvMNtCsjAdaHq5oevx_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs42wnaUBpYLM_7counter
                local.get 5
                i32.load offset=120
                local.set 13
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 5
                        i32.load offset=124
                        local.tee 11
                        br_if 0 (;@10;)
                        i32.const 20
                        local.set 11
                        i32.const 39164
                        local.set 10
                        br 1 (;@9;)
                      end
                      local.get 5
                      i32.const 0
                      i32.store offset=88
                      local.get 5
                      local.get 13
                      i32.store offset=80
                      local.get 5
                      local.get 13
                      i32.store offset=72
                      local.get 5
                      local.get 11
                      i32.store offset=76
                      local.get 5
                      local.get 13
                      local.get 11
                      i32.add
                      local.tee 14
                      i32.store offset=84
                      local.get 5
                      i32.const 72
                      i32.add
                      i32.const 8
                      i32.add
                      local.set 15
                      local.get 13
                      local.set 12
                      local.get 14
                      local.set 6
                      block  ;; label = @10
                        loop  ;; label = @11
                          local.get 5
                          i32.const 8
                          i32.add
                          local.get 15
                          call $_RINvNtNtCsdmBIiMovVma_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs18QDUBBZXOQ_13myrmic_common
                          local.get 5
                          i32.load offset=8
                          i32.const 1
                          i32.ne
                          br_if 1 (;@10;)
                          local.get 5
                          i32.load offset=12
                          local.set 4
                          local.get 5
                          local.get 5
                          i32.load offset=88
                          local.get 6
                          i32.add
                          local.get 12
                          local.get 5
                          i32.load offset=84
                          local.tee 10
                          i32.add
                          i32.sub
                          local.get 5
                          i32.load offset=80
                          local.tee 12
                          i32.add
                          i32.store offset=88
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 4
                              i32.const -9
                              i32.add
                              local.tee 6
                              i32.const 23
                              i32.gt_u
                              br_if 0 (;@13;)
                              i32.const 1
                              local.get 6
                              i32.shl
                              i32.const 8388639
                              i32.and
                              br_if 1 (;@12;)
                            end
                            local.get 10
                            local.set 6
                            local.get 4
                            i32.const 133
                            i32.lt_u
                            br_if 1 (;@11;)
                            block  ;; label = @13
                              local.get 4
                              i32.const 8
                              i32.shr_u
                              local.tee 16
                              i32.eqz
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 16
                                  i32.const 48
                                  i32.eq
                                  br_if 0 (;@15;)
                                  local.get 16
                                  i32.const 32
                                  i32.eq
                                  br_if 1 (;@14;)
                                  local.get 10
                                  local.set 6
                                  local.get 16
                                  i32.const 22
                                  i32.ne
                                  br_if 4 (;@11;)
                                  local.get 10
                                  local.set 6
                                  local.get 4
                                  i32.const 5760
                                  i32.ne
                                  br_if 4 (;@11;)
                                  br 3 (;@12;)
                                end
                                local.get 10
                                local.set 6
                                local.get 4
                                i32.const 12288
                                i32.ne
                                br_if 3 (;@11;)
                                br 2 (;@12;)
                              end
                              local.get 10
                              local.set 6
                              local.get 4
                              i32.const 255
                              i32.and
                              i32.load8_u offset=39184
                              i32.const 2
                              i32.and
                              i32.eqz
                              br_if 2 (;@11;)
                              br 1 (;@12;)
                            end
                            local.get 10
                            local.set 6
                            local.get 4
                            i32.const 255
                            i32.and
                            i32.load8_u offset=39184
                            i32.const 1
                            i32.and
                            i32.eqz
                            br_if 1 (;@11;)
                          end
                        end
                        i32.const 30
                        local.set 11
                        i32.const 39134
                        local.set 10
                        br 1 (;@9;)
                      end
                      local.get 5
                      local.get 14
                      i32.store offset=76
                      local.get 5
                      local.get 13
                      i32.store offset=72
                      loop  ;; label = @10
                        local.get 5
                        local.get 5
                        i32.const 72
                        i32.add
                        call $_RINvNtNtCsdmBIiMovVma_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs18QDUBBZXOQ_13myrmic_common
                        local.get 5
                        i32.load
                        i32.const 1
                        i32.ne
                        br_if 2 (;@8;)
                        local.get 5
                        i32.load offset=4
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
                      local.set 11
                      i32.const 39067
                      local.set 10
                    end
                    local.get 5
                    i32.load offset=116
                    local.get 13
                    call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
                    i32.const -1
                    local.set 6
                    br 1 (;@7;)
                  end
                  local.get 5
                  i32.load offset=116
                  local.set 6
                  local.get 13
                  local.set 10
                end
                local.get 9
                local.get 7
                call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
                local.get 6
                i32.const -1
                i32.ne
                br_if 1 (;@5;)
              end
              local.get 10
              i32.const 32896
              local.get 8
              select
              local.set 4
              local.get 11
              i32.const 106
              local.get 8
              select
              local.set 7
              br 1 (;@4;)
            end
            local.get 5
            i32.const 72
            i32.add
            i32.const 34512
            call $_RNvMs_NtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions2db5stateINtB4_5StatelE9load_fromCs42wnaUBpYLM_7counter
            local.get 5
            i32.load offset=80
            local.set 7
            local.get 5
            i32.load offset=76
            local.set 4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 5
                  i32.load offset=72
                  i32.const 1
                  i32.ne
                  br_if 0 (;@7;)
                  i32.const 34512
                  call $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueINtNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions2db5state5StatelEECs42wnaUBpYLM_7counter
                  local.get 6
                  i32.const -1
                  i32.eq
                  br_if 1 (;@6;)
                  local.get 6
                  local.get 10
                  call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
                  br 1 (;@6;)
                end
                local.get 5
                local.get 7
                i32.const 0
                local.get 4
                i32.const 1
                i32.and
                select
                local.tee 4
                i32.store offset=52
                i32.const 34512
                call $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueINtNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions2db5state5StatelEECs42wnaUBpYLM_7counter
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 6
                          i32.const -1
                          i32.eq
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            local.get 5
                            i64.load offset=32
                            local.get 5
                            i64.load offset=40
                            i64.or
                            i64.eqz
                            br_if 0 (;@12;)
                            local.get 5
                            i32.const 8
                            i32.store offset=84
                            local.get 5
                            local.get 5
                            i32.const 32
                            i32.add
                            local.tee 7
                            i32.store offset=80
                            local.get 5
                            i32.const 9
                            i32.store offset=76
                            local.get 5
                            local.get 5
                            i32.const 52
                            i32.add
                            i32.store offset=72
                            local.get 5
                            i32.const 116
                            i32.add
                            i32.const 34313
                            local.get 5
                            i32.const 72
                            i32.add
                            call $_RNvNtCsjAdaHq5oevx_5alloc3fmt6format
                            local.get 5
                            i32.const 72
                            i32.add
                            local.get 5
                            i32.load offset=120
                            local.tee 8
                            local.get 5
                            i32.load offset=124
                            i32.const 2
                            call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions7logging3log
                            local.get 5
                            i32.load offset=116
                            local.get 8
                            call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
                            i32.const 4
                            call $_RNvXs_NtCsf2KWoDnNIRz_14embedded_alloc4llffNtB4_4HeapNtNtNtCsdmBIiMovVma_4core5alloc6global11GlobalAlloc5alloc
                            local.tee 8
                            i32.eqz
                            br_if 2 (;@10;)
                            local.get 8
                            local.get 4
                            i32.store align=1
                            local.get 5
                            i32.const 72
                            i32.add
                            i32.const 4
                            i32.const 0
                            call $_RNvMs5_NtCsjAdaHq5oevx_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9YH6pJqOsRA_5serde
                            local.get 5
                            i32.load offset=76
                            local.set 12
                            local.get 5
                            i32.load offset=72
                            i32.const 1
                            i32.eq
                            br_if 3 (;@9;)
                            local.get 5
                            i32.load offset=80
                            local.tee 13
                            local.get 4
                            i32.store align=1
                            local.get 5
                            local.get 11
                            i32.store offset=80
                            local.get 5
                            local.get 10
                            i32.store offset=76
                            local.get 5
                            local.get 6
                            i32.store offset=72
                            local.get 5
                            i32.const 4
                            i32.store offset=92
                            local.get 5
                            local.get 13
                            i32.store offset=88
                            local.get 5
                            local.get 12
                            i32.store offset=84
                            local.get 5
                            local.get 7
                            i64.load align=4
                            i64.store offset=96 align=4
                            local.get 5
                            local.get 7
                            i64.load offset=8 align=4
                            i64.store offset=104 align=4
                            local.get 5
                            i32.const 0
                            i32.store offset=124
                            local.get 5
                            i64.const 4294967296
                            i64.store offset=116 align=4
                            local.get 5
                            i32.const 16
                            i32.store8 offset=60
                            local.get 5
                            i32.const 0
                            i32.store offset=61 align=1
                            local.get 5
                            i32.const 116
                            i32.add
                            local.get 5
                            i32.const 60
                            i32.add
                            local.get 5
                            i32.const 60
                            i32.add
                            i32.const 1
                            i32.add
                            call $_RNvXs2_NtNtCsjAdaHq5oevx_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsdmBIiMovVma_4core5slice4iter4IterhEE11spec_extendCs18QDUBBZXOQ_13myrmic_common
                            local.get 5
                            i32.const 116
                            i32.add
                            local.get 5
                            i32.const 96
                            i32.add
                            local.get 5
                            i32.const 112
                            i32.add
                            call $_RNvXs2_NtNtCsjAdaHq5oevx_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsdmBIiMovVma_4core5slice4iter4IterhEE11spec_extendCs18QDUBBZXOQ_13myrmic_common
                            local.get 5
                            i32.const 116
                            i32.add
                            local.get 11
                            call $_RNvMNtNtCs2WOo28oSl5V_8postcard3ser10serializerINtB2_10SerializerNtNtNtB4_7flavors9alloc_vec8AllocVecE21try_push_varint_usizeCsdwI7iSz8jyL_10myrmic_sdk
                            local.get 5
                            i32.const 116
                            i32.add
                            local.get 10
                            local.get 11
                            call $_RNvMs1_NtCsjAdaHq5oevx_5alloc3vecINtB5_3VechE17extend_from_sliceCs18QDUBBZXOQ_13myrmic_common
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 5
                                i32.load offset=84
                                i32.const -1
                                i32.eq
                                br_if 0 (;@14;)
                                local.get 5
                                i32.const 116
                                i32.add
                                i32.const 1
                                call $_RNvMsF_NtCsjAdaHq5oevx_5alloc3vecINtB5_3VechE4pushCsdwI7iSz8jyL_10myrmic_sdk
                                local.get 5
                                i32.load offset=88
                                local.set 7
                                local.get 5
                                i32.const 116
                                i32.add
                                local.get 5
                                i32.load offset=92
                                local.tee 4
                                call $_RNvMNtNtCs2WOo28oSl5V_8postcard3ser10serializerINtB2_10SerializerNtNtNtB4_7flavors9alloc_vec8AllocVecE21try_push_varint_usizeCsdwI7iSz8jyL_10myrmic_sdk
                                loop  ;; label = @15
                                  local.get 4
                                  i32.eqz
                                  br_if 2 (;@13;)
                                  local.get 5
                                  i32.const 116
                                  i32.add
                                  local.get 7
                                  i32.load8_u
                                  call $_RNvMsF_NtCsjAdaHq5oevx_5alloc3vecINtB5_3VechE4pushCsdwI7iSz8jyL_10myrmic_sdk
                                  local.get 4
                                  i32.const -1
                                  i32.add
                                  local.set 4
                                  local.get 7
                                  i32.const 1
                                  i32.add
                                  local.set 7
                                  br 0 (;@15;)
                                end
                              end
                              local.get 5
                              i32.const 116
                              i32.add
                              i32.const 0
                              call $_RNvMsF_NtCsjAdaHq5oevx_5alloc3vecINtB5_3VechE4pushCsdwI7iSz8jyL_10myrmic_sdk
                            end
                            local.get 5
                            i32.load offset=116
                            local.tee 4
                            i32.const -1
                            i32.eq
                            br_if 4 (;@8;)
                            local.get 5
                            i64.load offset=120 align=4
                            local.tee 3
                            i32.wrap_i64
                            local.tee 7
                            local.get 3
                            i64.const 32
                            i64.shr_u
                            i32.wrap_i64
                            call $_RNvNtNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions4cell8commands11c_functions12send_command
                            local.set 11
                            local.get 4
                            local.get 7
                            call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
                            local.get 11
                            i32.const 7
                            i32.add
                            local.tee 4
                            i32.const 7
                            i32.gt_u
                            br_if 4 (;@8;)
                            local.get 4
                            i32.const 2
                            i32.shl
                            local.tee 4
                            i32.load offset=39620
                            local.set 7
                            local.get 4
                            i32.load offset=39588
                            local.set 4
                            br 5 (;@7;)
                          end
                          local.get 6
                          local.get 10
                          call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
                        end
                        local.get 5
                        i32.const 9
                        i32.store offset=120
                        local.get 5
                        local.get 5
                        i32.const 52
                        i32.add
                        i32.store offset=116
                        local.get 5
                        i32.const 72
                        i32.add
                        i32.const 34116
                        local.get 5
                        i32.const 116
                        i32.add
                        call $_RNvNtCsjAdaHq5oevx_5alloc3fmt6format
                        local.get 5
                        i32.const 116
                        i32.add
                        local.get 5
                        i32.load offset=76
                        local.tee 4
                        local.get 5
                        i32.load offset=80
                        i32.const 2
                        call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions7logging3log
                        local.get 5
                        i32.load offset=72
                        local.get 4
                        call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
                        br 5 (;@5;)
                      end
                      i32.const 4
                      call $_RNvNtCsjAdaHq5oevx_5alloc5alloc18handle_alloc_error
                      unreachable
                    end
                    local.get 12
                    local.get 5
                    i32.load offset=80
                    call $_RNvNtCsjAdaHq5oevx_5alloc7raw_vec12handle_error
                    unreachable
                  end
                  i32.const 8
                  local.set 7
                  i32.const 34671
                  local.set 4
                end
                local.get 6
                local.get 10
                call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
                local.get 12
                local.get 13
                call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
                i32.const 4
                local.get 8
                call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
              end
              local.get 4
              br_if 1 (;@4;)
            end
            i32.const 0
            local.set 4
            br 1 (;@3;)
          end
          local.get 5
          local.get 7
          i32.store offset=56
          local.get 5
          local.get 4
          i32.store offset=52
          local.get 5
          i32.const 116
          i32.add
          local.get 4
          local.get 7
          call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions6errors12report_error
          local.get 5
          i32.load offset=116
          i32.const -1
          i32.ne
          br_if 1 (;@2;)
          local.get 5
          i32.const 10
          i32.store offset=76
          local.get 5
          local.get 5
          i32.const 52
          i32.add
          i32.store offset=72
          local.get 5
          i32.const 116
          i32.add
          i32.const 33303
          local.get 5
          i32.const 72
          i32.add
          call $_RNvNtCsjAdaHq5oevx_5alloc3fmt6format
          local.get 5
          i32.const 60
          i32.add
          local.get 5
          i32.load offset=120
          local.tee 4
          local.get 5
          i32.load offset=124
          i32.const 4
          call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions7logging3log
          local.get 5
          i32.load offset=60
          i32.const -1
          i32.ne
          br_if 2 (;@1;)
          local.get 5
          i32.load offset=116
          local.get 4
          call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
          i32.const -1
          local.set 4
        end
        local.get 5
        i32.const 128
        i32.add
        global.set $__stack_pointer
        local.get 4
        return
      end
      local.get 5
      local.get 5
      i32.load offset=124
      i32.store offset=80
      local.get 5
      local.get 5
      i64.load offset=116 align=4
      i64.store offset=72
      i32.const 38760
      i32.const 43
      local.get 5
      i32.const 72
      i32.add
      i32.const 34556
      i32.const 34456
      call $_RNvNtCsdmBIiMovVma_4core6result13unwrap_failed
      unreachable
    end
    local.get 5
    local.get 5
    i32.load offset=68
    i32.store offset=80
    local.get 5
    local.get 5
    i64.load offset=60 align=4
    i64.store offset=72
    i32.const 38760
    i32.const 43
    local.get 5
    i32.const 72
    i32.add
    i32.const 34556
    i32.const 34456
    call $_RNvNtCsdmBIiMovVma_4core6result13unwrap_failed
    unreachable)
  (func $_RNvXs1_NtCsdwI7iSz8jyL_10myrmic_sdk5errorNtB5_8ApiErrorINtNtCsdmBIiMovVma_4core7convert4FromlE4from (type 3) (param i32 i32)
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
      i32.const 39535
      i32.store offset=4
      i32.const 3
      local.set 2
    end
    local.get 0
    local.get 2
    i32.store)
  (func $_RINvNtNtCsdmBIiMovVma_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs18QDUBBZXOQ_13myrmic_common (type 3) (param i32 i32)
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
  (func $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions7logging3log (type 12) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    i32.const 255
    i32.and
    call $_RNvNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions7logging11c_functions8log_host
    call $_RNvXNtCsdwI7iSz8jyL_10myrmic_sdk5errorlNtB2_9ErrorCode9to_result)
  (func $_RNvXs2_NtNtCsjAdaHq5oevx_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsdmBIiMovVma_4core5slice4iter4IterhEE11spec_extendCs18QDUBBZXOQ_13myrmic_common (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 2
      local.get 1
      i32.sub
      local.tee 4
      local.get 0
      i32.load
      local.tee 5
      local.get 0
      i32.load offset=8
      local.tee 6
      i32.sub
      i32.le_u
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 4
            local.get 6
            i32.add
            local.tee 7
            local.get 4
            i32.ge_u
            br_if 0 (;@4;)
            i32.const 0
            local.set 0
            br 1 (;@3;)
          end
          i32.const 0
          local.set 8
          local.get 3
          i32.const 20
          i32.add
          local.set 9
          block  ;; label = @4
            local.get 7
            local.get 5
            i32.const 1
            i32.shl
            local.tee 10
            local.get 7
            local.get 10
            i32.gt_u
            select
            local.tee 7
            i32.const 8
            local.get 7
            i32.const 8
            i32.gt_u
            select
            local.tee 7
            i32.const 0
            i32.lt_s
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 5
                br_if 0 (;@6;)
                i32.const 0
                local.set 5
                local.get 3
                i32.const 28
                i32.add
                local.set 10
                br 1 (;@5;)
              end
              local.get 0
              i32.load offset=4
              local.set 8
              local.get 3
              i32.const 1
              i32.store offset=28
              local.get 3
              i32.const 24
              i32.add
              local.set 10
            end
            local.get 10
            local.get 5
            i32.store
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.load offset=28
                i32.eqz
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 3
                  i32.load offset=24
                  local.tee 5
                  br_if 0 (;@7;)
                  local.get 3
                  i32.const 8
                  i32.add
                  local.get 7
                  i32.const 0
                  call $_RNvMNtCsjAdaHq5oevx_5alloc5allocNtB2_6Global18alloc_impl_runtime
                  local.get 3
                  i32.load offset=8
                  local.set 5
                  br 2 (;@5;)
                end
                local.get 8
                local.get 5
                local.get 7
                call $_RNvCs1njKG4L9aB3_7___rustc14___rust_realloc
                local.set 5
                br 1 (;@5;)
              end
              local.get 3
              local.get 7
              i32.const 0
              call $_RNvMNtCsjAdaHq5oevx_5alloc5allocNtB2_6Global18alloc_impl_runtime
              local.get 3
              i32.load
              local.set 5
            end
            local.get 5
            br_if 2 (;@2;)
            local.get 3
            i32.const 1
            i32.store offset=20
            local.get 3
            i32.const 16
            i32.add
            local.set 9
            local.get 7
            local.set 8
          end
          local.get 9
          local.get 8
          i32.store
          local.get 3
          i32.load offset=16
          local.set 1
          local.get 3
          i32.load offset=20
          local.set 0
        end
        local.get 0
        local.get 1
        call $_RNvNtCsjAdaHq5oevx_5alloc7raw_vec12handle_error
        unreachable
      end
      local.get 0
      local.get 7
      i32.store
      local.get 0
      local.get 5
      i32.store offset=4
    end
    block  ;; label = @1
      local.get 2
      local.get 1
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.get 6
      i32.add
      local.get 1
      local.get 4
      call $memcpy
      drop
    end
    local.get 0
    local.get 6
    local.get 4
    i32.add
    i32.store offset=8
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_RNvMNtNtCs2WOo28oSl5V_8postcard3ser10serializerINtB2_10SerializerNtNtNtB4_7flavors9alloc_vec8AllocVecE21try_push_varint_usizeCsdwI7iSz8jyL_10myrmic_sdk (type 3) (param i32 i32)
    (local i32)
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
    call $_RNvNtCs2WOo28oSl5V_8postcard6varint12varint_usize.170
    local.get 0
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call $_RNvMs1_NtCsjAdaHq5oevx_5alloc3vecINtB5_3VechE17extend_from_sliceCs18QDUBBZXOQ_13myrmic_common
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions6errors12report_error (type 5) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_RNvNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions6errors11c_functions12report_error
    call $_RNvXNtCsdwI7iSz8jyL_10myrmic_sdk5errorlNtB2_9ErrorCode9to_result)
  (func $_RNvXs1i_NtCsdmBIiMovVma_4core3fmtReNtB6_7Display3fmtCs3wU1vCl2ErL_10serde_core (type 1) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter3pad)
  (func $command_decrement (type 11) (param i64 i64 i64 i64 i32) (result i32)
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
              i32.const 35029
              local.set 6
              br 1 (;@4;)
            end
            local.get 5
            i32.const 80
            i32.add
            i32.const 34512
            call $_RNvMs_NtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions2db5stateINtB4_5StatelE9load_fromCs42wnaUBpYLM_7counter
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
                  i32.const 34512
                  local.get 4
                  i32.const -1
                  i32.add
                  i32.const -1
                  local.get 6
                  i32.const 1
                  i32.and
                  select
                  local.tee 4
                  call $_RNvMs_NtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions2db5stateINtB4_5StatelE7save_toCs42wnaUBpYLM_7counter
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
              i32.const 34512
              call $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueINtNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions2db5state5StatelEECs42wnaUBpYLM_7counter
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
              i32.const 34385
              local.get 5
              i32.const 80
              i32.add
              call $_RNvNtCsjAdaHq5oevx_5alloc3fmt6format
              local.get 5
              i32.const 80
              i32.add
              local.get 5
              i32.load offset=72
              local.tee 4
              local.get 5
              i32.load offset=76
              i32.const 2
              call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions7logging3log
              local.get 5
              i32.load offset=68
              local.get 4
              call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
              i32.const 0
              local.set 4
              br 2 (;@3;)
            end
            i32.const 34512
            call $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueINtNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions2db5state5StatelEECs42wnaUBpYLM_7counter
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
          call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions6errors12report_error
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
          call $_RNvNtCsjAdaHq5oevx_5alloc3fmt6format
          local.get 5
          i32.const 56
          i32.add
          local.get 5
          i32.load offset=72
          local.tee 4
          local.get 5
          i32.load offset=76
          i32.const 4
          call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions7logging3log
          local.get 5
          i32.load offset=56
          i32.const -1
          i32.ne
          br_if 2 (;@1;)
          local.get 5
          i32.load offset=68
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
      i32.load offset=76
      i32.store offset=88
      local.get 5
      local.get 5
      i64.load offset=68 align=4
      i64.store offset=80
      i32.const 38760
      i32.const 43
      local.get 5
      i32.const 80
      i32.add
      i32.const 34556
      i32.const 34472
      call $_RNvNtCsdmBIiMovVma_4core6result13unwrap_failed
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
    i32.const 38760
    i32.const 43
    local.get 5
    i32.const 80
    i32.add
    i32.const 34556
    i32.const 34472
    call $_RNvNtCsdmBIiMovVma_4core6result13unwrap_failed
    unreachable)
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
              i32.const 35029
              local.set 6
              br 1 (;@4;)
            end
            local.get 5
            i32.const 80
            i32.add
            i32.const 34512
            call $_RNvMs_NtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions2db5stateINtB4_5StatelE9load_fromCs42wnaUBpYLM_7counter
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
                  i32.const 34512
                  local.get 4
                  i32.const 1
                  i32.add
                  i32.const 1
                  local.get 6
                  i32.const 1
                  i32.and
                  select
                  local.tee 4
                  call $_RNvMs_NtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions2db5stateINtB4_5StatelE7save_toCs42wnaUBpYLM_7counter
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
              i32.const 34512
              call $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueINtNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions2db5state5StatelEECs42wnaUBpYLM_7counter
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
              i32.const 34348
              local.get 5
              i32.const 80
              i32.add
              call $_RNvNtCsjAdaHq5oevx_5alloc3fmt6format
              local.get 5
              i32.const 80
              i32.add
              local.get 5
              i32.load offset=72
              local.tee 4
              local.get 5
              i32.load offset=76
              i32.const 2
              call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions7logging3log
              local.get 5
              i32.load offset=68
              local.get 4
              call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
              i32.const 0
              local.set 4
              br 2 (;@3;)
            end
            i32.const 34512
            call $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueINtNtNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions2db5state5StatelEECs42wnaUBpYLM_7counter
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
          call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions6errors12report_error
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
          call $_RNvNtCsjAdaHq5oevx_5alloc3fmt6format
          local.get 5
          i32.const 56
          i32.add
          local.get 5
          i32.load offset=72
          local.tee 4
          local.get 5
          i32.load offset=76
          i32.const 4
          call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions7logging3log
          local.get 5
          i32.load offset=56
          i32.const -1
          i32.ne
          br_if 2 (;@1;)
          local.get 5
          i32.load offset=68
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
      i32.load offset=76
      i32.store offset=88
      local.get 5
      local.get 5
      i64.load offset=68 align=4
      i64.store offset=80
      i32.const 38760
      i32.const 43
      local.get 5
      i32.const 80
      i32.add
      i32.const 34556
      i32.const 34488
      call $_RNvNtCsdmBIiMovVma_4core6result13unwrap_failed
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
    i32.const 38760
    i32.const 43
    local.get 5
    i32.const 80
    i32.add
    i32.const 34556
    i32.const 34488
    call $_RNvNtCsdmBIiMovVma_4core6result13unwrap_failed
    unreachable)
  (func $init_cell (type 11) (param i64 i64 i64 i64 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 4
            br_if 0 (;@4;)
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
            i64.store offset=56
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
            i64.store offset=48
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
            i64.store offset=40
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
            i64.store offset=32
            local.get 5
            i32.const 8
            i32.store offset=76
            local.get 5
            local.get 5
            i32.const 32
            i32.add
            i32.store offset=72
            local.get 5
            i32.const 84
            i32.add
            i32.const 34422
            local.get 5
            i32.const 72
            i32.add
            call $_RNvNtCsjAdaHq5oevx_5alloc3fmt6format
            local.get 5
            i32.const 72
            i32.add
            local.get 5
            i32.load offset=88
            local.tee 4
            local.get 5
            i32.load offset=92
            i32.const 2
            call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions7logging3log
            local.get 5
            i32.load offset=84
            local.get 4
            call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
            i32.const 0
            local.set 4
            br 1 (;@3;)
          end
          local.get 5
          i32.const 38
          i32.store offset=16
          local.get 5
          i32.const 35029
          i32.store offset=12
          local.get 5
          i32.const 10
          i32.store offset=36
          local.get 5
          local.get 5
          i32.const 12
          i32.add
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
          i32.const 84
          i32.add
          local.get 5
          i32.load offset=24
          local.get 5
          i32.load offset=28
          call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions6errors12report_error
          local.get 5
          i32.load offset=84
          i32.const -1
          i32.ne
          br_if 1 (;@2;)
          local.get 5
          i32.const 11
          i32.store offset=36
          local.get 5
          local.get 5
          i32.const 20
          i32.add
          i32.store offset=32
          local.get 5
          i32.const 84
          i32.add
          i32.const 33303
          local.get 5
          i32.const 32
          i32.add
          call $_RNvNtCsjAdaHq5oevx_5alloc3fmt6format
          local.get 5
          i32.const 72
          i32.add
          local.get 5
          i32.load offset=88
          local.tee 4
          local.get 5
          i32.load offset=92
          i32.const 4
          call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions7logging3log
          local.get 5
          i32.load offset=72
          i32.const -1
          i32.ne
          br_if 2 (;@1;)
          local.get 5
          i32.load offset=84
          local.get 4
          call $_RNvXs1_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechENtNtNtCsdmBIiMovVma_4core3ops4drop4Drop4dropCs18QDUBBZXOQ_13myrmic_common
          local.get 5
          i32.load offset=20
          local.get 5
          i32.load offset=24
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
      i32.load offset=92
      i32.store offset=40
      local.get 5
      local.get 5
      i64.load offset=84 align=4
      i64.store offset=32
      i32.const 38760
      i32.const 43
      local.get 5
      i32.const 32
      i32.add
      i32.const 34556
      i32.const 34440
      call $_RNvNtCsdmBIiMovVma_4core6result13unwrap_failed
      unreachable
    end
    local.get 5
    local.get 5
    i32.load offset=80
    i32.store offset=40
    local.get 5
    local.get 5
    i64.load offset=72 align=4
    i64.store offset=32
    i32.const 38760
    i32.const 43
    local.get 5
    i32.const 32
    i32.add
    i32.const 34556
    i32.const 34440
    call $_RNvNtCsdmBIiMovVma_4core6result13unwrap_failed
    unreachable)
  (func $_RNvCs1njKG4L9aB3_7___rustc26___rust_alloc_error_handler (type 4) (param i32)
    local.get 0
    call $_RNvCs1njKG4L9aB3_7___rustc25___rdl_alloc_error_handler
    unreachable)
  (func $_RNvCs1njKG4L9aB3_7___rustc25___rdl_alloc_error_handler (type 4) (param i32)
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
    i32.const 12
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
  (func $_RNvNtCsdmBIiMovVma_4core9panicking18panic_nounwind_fmt (type 4) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.const 34019
    i32.store offset=8
    local.get 1
    i32.const 8
    i32.add
    i32.const 35072
    call $_RNvCs1njKG4L9aB3_7___rustc17rust_begin_unwind
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
  (func $_RNvMs5_NtCsjAdaHq5oevx_5alloc7raw_vecNtB5_11RawVecInner11finish_growB7_ (type 12) (param i32 i32 i32 i32)
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
          local.get 3
          call $_RNvCs1njKG4L9aB3_7___rustc14___rust_realloc
          local.set 4
          br 1 (;@2;)
        end
        local.get 3
        call $_RNvXs_NtCsf2KWoDnNIRz_14embedded_alloc4llffNtB4_4HeapNtNtNtCsdmBIiMovVma_4core5alloc6global11GlobalAlloc5alloc
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
  (func $_RNvCs1njKG4L9aB3_7___rustc14___rust_realloc (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 2
      call $_RNvXs_NtCsf2KWoDnNIRz_14embedded_alloc4llffNtB4_4HeapNtNtNtCsdmBIiMovVma_4core5alloc6global11GlobalAlloc5alloc
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 0
      local.get 2
      local.get 1
      local.get 2
      local.get 1
      i32.lt_u
      select
      call $memcpy
      drop
      local.get 0
      i32.const 1
      local.get 1
      call $_RNvXs_NtCsf2KWoDnNIRz_14embedded_alloc4llffNtB4_4HeapNtNtNtCsdmBIiMovVma_4core5alloc6global11GlobalAlloc7dealloc
    end
    local.get 3)
  (func $_RNvNtCsdmBIiMovVma_4core9panicking9panic_fmt (type 5) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
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
    i32.const 8
    i32.add
    local.get 2
    call $_RNvCs1njKG4L9aB3_7___rustc17rust_begin_unwind
    unreachable)
  (func $_RNvMs4_NtCsjAdaHq5oevx_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_ (type 4) (param i32)
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
  (func $_RNvXsK_NtCsdmBIiMovVma_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt (type 1) (param i32 i32) (result i32)
    local.get 1
    i32.load
    i32.const 35268
    i32.const 5
    local.get 1
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 0))
  (func $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueNtNtCsjAdaHq5oevx_5alloc6string6StringEBF_ (type 4) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      i32.const 1
      local.get 1
      call $_RNvXs_NtCsf2KWoDnNIRz_14embedded_alloc4llffNtB4_4HeapNtNtNtCsdmBIiMovVma_4core5alloc6global11GlobalAlloc7dealloc
    end)
  (func $_RNvXs_NtCsf2KWoDnNIRz_14embedded_alloc4llffNtB4_4HeapNtNtNtCsdmBIiMovVma_4core5alloc6global11GlobalAlloc7dealloc (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    i32.const 38712
    call $_RNvMst_NtCsdmBIiMovVma_4core4cellINtB5_7RefCellNtCsbqFb0Tus64I_21linked_list_allocator4HeapE10borrow_mutCsf2KWoDnNIRz_14embedded_alloc
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              local.get 1
              i32.const -1
              i32.add
              i32.and
              br_if 0 (;@5;)
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
              local.tee 4
              i32.const -2147483648
              local.get 1
              i32.sub
              i32.gt_u
              br_if 0 (;@5;)
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
                    i32.load offset=72432
                    local.tee 2
                    i32.eqz
                    br_if 0 (;@8;)
                    i32.const 0
                    i32.load offset=72440
                    local.set 5
                    local.get 0
                    local.get 2
                    i32.ge_u
                    br_if 1 (;@7;)
                    local.get 0
                    local.get 4
                    i32.add
                    local.tee 6
                    local.get 2
                    i32.gt_u
                    br_if 4 (;@4;)
                    local.get 0
                    local.set 1
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=72436
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
                      local.set 1
                    end
                    local.get 1
                    local.get 2
                    i32.store offset=4
                    i32.const 0
                    local.get 1
                    i32.store offset=72432
                    i32.const 1
                    local.set 6
                    br 2 (;@6;)
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=72436
                      local.tee 1
                      i32.const 8
                      i32.add
                      local.get 0
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 0
                      local.set 1
                      br 1 (;@8;)
                    end
                    local.get 1
                    i32.const 0
                    i32.store offset=4
                    local.get 1
                    local.get 4
                    local.get 0
                    i32.add
                    local.get 1
                    i32.sub
                    i32.store
                  end
                  local.get 1
                  i32.const 0
                  i32.load offset=72440
                  call $_RNvNtCsbqFb0Tus64I_21linked_list_allocator4hole15check_merge_top
                  i32.const 0
                  local.get 1
                  i32.store offset=72432
                  br 6 (;@1;)
                end
                block  ;; label = @7
                  block  ;; label = @8
                    loop  ;; label = @9
                      local.get 3
                      local.get 0
                      i32.store offset=8
                      local.get 2
                      i32.load offset=4
                      local.tee 1
                      i32.eqz
                      br_if 1 (;@8;)
                      block  ;; label = @10
                        local.get 0
                        local.get 1
                        i32.lt_u
                        br_if 0 (;@10;)
                        local.get 1
                        local.set 2
                        br 1 (;@9;)
                      end
                    end
                    local.get 0
                    local.get 4
                    i32.add
                    local.get 1
                    i32.le_u
                    br_if 1 (;@7;)
                    i32.const 38860
                    i32.const 43
                    i32.const 38920
                    call $_RNvNtCsdmBIiMovVma_4core9panicking5panic
                    unreachable
                  end
                  i32.const 0
                  local.set 1
                end
                local.get 3
                local.get 2
                i32.store offset=12
                local.get 3
                local.get 2
                i32.load
                local.tee 7
                i32.store offset=16
                local.get 2
                local.get 7
                i32.add
                local.get 0
                i32.gt_u
                br_if 3 (;@3;)
                local.get 2
                local.get 0
                i32.store offset=4
                local.get 0
                local.get 1
                i32.store offset=4
                i32.const 2
                local.set 6
                local.get 2
                local.set 0
              end
              i32.const 0
              local.set 2
              br 3 (;@2;)
            end
            i32.const 38760
            i32.const 43
            local.get 3
            i32.const 47
            i32.add
            i32.const 38744
            i32.const 38952
            call $_RNvNtCsdmBIiMovVma_4core6result13unwrap_failed
            unreachable
          end
          i32.const 38860
          i32.const 43
          i32.const 38904
          call $_RNvNtCsdmBIiMovVma_4core9panicking5panic
          unreachable
        end
        local.get 3
        i32.const 12
        i32.store offset=40
        local.get 3
        i32.const 13
        i32.store offset=32
        local.get 3
        i32.const 13
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
        i32.const 34057
        local.get 3
        i32.const 20
        i32.add
        i32.const 38936
        call $_RNvNtCsdmBIiMovVma_4core9panicking9panic_fmt
        unreachable
      end
      loop  ;; label = @2
        local.get 6
        local.get 2
        i32.eq
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 0
          i32.load offset=4
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 0
            local.get 0
            i32.load
            i32.add
            local.get 1
            i32.eq
            br_if 0 (;@4;)
            local.get 2
            i32.const 1
            i32.add
            local.set 2
            local.get 1
            local.set 0
            br 2 (;@2;)
          end
          local.get 1
          i32.load offset=4
          local.set 7
          local.get 1
          i32.const 0
          i32.store offset=4
          local.get 1
          i32.load
          local.set 1
          local.get 0
          local.get 7
          i32.store offset=4
          local.get 0
          local.get 1
          local.get 0
          i32.load
          i32.add
          i32.store
          local.get 2
          i32.const 1
          i32.add
          local.set 2
          br 1 (;@2;)
        end
      end
      local.get 0
      local.get 5
      call $_RNvNtCsbqFb0Tus64I_21linked_list_allocator4hole15check_merge_top
    end
    i32.const 0
    i32.const 0
    i32.load offset=72424
    local.get 4
    i32.sub
    i32.store offset=72424
    i32.const 0
    i32.const 0
    i32.load offset=72420
    i32.const 1
    i32.add
    i32.store offset=72420
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $_RNvXsZ_NtCsjAdaHq5oevx_5alloc6stringNtB5_6StringNtNtCsdmBIiMovVma_4core3fmt5Write9write_str (type 0) (param i32 i32 i32) (result i32)
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
      local.get 0
      i32.load offset=4
      local.get 3
      i32.add
      local.get 1
      local.get 2
      call $memcpy
      drop
    end
    local.get 0
    local.get 3
    local.get 2
    i32.add
    i32.store offset=8
    i32.const 0)
  (func $_RNvXsZ_NtCsjAdaHq5oevx_5alloc6stringNtB5_6StringNtNtCsdmBIiMovVma_4core3fmt5Write10write_char (type 1) (param i32 i32) (result i32)
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
  (func $_RNvYNtNtCsjAdaHq5oevx_5alloc6string6StringNtNtCsdmBIiMovVma_4core3fmt5Write9write_fmtB6_ (type 0) (param i32 i32 i32) (result i32)
    local.get 0
    i32.const 35124
    local.get 1
    local.get 2
    call $_RNvNtCsdmBIiMovVma_4core3fmt5write)
  (func $_RNvNtCsdmBIiMovVma_4core9panicking19assert_failed_inner (type 3) (param i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 38728
    i32.store offset=4
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.const 38728
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    i32.const 2
    i32.store offset=20
    local.get 2
    i32.const 37699
    i32.store offset=16
    local.get 2
    i32.const 1
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.tee 3
    local.get 2
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=40
    local.get 2
    local.get 3
    local.get 2
    i64.extend_i32_u
    i64.or
    i64.store offset=32
    local.get 2
    i32.const 2
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 2
    i32.const 16
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=24
    i32.const 33224
    local.get 2
    i32.const 24
    i32.add
    i32.const 39040
    call $_RNvNtCsdmBIiMovVma_4core9panicking9panic_fmt
    unreachable)
  (func $_RNvXs1g_NtCsdmBIiMovVma_4core3fmtRDNtB6_5DebugEL_Bx_3fmtB8_ (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 1))
  (func $_RNvXs1i_NtCsdmBIiMovVma_4core3fmtReNtB6_7Display3fmtB8_ (type 1) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter3pad)
  (func $_RNvCs1njKG4L9aB3_7___rustc17rust_begin_unwind (type 3) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 0
    i32.const 0
    i32.load8_u offset=72448
    local.tee 3
    i32.const 1
    local.get 3
    select
    i32.store8 offset=72448
    block  ;; label = @1
      local.get 3
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      i64.load offset=39489 align=1
      i64.store offset=72449 align=1
      i32.const 0
      i32.const 0
      i64.load offset=39494 align=1
      i64.store offset=72454 align=1
      local.get 2
      i32.const 72449
      i32.store offset=8
      local.get 2
      i64.const 55834575040
      i64.store offset=12 align=4
      local.get 2
      local.get 0
      i32.store offset=24
      local.get 2
      i32.const 14
      i32.store offset=40
      local.get 2
      local.get 2
      i32.const 24
      i32.add
      i32.store offset=36
      local.get 2
      i32.const 8
      i32.add
      i32.const 33303
      local.get 2
      i32.const 36
      i32.add
      call $_RNvYNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions6RawBufNtNtCsdmBIiMovVma_4core3fmt5Write9write_fmtB6_
      drop
      local.get 2
      i32.const 36
      i32.add
      local.get 2
      i32.load offset=8
      local.get 2
      i32.load offset=16
      call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions7logging10log_buffer
      i32.const 0
      i32.const 0
      i64.load offset=39502 align=1
      i64.store offset=72449 align=1
      i32.const 0
      i32.const 0
      i64.load offset=39508 align=1
      i64.store offset=72455 align=1
      local.get 2
      local.get 1
      i32.store offset=20
      local.get 2
      i32.const 72449
      i32.store offset=24
      local.get 2
      i64.const 60129542336
      i64.store offset=28 align=4
      local.get 2
      i32.const 15
      i32.store offset=40
      local.get 2
      local.get 2
      i32.const 20
      i32.add
      i32.store offset=36
      local.get 2
      i32.const 24
      i32.add
      i32.const 33303
      local.get 2
      i32.const 36
      i32.add
      call $_RNvYNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions6RawBufNtNtCsdmBIiMovVma_4core3fmt5Write9write_fmtB6_
      drop
      local.get 2
      i32.const 36
      i32.add
      local.get 2
      i32.load offset=24
      local.get 2
      i32.load offset=32
      call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions7logging10log_buffer
      i32.const 0
      i32.const 0
      i32.store8 offset=72448
      unreachable
    end
    local.get 2
    i32.const 36
    i32.add
    i32.const 39516
    i32.const 19
    i32.const 4
    call $_RNvNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions7logging3log
    unreachable)
  (func $_RNvXs0_NtNtCsdmBIiMovVma_4core3fmt8buildersNtB5_10PadAdapterNtB7_5Write9write_str (type 0) (param i32 i32 i32) (result i32)
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
            i32.const 38602
            i32.const 4
            local.get 3
            i32.load offset=12
            call_indirect (type 0)
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
          call_indirect (type 0)
          i32.eqz
          br_if 1 (;@2;)
        end
      end
      i32.const 1
      local.set 6
    end
    local.get 6)
  (func $_RNvXs0_NtNtCsdmBIiMovVma_4core3fmt8buildersNtB5_10PadAdapterNtB7_5Write10write_char (type 1) (param i32 i32) (result i32)
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
      i32.const 38602
      i32.const 4
      local.get 2
      i32.load offset=12
      call_indirect (type 0)
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
    call_indirect (type 1))
  (func $_RNvYNtNtNtCsdmBIiMovVma_4core3fmt8builders10PadAdapterNtB6_5Write9write_fmtB8_ (type 0) (param i32 i32 i32) (result i32)
    local.get 0
    i32.const 37616
    local.get 1
    local.get 2
    call $_RNvNtCsdmBIiMovVma_4core3fmt5write)
  (func $_RNvNvMsa_NtCsdmBIiMovVma_4core3fmtNtB7_9Formatter12pad_integral12write_prefix (type 10) (param i32 i32 i32 i32 i32) (result i32)
    block  ;; label = @1
      local.get 2
      i32.const -1
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 1
      i32.load offset=16
      call_indirect (type 1)
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
    call_indirect (type 0))
  (func $_RNvNtNtNtCsdmBIiMovVma_4core7unicode12unicode_data11white_space6lookup (type 6) (param i32) (result i32)
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
    i32.load8_u offset=39184
    i32.const 2
    i32.and
    i32.const 1
    i32.shr_u)
  (func $_RNvNtNtNtCsdmBIiMovVma_4core7unicode12unicode_data15grapheme_extend11lookup_slow (type 6) (param i32) (result i32)
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
    i32.load offset=38376
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
    i32.load offset=38376
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
    i32.load offset=38376
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
    i32.load offset=38376
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
    i32.load offset=38376
    i32.const 11
    i32.shl
    local.get 2
    i32.gt_u
    select
    local.tee 3
    i32.const 2
    i32.shl
    i32.load offset=38376
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
    i32.const 38376
    i32.add
    local.set 5
    local.get 2
    i32.load offset=38376
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
        i32.const 36734
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
  (func $_RNvNtNtNtCsdmBIiMovVma_4core7unicode12unicode_data28default_ignorable_code_point11lookup_slow (type 6) (param i32) (result i32)
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
    i32.load offset=38508
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
    i32.load offset=38508
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
    i32.load offset=38508
    i32.const 11
    i32.shl
    local.get 2
    i32.gt_u
    select
    local.tee 3
    i32.const 2
    i32.shl
    i32.load offset=38508
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
    i32.const 38508
    i32.add
    local.set 5
    local.get 2
    i32.load offset=38508
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
        i32.const 37501
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
  (func $_RNvNtNtNtCsdmBIiMovVma_4core7unicode12unicode_data2cf11lookup_slow (type 6) (param i32) (result i32)
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
    i32.load offset=38556
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
    i32.load offset=38556
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
    i32.load offset=38556
    i32.const 11
    i32.shl
    local.get 2
    i32.gt_u
    select
    local.tee 3
    i32.const 2
    i32.shl
    i32.load offset=38556
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
    i32.const 38556
    i32.add
    local.set 5
    local.get 2
    i32.load offset=38556
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
        i32.const 37536
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
  (func $_RNvMNtNtCsdmBIiMovVma_4core4char7methodsc11is_assigned (type 6) (param i32) (result i32)
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
  (func $_RNvNtNtNtCsdmBIiMovVma_4core7unicode12unicode_data13cn_planes_0_311lookup_slow (type 6) (param i32) (result i32)
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
    i32.load offset=38160
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
    i32.load offset=38160
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
    i32.load offset=38160
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
    i32.load offset=38160
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
    i32.load offset=38160
    i32.const 11
    i32.shl
    local.get 2
    i32.gt_u
    select
    local.tee 3
    i32.const 2
    i32.shl
    i32.load offset=38160
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
    i32.const 38160
    i32.add
    local.set 5
    local.get 2
    i32.load offset=38160
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
        i32.const 35273
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
  (func $_RNvNtCsdmBIiMovVma_4core9panicking18panic_bounds_check (type 3) (param i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 32
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
    i32.const 12
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.tee 3
    local.get 2
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=24
    local.get 2
    local.get 3
    local.get 2
    i32.const 12
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=16
    i32.const 33049
    local.get 2
    i32.const 16
    i32.add
    i32.const 37640
    call $_RNvNtCsdmBIiMovVma_4core9panicking9panic_fmt
    unreachable)
  (func $_RNvNtCsdmBIiMovVma_4core3str19slice_error_fail_rt (type 8) (param i32 i32 i32 i32 i32)
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
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 2
                        local.get 1
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 3
                        local.get 1
                        i32.gt_u
                        br_if 1 (;@9;)
                        local.get 2
                        local.get 3
                        i32.gt_u
                        br_if 2 (;@8;)
                        local.get 2
                        i32.eqz
                        br_if 4 (;@6;)
                        local.get 2
                        local.get 1
                        i32.ge_u
                        br_if 4 (;@6;)
                        local.get 0
                        local.get 2
                        i32.add
                        i32.load8_s
                        i32.const -65
                        i32.gt_s
                        br_if 4 (;@6;)
                        block  ;; label = @11
                          local.get 0
                          local.get 2
                          i32.const -1
                          i32.add
                          local.tee 3
                          i32.add
                          i32.load8_s
                          i32.const -65
                          i32.gt_s
                          br_if 0 (;@11;)
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
                        loop  ;; label = @11
                          local.get 1
                          local.get 2
                          i32.eq
                          br_if 6 (;@5;)
                          local.get 0
                          local.get 2
                          i32.add
                          i32.load8_s
                          i32.const -65
                          i32.gt_s
                          br_if 4 (;@7;)
                          local.get 2
                          i32.const 1
                          i32.add
                          local.tee 2
                          local.get 1
                          i32.lt_u
                          br_if 0 (;@11;)
                        end
                        local.get 1
                        local.set 2
                        br 3 (;@7;)
                      end
                      local.get 5
                      i32.const 12
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
                      i32.const 33104
                      local.get 5
                      i32.const 24
                      i32.add
                      local.get 4
                      call $_RNvNtCsdmBIiMovVma_4core9panicking9panic_fmt
                      unreachable
                    end
                    local.get 5
                    i32.const 12
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
                    i32.const 33165
                    local.get 5
                    i32.const 24
                    i32.add
                    local.get 4
                    call $_RNvNtCsdmBIiMovVma_4core9panicking9panic_fmt
                    unreachable
                  end
                  local.get 5
                  i32.const 12
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
                  i32.const 33010
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
                block  ;; label = @7
                  local.get 3
                  local.get 2
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 2
                  local.get 1
                  i32.gt_u
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 3
                    local.get 1
                    i32.eq
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      local.get 3
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 0
                      local.get 3
                      i32.add
                      i32.load8_s
                      i32.const -65
                      i32.le_s
                      br_if 2 (;@7;)
                    end
                    local.get 2
                    local.get 1
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 0
                    local.get 2
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.le_s
                    br_if 1 (;@7;)
                  end
                  local.get 3
                  local.get 2
                  i32.eq
                  br_if 4 (;@3;)
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      local.get 3
                      i32.add
                      local.tee 1
                      i32.load8_s
                      local.tee 3
                      i32.const -1
                      i32.le_s
                      br_if 0 (;@9;)
                      local.get 3
                      i32.const 255
                      i32.and
                      local.set 3
                      br 1 (;@8;)
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
                    block  ;; label = @9
                      local.get 3
                      i32.const -33
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 0
                      i32.const 6
                      i32.shl
                      local.get 2
                      i32.or
                      local.set 3
                      br 1 (;@8;)
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
                    block  ;; label = @9
                      local.get 3
                      i32.const -16
                      i32.ge_u
                      br_if 0 (;@9;)
                      local.get 2
                      local.get 0
                      i32.const 12
                      i32.shl
                      i32.or
                      local.set 3
                      br 1 (;@8;)
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
                  i32.const 16
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
                  i32.const 17
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
                  i32.const 12
                  i64.extend_i32_u
                  i64.const 32
                  i64.shl
                  local.get 5
                  i64.extend_i32_u
                  i64.or
                  i64.store offset=24
                  i32.const 34151
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
              br_if 4 (;@1;)
              local.get 3
              local.get 1
              i32.ge_u
              br_if 4 (;@1;)
              local.get 0
              local.get 3
              i32.add
              i32.load8_s
              i32.const -65
              i32.gt_s
              br_if 4 (;@1;)
              block  ;; label = @6
                local.get 0
                local.get 3
                i32.const -1
                i32.add
                local.tee 2
                i32.add
                i32.load8_s
                i32.const -65
                i32.gt_s
                br_if 0 (;@6;)
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
              loop  ;; label = @6
                local.get 1
                local.get 3
                i32.eq
                br_if 1 (;@5;)
                local.get 0
                local.get 3
                i32.add
                i32.load8_s
                i32.const -65
                i32.gt_s
                br_if 2 (;@4;)
                local.get 3
                i32.const 1
                i32.add
                local.tee 3
                local.get 1
                i32.lt_u
                br_if 0 (;@6;)
              end
              local.get 1
              local.set 3
              br 1 (;@4;)
            end
            local.get 1
            local.get 1
            call $_RNvNtCsdmBIiMovVma_4core9panicking18panic_bounds_check
            unreachable
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
          i32.const 16
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
          i32.const 17
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
          i32.const 12
          i64.extend_i32_u
          i64.const 32
          i64.shl
          local.get 5
          i32.const 4
          i32.add
          i64.extend_i32_u
          i64.or
          i64.store offset=24
          i32.const 34233
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
    i32.const 12
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
    i32.const 33165
    local.get 5
    i32.const 24
    i32.add
    local.get 4
    call $_RNvNtCsdmBIiMovVma_4core9panicking9panic_fmt
    unreachable)
  (func $_RNvXs_NtNtCsdmBIiMovVma_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtB8_ (type 1) (param i32 i32) (result i32)
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
            i32.load8_u offset=37579
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
          i32.const 38606
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
          i32.load8_u offset=38608
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
        i32.const 38606
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
        i32.const 38600
        i32.const 2
        local.get 1
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 0)
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
          i32.load8_u offset=37579
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
        i32.const 38606
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
        i32.load8_u offset=38608
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
      i32.const 38606
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
  (func $_RNvXsj_NtCsdmBIiMovVma_4core3fmtcNtB5_5Debug3fmt (type 1) (param i32 i32) (result i32)
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
      call_indirect (type 1)
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
          call_indirect (type 1)
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
        call_indirect (type 0)
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        local.set 3
        br 1 (;@1;)
      end
      local.get 4
      i32.const 39
      local.get 1
      call_indirect (type 1)
      local.set 3
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $_RNvNtCsdmBIiMovVma_4core6option13unwrap_failed (type 4) (param i32)
    i32.const 37656
    i32.const 43
    local.get 0
    call $_RNvNtCsdmBIiMovVma_4core9panicking5panic
    unreachable)
  (func $_RNvNtCsdmBIiMovVma_4core4cell22panic_already_borrowed (type 4) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 18
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 1
    i32.const 15
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store
    i32.const 33303
    local.get 1
    local.get 0
    call $_RNvNtCsdmBIiMovVma_4core9panicking9panic_fmt
    unreachable)
  (func $_RNvXsr_NtCsdmBIiMovVma_4core4cellNtB5_14BorrowMutErrorNtNtB7_3fmt7Display3fmt (type 1) (param i32 i32) (result i32)
    local.get 1
    i32.const 38656
    i32.const 24
    call $_RNvMsa_NtCsdmBIiMovVma_4core3fmtNtB5_9Formatter3pad)
  (func $_RNvMst_NtCsdmBIiMovVma_4core4cellINtB5_7RefCellNtCsbqFb0Tus64I_21linked_list_allocator4HeapE10borrow_mutCsf2KWoDnNIRz_14embedded_alloc (type 4) (param i32)
    block  ;; label = @1
      i32.const 0
      i32.load offset=72420
      br_if 0 (;@1;)
      i32.const 0
      i32.const -1
      i32.store offset=72420
      return
    end
    local.get 0
    call $_RNvNtCsdmBIiMovVma_4core4cell22panic_already_borrowed
    unreachable)
  (func $_RNvCsbqFb0Tus64I_21linked_list_allocator8align_up (type 1) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 1
      i32.popcnt
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      i32.const 38803
      i32.const 83
      i32.const 38844
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
  (func $_RNvNtCsbqFb0Tus64I_21linked_list_allocator4hole15check_merge_top (type 3) (param i32 i32)
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
  (func $_RNvXsq_NtCsdmBIiMovVma_4core3fmtOhNtB5_5Debug3fmtCsbqFb0Tus64I_21linked_list_allocator (type 1) (param i32 i32) (result i32)
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
      i32.load8_u offset=37579
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
    i32.const 38606
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
  (func $_RINvNtCsdmBIiMovVma_4core9panicking13assert_failedOhBM_ECsbqFb0Tus64I_21linked_list_allocator (type 3) (param i32 i32)
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
    local.get 2
    i32.const 12
    i32.add
    call $_RNvNtCsdmBIiMovVma_4core9panicking19assert_failed_inner
    unreachable)
  (func $_RNvXs1g_NtCsdmBIiMovVma_4core3fmtROhNtB6_5Debug3fmtCsbqFb0Tus64I_21linked_list_allocator (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    call $_RNvXsq_NtCsdmBIiMovVma_4core3fmtOhNtB5_5Debug3fmtCsbqFb0Tus64I_21linked_list_allocator)
  (func $_RNvXsd_NtNtCsdmBIiMovVma_4core5alloc6layoutNtB5_11LayoutErrorNtNtB9_3fmt5Debug3fmt.133 (type 1) (param i32 i32) (result i32)
    local.get 1
    i32.load
    i32.const 39056
    i32.const 11
    local.get 1
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 0))
  (func $_RNvMNtCsjAdaHq5oevx_5alloc5allocNtB2_6Global18alloc_impl_runtime (type 5) (param i32 i32 i32)
    (local i32)
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
      local.get 3
      i32.const 0
      local.get 1
      call $memset
      drop
    end
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store)
  (func $_RNvNtCs2WOo28oSl5V_8postcard6varint12varint_usize.170 (type 5) (param i32 i32 i32)
    (local i32 i32)
    i32.const 1
    local.set 3
    block  ;; label = @1
      loop  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 6
          i32.ne
          br_if 0 (;@3;)
          i32.const 5
          local.set 3
          br 2 (;@1;)
        end
        local.get 2
        local.get 3
        i32.add
        i32.const -1
        i32.add
        local.tee 4
        local.get 1
        i32.store8
        local.get 1
        i32.const 128
        i32.lt_u
        br_if 1 (;@1;)
        local.get 4
        local.get 1
        i32.const 128
        i32.or
        i32.store8
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 1
        i32.const 7
        i32.shr_u
        local.set 1
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store)
  (func $_RNvMNtNtCs2WOo28oSl5V_8postcard3ser10serializerINtB2_10SerializerNtNtB4_7flavors5SliceE19try_push_varint_u32CsdwI7iSz8jyL_10myrmic_sdk (type 1) (param i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=8
      local.get 0
      i32.load offset=4
      local.tee 2
      i32.ne
      br_if 0 (;@1;)
      i32.const 2
      return
    end
    local.get 2
    local.get 1
    i32.store8
    local.get 0
    local.get 2
    i32.const 1
    i32.add
    i32.store offset=4
    i32.const 255)
  (func $_RINvXs5_NtNtCs2WOo28oSl5V_8postcard3ser10serializerQINtB6_10SerializerNtNtB8_7flavors5SliceENtNtCs3wU1vCl2ErL_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCsdmBIiMovVma_4core6option6OptionINtNtCsjAdaHq5oevx_5alloc6borrow3CoweEEECsdwI7iSz8jyL_10myrmic_sdk (type 1) (param i32 i32) (result i32)
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
  (func $_RNvXs1_NtNtCsdmBIiMovVma_4core5panic10panic_infoNtB5_12PanicMessageNtNtB9_3fmt7Display3fmt (type 1) (param i32 i32) (result i32)
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
  (func $_RNvYNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions6RawBufNtNtCsdmBIiMovVma_4core3fmt5Write9write_fmtB6_ (type 0) (param i32 i32 i32) (result i32)
    local.get 0
    i32.const 39564
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
  (func $_RNvXs1i_NtCsdmBIiMovVma_4core3fmtRNtNtNtB8_5panic8location8LocationNtB6_7Display3fmtCsdwI7iSz8jyL_10myrmic_sdk (type 1) (param i32 i32) (result i32)
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
    i32.const 12
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
    i32.const 10
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
    i32.const 33002
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
  (func $_RNvXs_NtCsdwI7iSz8jyL_10myrmic_sdk14host_functionsNtB4_6RawBufNtNtCsdmBIiMovVma_4core3fmt5Write9write_str (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=8
    local.tee 3
    i32.add
    local.get 1
    local.get 0
    i32.load offset=4
    local.get 3
    i32.sub
    local.tee 4
    local.get 2
    local.get 4
    local.get 2
    i32.lt_u
    select
    local.tee 2
    call $memcpy
    drop
    local.get 0
    local.get 2
    local.get 3
    i32.add
    i32.store offset=8
    i32.const 0)
  (func $_RNvYNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions6RawBufNtNtCsdmBIiMovVma_4core3fmt5Write10write_charB6_ (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
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
    local.get 0
    i32.load
    local.get 0
    i32.load offset=8
    local.tee 1
    i32.add
    local.get 2
    i32.const 12
    i32.add
    local.get 0
    i32.load offset=4
    local.get 1
    i32.sub
    local.tee 3
    local.get 4
    local.get 3
    local.get 4
    i32.lt_u
    select
    local.tee 4
    call $memcpy
    drop
    local.get 0
    local.get 4
    local.get 1
    i32.add
    i32.store offset=8
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    i32.const 0)
  (func $_critical_section_1_0_acquire (type 7))
  (func $init_allocator (type 7)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 38680
    call $_RNvMst_NtCsdmBIiMovVma_4core4cellINtB5_7RefCellNtCsbqFb0Tus64I_21linked_list_allocator4HeapE10borrow_mutCsf2KWoDnNIRz_14embedded_alloc
    i32.const 0
    i32.const 0
    i32.store offset=72424
    block  ;; label = @1
      block  ;; label = @2
        i32.const 72420
        i32.const 39655
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
        i32.const 72420
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
        i32.store offset=72436
        i32.const 0
        local.get 1
        i32.store offset=72432
        i32.const 0
        i32.const 72420
        i32.const 3
        i32.and
        i32.store8 offset=72444
        i32.const 0
        local.get 1
        local.get 3
        i32.add
        i32.store offset=72440
        i32.const 0
        i32.const 0
        i32.load offset=72420
        i32.const 1
        i32.add
        i32.store offset=72420
        i32.const 0
        i32.const 0
        i32.store offset=72428
        local.get 0
        i32.const 16
        i32.add
        global.set $__stack_pointer
        return
      end
      i32.const 38968
      i32.const 56
      i32.const 39024
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
  (func $memset (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 16
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.set 3
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        local.get 0
        i32.const 0
        local.get 0
        i32.sub
        i32.const 3
        i32.and
        local.tee 4
        i32.add
        local.tee 5
        i32.ge_u
        br_if 0 (;@2;)
        local.get 4
        i32.const -1
        i32.add
        local.set 6
        local.get 0
        local.set 3
        block  ;; label = @3
          local.get 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.set 7
          local.get 0
          local.set 3
          loop  ;; label = @4
            local.get 3
            local.get 1
            i32.store8
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            local.get 7
            i32.const -1
            i32.add
            local.tee 7
            br_if 0 (;@4;)
          end
        end
        local.get 6
        i32.const 7
        i32.lt_u
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 3
          local.get 1
          i32.store8
          local.get 3
          i32.const 7
          i32.add
          local.get 1
          i32.store8
          local.get 3
          i32.const 6
          i32.add
          local.get 1
          i32.store8
          local.get 3
          i32.const 5
          i32.add
          local.get 1
          i32.store8
          local.get 3
          i32.const 4
          i32.add
          local.get 1
          i32.store8
          local.get 3
          i32.const 3
          i32.add
          local.get 1
          i32.store8
          local.get 3
          i32.const 2
          i32.add
          local.get 1
          i32.store8
          local.get 3
          i32.const 1
          i32.add
          local.get 1
          i32.store8
          local.get 3
          i32.const 8
          i32.add
          local.tee 3
          local.get 5
          i32.ne
          br_if 0 (;@3;)
        end
      end
      block  ;; label = @2
        local.get 5
        local.get 5
        local.get 2
        local.get 4
        i32.sub
        local.tee 2
        i32.const -4
        i32.and
        i32.add
        local.tee 3
        i32.ge_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 255
        i32.and
        i32.const 16843009
        i32.mul
        local.set 7
        loop  ;; label = @3
          local.get 5
          local.get 7
          i32.store
          local.get 5
          i32.const 4
          i32.add
          local.tee 5
          local.get 3
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 2
      i32.const 3
      i32.and
      local.set 2
    end
    block  ;; label = @1
      local.get 3
      local.get 3
      local.get 2
      i32.add
      local.tee 7
      i32.ge_u
      br_if 0 (;@1;)
      local.get 2
      i32.const -1
      i32.add
      local.set 4
      block  ;; label = @2
        local.get 2
        i32.const 7
        i32.and
        local.tee 5
        i32.eqz
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 3
          local.get 1
          i32.store8
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 5
          i32.const -1
          i32.add
          local.tee 5
          br_if 0 (;@3;)
        end
      end
      local.get 4
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.store8
        local.get 3
        i32.const 7
        i32.add
        local.get 1
        i32.store8
        local.get 3
        i32.const 6
        i32.add
        local.get 1
        i32.store8
        local.get 3
        i32.const 5
        i32.add
        local.get 1
        i32.store8
        local.get 3
        i32.const 4
        i32.add
        local.get 1
        i32.store8
        local.get 3
        i32.const 3
        i32.add
        local.get 1
        i32.store8
        local.get 3
        i32.const 2
        i32.add
        local.get 1
        i32.store8
        local.get 3
        i32.const 1
        i32.add
        local.get 1
        i32.store8
        local.get 3
        i32.const 8
        i32.add
        local.tee 3
        local.get 7
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func $_RNvNtCsf9O95adDRTY_17compiler_builtins3mem6memcpy (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 16
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.set 4
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        local.get 0
        i32.const 0
        local.get 0
        i32.sub
        i32.const 3
        i32.and
        local.tee 5
        i32.add
        local.tee 6
        i32.ge_u
        br_if 0 (;@2;)
        local.get 5
        i32.const -1
        i32.add
        local.set 7
        local.get 0
        local.set 4
        local.get 1
        local.set 8
        block  ;; label = @3
          local.get 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 5
          local.set 9
          local.get 0
          local.set 4
          local.get 1
          local.set 8
          loop  ;; label = @4
            local.get 4
            local.get 8
            i32.load8_u
            i32.store8
            local.get 8
            i32.const 1
            i32.add
            local.set 8
            local.get 4
            i32.const 1
            i32.add
            local.set 4
            local.get 9
            i32.const -1
            i32.add
            local.tee 9
            br_if 0 (;@4;)
          end
        end
        local.get 7
        i32.const 7
        i32.lt_u
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 4
          local.get 8
          i32.load8_u
          i32.store8
          local.get 4
          i32.const 1
          i32.add
          local.get 8
          i32.const 1
          i32.add
          i32.load8_u
          i32.store8
          local.get 4
          i32.const 2
          i32.add
          local.get 8
          i32.const 2
          i32.add
          i32.load8_u
          i32.store8
          local.get 4
          i32.const 3
          i32.add
          local.get 8
          i32.const 3
          i32.add
          i32.load8_u
          i32.store8
          local.get 4
          i32.const 4
          i32.add
          local.get 8
          i32.const 4
          i32.add
          i32.load8_u
          i32.store8
          local.get 4
          i32.const 5
          i32.add
          local.get 8
          i32.const 5
          i32.add
          i32.load8_u
          i32.store8
          local.get 4
          i32.const 6
          i32.add
          local.get 8
          i32.const 6
          i32.add
          i32.load8_u
          i32.store8
          local.get 4
          i32.const 7
          i32.add
          local.get 8
          i32.const 7
          i32.add
          i32.load8_u
          i32.store8
          local.get 8
          i32.const 8
          i32.add
          local.set 8
          local.get 4
          i32.const 8
          i32.add
          local.tee 4
          local.get 6
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 6
      local.get 2
      local.get 5
      i32.sub
      local.tee 10
      i32.const -4
      i32.and
      local.tee 11
      i32.add
      local.set 4
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 5
          i32.add
          local.tee 12
          i32.const 3
          i32.and
          local.tee 7
          br_if 0 (;@3;)
          local.get 6
          local.get 4
          i32.ge_u
          br_if 1 (;@2;)
          local.get 12
          local.set 1
          loop  ;; label = @4
            local.get 6
            local.get 1
            i32.load
            i32.store
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 6
            i32.const 4
            i32.add
            local.tee 6
            local.get 4
            i32.lt_u
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        i32.const 0
        local.set 1
        local.get 3
        i32.const 0
        i32.store offset=12
        local.get 3
        i32.const 12
        i32.add
        local.get 7
        i32.or
        local.set 8
        block  ;; label = @3
          i32.const 4
          local.get 7
          i32.sub
          local.tee 9
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          local.get 12
          i32.load8_u
          i32.store8
          i32.const 1
          local.set 1
        end
        block  ;; label = @3
          local.get 9
          i32.const 2
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          local.get 1
          i32.add
          local.get 12
          local.get 1
          i32.add
          i32.load16_u
          i32.store16
        end
        local.get 12
        local.get 7
        i32.sub
        local.set 8
        local.get 7
        i32.const 3
        i32.shl
        local.set 2
        local.get 3
        i32.load offset=12
        local.set 9
        block  ;; label = @3
          local.get 6
          i32.const 4
          i32.add
          local.get 4
          i32.ge_u
          br_if 0 (;@3;)
          i32.const 0
          local.get 2
          i32.sub
          i32.const 24
          i32.and
          local.set 5
          loop  ;; label = @4
            local.get 6
            local.tee 1
            local.get 9
            local.get 2
            i32.shr_u
            local.get 8
            i32.const 4
            i32.add
            local.tee 8
            i32.load
            local.tee 9
            local.get 5
            i32.shl
            i32.or
            i32.store
            local.get 1
            i32.const 4
            i32.add
            local.set 6
            local.get 1
            i32.const 8
            i32.add
            local.get 4
            i32.lt_u
            br_if 0 (;@4;)
          end
        end
        i32.const 0
        local.set 1
        local.get 3
        i32.const 0
        i32.store8 offset=8
        local.get 3
        i32.const 0
        i32.store8 offset=6
        block  ;; label = @3
          block  ;; label = @4
            local.get 7
            i32.const 1
            i32.ne
            br_if 0 (;@4;)
            local.get 3
            i32.const 8
            i32.add
            local.set 13
            i32.const 0
            local.set 5
            i32.const 0
            local.set 7
            i32.const 0
            local.set 14
            br 1 (;@3;)
          end
          local.get 8
          i32.const 5
          i32.add
          i32.load8_u
          local.set 7
          local.get 3
          local.get 8
          i32.const 4
          i32.add
          i32.load8_u
          local.tee 5
          i32.store8 offset=8
          local.get 7
          i32.const 8
          i32.shl
          local.set 7
          i32.const 2
          local.set 14
          local.get 3
          i32.const 6
          i32.add
          local.set 13
        end
        block  ;; label = @3
          local.get 12
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 13
          local.get 8
          i32.const 4
          i32.add
          local.get 14
          i32.add
          i32.load8_u
          i32.store8
          local.get 3
          i32.load8_u offset=6
          i32.const 16
          i32.shl
          local.set 1
          local.get 3
          i32.load8_u offset=8
          local.set 5
        end
        local.get 6
        local.get 7
        local.get 1
        i32.or
        local.get 5
        i32.const 255
        i32.and
        i32.or
        i32.const 0
        local.get 2
        i32.sub
        i32.const 24
        i32.and
        i32.shl
        local.get 9
        local.get 2
        i32.shr_u
        i32.or
        i32.store
      end
      local.get 10
      i32.const 3
      i32.and
      local.set 2
      local.get 12
      local.get 11
      i32.add
      local.set 1
    end
    block  ;; label = @1
      local.get 4
      local.get 4
      local.get 2
      i32.add
      local.tee 6
      i32.ge_u
      br_if 0 (;@1;)
      local.get 2
      i32.const -1
      i32.add
      local.set 9
      block  ;; label = @2
        local.get 2
        i32.const 7
        i32.and
        local.tee 8
        i32.eqz
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 4
          local.get 1
          i32.load8_u
          i32.store8
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 4
          i32.const 1
          i32.add
          local.set 4
          local.get 8
          i32.const -1
          i32.add
          local.tee 8
          br_if 0 (;@3;)
        end
      end
      local.get 9
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 4
        local.get 1
        i32.load8_u
        i32.store8
        local.get 4
        i32.const 1
        i32.add
        local.get 1
        i32.const 1
        i32.add
        i32.load8_u
        i32.store8
        local.get 4
        i32.const 2
        i32.add
        local.get 1
        i32.const 2
        i32.add
        i32.load8_u
        i32.store8
        local.get 4
        i32.const 3
        i32.add
        local.get 1
        i32.const 3
        i32.add
        i32.load8_u
        i32.store8
        local.get 4
        i32.const 4
        i32.add
        local.get 1
        i32.const 4
        i32.add
        i32.load8_u
        i32.store8
        local.get 4
        i32.const 5
        i32.add
        local.get 1
        i32.const 5
        i32.add
        i32.load8_u
        i32.store8
        local.get 4
        i32.const 6
        i32.add
        local.get 1
        i32.const 6
        i32.add
        i32.load8_u
        i32.store8
        local.get 4
        i32.const 7
        i32.add
        local.get 1
        i32.const 7
        i32.add
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 8
        i32.add
        local.set 1
        local.get 4
        i32.const 8
        i32.add
        local.tee 4
        local.get 6
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func $memcpy (type 0) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_RNvNtCsf9O95adDRTY_17compiler_builtins3mem6memcpy)
  (table (;0;) 33 33 funcref)
  (memory (;0;) 2 2)
  (global $__stack_pointer (mut i32) (i32.const 32768))
  (export "memory" (memory 0))
  (export "command_count" (func $command_count))
  (export "command_decrement" (func $command_decrement))
  (export "command_increment" (func $command_increment))
  (export "init_cell" (func $init_cell))
  (export "_critical_section_1_0_acquire" (func $_critical_section_1_0_acquire))
  (export "init_allocator" (func $init_allocator))
  (export "_critical_section_1_0_release" (func $_critical_section_1_0_acquire))
  (elem (;0;) (i32.const 1) func $_RNvXs1g_NtCsdmBIiMovVma_4core3fmtRDNtB6_5DebugEL_Bx_3fmtB8_ $_RNvXs1i_NtCsdmBIiMovVma_4core3fmtReNtB6_7Display3fmtB8_ $_RNvXs1g_NtCsdmBIiMovVma_4core3fmtRlNtB6_5Debug3fmtCs42wnaUBpYLM_7counter $_RNvXs1g_NtCsdmBIiMovVma_4core3fmtRReNtB6_5Debug3fmtCs42wnaUBpYLM_7counter $_RNvXsW_NtNtCsdmBIiMovVma_4core3fmt3nummNtB7_5Debug3fmt $_RNvXs1g_NtCsdmBIiMovVma_4core3fmtRmNtB6_5Debug3fmtCs31HxFg2iDf6_9sha1_smol $_RNvXs1g_NtCsdmBIiMovVma_4core3fmtRNtCs3cr5glMGIhR_4uuid4UuidNtB6_5Debug3fmtCs42wnaUBpYLM_7counter $_RNvXse_NtNtCs18QDUBBZXOQ_13myrmic_common5cells3idsNtB5_3SriNtNtCsdmBIiMovVma_4core3fmt5Debug3fmt $_RNvXs9_NtNtNtCsdmBIiMovVma_4core3fmt3num3implNtB9_7Display3fmt $_RNvXs1i_NtCsdmBIiMovVma_4core3fmtReNtB6_7Display3fmtCs3wU1vCl2ErL_10serde_core $_RNvXsq_NtCsjAdaHq5oevx_5alloc6stringNtB5_6StringNtNtCsdmBIiMovVma_4core3fmt7Display3fmt $_RNvXs8_NtNtNtCsdmBIiMovVma_4core3fmt3num3impmNtB9_7Display3fmt $_RNvXsq_NtCsdmBIiMovVma_4core3fmtOhNtB5_5Debug3fmtCsbqFb0Tus64I_21linked_list_allocator $_RNvXs1_NtNtCsdmBIiMovVma_4core5panic10panic_infoNtB5_12PanicMessageNtNtB9_3fmt7Display3fmt $_RNvXs1i_NtCsdmBIiMovVma_4core3fmtRNtNtNtB8_5panic8location8LocationNtB6_7Display3fmtCsdwI7iSz8jyL_10myrmic_sdk $_RNvXs_NtNtCsdmBIiMovVma_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtB8_ $_RNvXsj_NtCsdmBIiMovVma_4core3fmtcNtB5_5Debug3fmt $_RNvXsr_NtCsdmBIiMovVma_4core4cellNtB5_14BorrowMutErrorNtNtB7_3fmt7Display3fmt $_RNvXs3_NtCsdwI7iSz8jyL_10myrmic_sdk5errorNtB5_8ApiErrorNtNtCsdmBIiMovVma_4core3fmt5Debug3fmt $_RINvNtCsdmBIiMovVma_4core3ptr9drop_glueNtNtCsjAdaHq5oevx_5alloc6string6StringEBF_ $_RNvXsZ_NtCsjAdaHq5oevx_5alloc6stringNtB5_6StringNtNtCsdmBIiMovVma_4core3fmt5Write9write_str $_RNvXsZ_NtCsjAdaHq5oevx_5alloc6stringNtB5_6StringNtNtCsdmBIiMovVma_4core3fmt5Write10write_char $_RNvYNtNtCsjAdaHq5oevx_5alloc6string6StringNtNtCsdmBIiMovVma_4core3fmt5Write9write_fmtB6_ $_RNvXsK_NtCsdmBIiMovVma_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt $_RNvXs0_NtNtCsdmBIiMovVma_4core3fmt8buildersNtB5_10PadAdapterNtB7_5Write9write_str $_RNvXs0_NtNtCsdmBIiMovVma_4core3fmt8buildersNtB5_10PadAdapterNtB7_5Write10write_char $_RNvYNtNtNtCsdmBIiMovVma_4core3fmt8builders10PadAdapterNtB6_5Write9write_fmtB8_ $_RNvXs1g_NtCsdmBIiMovVma_4core3fmtROhNtB6_5Debug3fmtCsbqFb0Tus64I_21linked_list_allocator $_RNvXsd_NtNtCsdmBIiMovVma_4core5alloc6layoutNtB5_11LayoutErrorNtNtB9_3fmt5Debug3fmt.133 $_RNvXs_NtCsdwI7iSz8jyL_10myrmic_sdk14host_functionsNtB4_6RawBufNtNtCsdmBIiMovVma_4core3fmt5Write9write_str $_RNvYNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions6RawBufNtNtCsdmBIiMovVma_4core3fmt5Write10write_charB6_ $_RNvYNtNtCsdwI7iSz8jyL_10myrmic_sdk14host_functions6RawBufNtNtCsdmBIiMovVma_4core3fmt5Write9write_fmtB6_)
  (data $.rodata (i32.const 32768) "failed to deserialize postcardfailed to serialize postcardState::save_tocallback name is not valid utf-8failed to read argumentsno payload was sent; declare the handler's payload as `Option<_>` to accept an invocation sent without one\c0\01:\c0\01:\c0\00\15byte range starts at \c0\0d but ends at \c0\00 index out of bounds: the len is \c0\12 but the index is \c0\00\11start byte index \c0' is out of bounds for string of length \c0\00\0fend byte index \c0' is out of bounds for string of length \c0\00\10assertion `left \c0\17 right` failed\0a  left: \c0\09\0a right: \c0\00\11Cell init error: \c0\00\c0\02: \c0\00/rustc/48a229ceaefd4985c50990b14116b6d856af0985/library/alloc/src/fmt.rs\00/Users/melkam/.rustup/toolchains/1.98.1-aarch64-apple-darwin/lib/rustlib/src/rust/library/core/src/ptr/mut_ptr.rs\00/Users/melkam/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/embedded-alloc-0.6.0/src/llff.rs\00/Users/melkam/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/linked_list_allocator-0.10.6/src/hole.rs\00/rustc/48a229ceaefd4985c50990b14116b6d856af0985/library/core/src/fmt/mod.rs\00/rustc/48a229ceaefd4985c50990b14116b6d856af0985/library/core/src/str/mod.rs\00/rustc/48a229ceaefd4985c50990b14116b6d856af0985/library/alloc/src/raw_vec/mod.rs\00/rustc/48a229ceaefd4985c50990b14116b6d856af0985/library/alloc/src/alloc.rs\00src/lib.rs\00\15memory allocation of \c0\0d bytes failed\00\0cFreed node (\c0\19) aliases existing hole (\c0\01[\c0\0d])! Bad free?\00\09Count is \c0\16 (no caller to answer)\00\11start byte index \c0& is not a char boundary; it is inside \c0\08 (bytes \c0\0b of string)\00\0fend byte index \c0& is not a char boundary; it is inside \c0\08 (bytes \c0\0b of string)\00\10Returning count \c0\0c to (sender=\c0\01)\00\15Incremented count to \c0\09 (sender=\c0\01)\00\15Decremented count to \c0\09 (sender=\c0\01)\00\0dstarting (id=\c0\01)\00\d8\84\00\00\0a\00\00\00\0a\00\00\00\01\00\00\00\d8\84\00\00\0a\00\00\00\10\00\00\00\01\00\00\00\d8\84\00\00\0a\00\00\00-\00\00\00\01\00\00\00\d8\84\00\00\0a\00\00\00\22\00\00\00\01\00\00\00my-key\00\00\fe\ff\ff\ff\00\00\00\00\00\00\00\00\fe\ff\ff\ff\00\00\00\00\00\00\00\00\fe\ff\ff\ff\00\00\00\00\00\00\00\00\c8\86\00\00\06\00\00\00\00\00\00\00\0c\00\00\00\04\00\00\00\13\00\00\00Command timed outTarget cell not presentCommand not presentCell errorInternal errorBuffer too smallOther(_)unknown error codeincorrect api usageincorrect sem querytimed outscratch buffer too small for payloadnot ready, try againsignal layer claimed by another cellunavailable, re-resolve the handlewire type mismatch between cell and slotUnknownErrorCodeUsageSemQuerySerdeTimedOutBufferTooSmallNotReadySignalLayerClaimedUnavailableTypeMismatchexpectedactualthis handler does not accept a payloadSri\00\00\8d\84\00\00J\00\00\00=\02\00\00\09\00\00\00capacity overflow\00\00\00<\84\00\00P\00\00\00\1c\00\00\00\05\00\00\00\14\00\00\00\0c\00\00\00\04\00\00\00\15\00\00\00\16\00\00\00\17\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\18\00\00\00a formatting trait implementation returned an error when the underlying stream did not\00\00\19\82\00\00H\00\00\00\8f\02\00\00\0e\00\00\00Error\00\02\06\04\07\01\01\01\14\01\00\01&\022\02\03\017\08\1b\04\06\0b\00\01<\02e\0e;\021\02\0f\01\1c\02\01\01\0b\05\22\05\ed\01\08\02\02\02\16\01\07\01\01\03\04\02\09\02\02\02\04\08\01\04\02\01\05\02\19\02\03\01\06\04\02\02\16\01\07\01\02\01\02\01\02\02\01\01\05\04\02\02\03\03\01\07\04\01\01\07\11\0a\03\01\09\01\03\01\16\01\07\01\02\01\05\02\0a\01\03\01\03\02\01\0f\04\02\0c\07\07\01\03\01\08\02\02\02\16\01\07\01\02\01\05\02\09\02\02\02\03\07\03\04\02\01\05\02\12\0a\02\01\06\03\03\01\04\03\02\01\01\01\02\03\02\03\03\03\0c\04\05\03\03\01\04\02\01\06\01\0e\15\05\0d\01\03\01\17\01\10\02\09\01\03\01\04\07\02\01\03\01\02\02\04\02\0a\07\16\01\03\01\17\01\0a\01\05\02\09\01\03\01\04\07\02\05\03\01\04\02\0a\01\03\0c\0d\01\03\013\01\03\01\06\04\10\02\1a\01\03\01\12\03\18\01\09\01\01\02\07\03\01\04\06\01\01\01\08\06\0a\02\03\0c:\04\1d%\02\01\01\01\05\01\18\01\01\01\17\02\05\01\01\01\07\01\0a\02\04 H\01$\04'\01$\01\0f\01\0d%\c6\01\01\05\01\02\00\01\04\02\07\01\01\01\04\02)\01\04\02!\01\04\02\07\01\01\01\04\02\0f\019\01\04\02C\02 \03\1a\06V\02\06\02\00\03Y\07\16\09\18\09\14\0c\0d\01\03\01\02\0c^\02\0a\06\0a\06\1a\06Y\07+\05F\0a\1f\01\0c\04\0c\04\01\03*\02\05\0b,\04\1a\06\0b\03>\02A\01\1d\02\0b\06\0a\06\0e\02.\02\0c\14M\01\a6\08<\03\0f\03>\05+\02\0b\08+\05\00\02\06\02&\02\06\02\08\01\01\01\01\01\01\01\1f\025\01\0f\01\0e\02\06\01\13\02\03\01\09\01e\01\0c\02\1b\01\0d\03\22\0e!\0f\8c\04\00\16\0b\15\00\02\00\05-\01\01\05\01\028\07\02\0e\18\09\07\01\07\01\07\01\07\01\07\01\07\01\07\01\07\01~\22\1a\01Y\0c\d6\1aP\01V\02g\05+\01^\01V\090\01\00\037\09\00\14\b8\08\dd\14<\03\0a\068\08F\08\0c\06t\0b\1e\03N\01\0b\04!\017\09\0e\02\0a\02g\18\1c\0a\06\02\06\02\06\09\07\01\07\01<\04~\02\0a\06\00\0c\17\041\04\00\02j&\07\0c\05\05\1a\01\05\01\01\01\02\01\02\01\00 *\063\01\13\01\04\04\05\01\87\02\01\01\be\03\06\02\06\02\06\02\03\03\07\01\07\0a\05\02\0c\01\1a\01\13\01\02\01\0f\02\0e\22{\05\03\04-\03X\01\0d\03\01/.\82\1d\031\0f\1c\04$\09\1e\05+\05\1e\01%\04\0e*\9e\02\0a\06$\04$\04(\084\0b\0c\01\0f\01\07\01\02\01\0b\01\0f\01\07\01\02\034\0c\00\09\16\0a\08\18\06\01*\01\09E\06\02\01\01,\01\02\03\01\02\17\01H\08\090\13\01\02\05!\03\1b\05\1b&8\04\14\022\01\02\05\08\01\03\01\1d\02\03\04\0a\07\09\07@ '\04\0c\096\03\1d\02\1b\05\1a\07\04\0c\07PI73\0d3\07.\08\0a\06&\03\1d\08\02\d0\1f\01*\01\03\02\02\10\06\08\09!.\08*\16\1a&\1c\14\17\09N\04$\09D\0a\01\02\19\07\0a\065\01\12\08'\09`\01\14\0b\12\01/>\07\01\01\01\04\01\0f\01\0b\06;\05\0a\06\04\01\08\02\02\02\16\01\07\01\02\01\05\01\0a\02\02\02\03\02\01\06\01\05\07\02\07\03\05\0b\0a\01\01\02\01\01&\01\0a\01\01\02\01\01\04\01\0a\01\02\08\02\1d\5c\01\05\1eH\08\0a\a66\02&\22E\0b\0a\06\0d\13:\06\0a\06\14\1c\1b\02\0f\04\17\b9<dS\0c\08\02\01\02\08\01\02\01\1e\01\02\02\0c\09\0aF\08\02.\02\0b\1bH\08S\0dI\07\0aV\08X\22\0e\0a\06\09\01-\01\0e\0a\1d\03 \02\16\01\0eI\07\01\02\01,\03\01\01\02\01\09\08\0a\06\06\01\02\01%\01\02\01\06\07\0a\06,\04\0a\f6\19\07\11\01)\03\1dU\01\0f2\0d\00fo\01\05\0b\c4\00c\0d\00\0a\00\05\00\00:\00\00\07\1f\01\0a\04Q\01\0a\06\1e\02\06\0aF\0a\0a\01\07\01\15\05\13\00:\c6[\05\19\02\19,K\049\07\11@\05\0b\07\09\00) as\00\04\01\07\01\02\01\00\0f\01\1d\03\02\01\0e\04\08\00\00k\05\0d\03\09\07\0a\02\08\00\fd\03\00\06\17\0f\11\0f.\02\17\09t<\f6\0a'\02\c2\15Fz\14\0c\14\0cW\09\19\87U\01G\01\02\02\01\02\02\02\04\01\0c\01\01\01\07\01A\01\04\02\08\01\07\01\1c\01\04\01\05\01\01\03\07\01\00\02\00\02\00\0f\05\01\0f\00\1f\06\06\d5\07\01\11\02\07\01\02\01\05\05>!\01p-\03\0e\02\0a\04\02\00\1f\11:\05\01\00*\d6+\04\01\c0\1f\01\16\08\02\e0\07\01\04\01\02\01\0f\01\c5\02\10)L\04\0a\04\02\00DL=\c2\04\01\1b\01\02\01\01\02\01\01\0a\01\04\01\01\01\01\06\01\04\01\01\01\01\01\01\03\01\02\01\01\02\01\01\01\01\01\01\01\01\01\01\02\01\01\02\04\01\07\01\04\01\04\01\01\01\0a\01\11\05\03\01\05\01\114\02\00,\04d\0c\0f\02\0f\01\0f\01%\0a\ae8\1d\0d,\04\09\07\02\0e\06\9a\00\03\11\03\0d\03\da\06\0c\04\01\0f\0c\048\08\0a\06(\08\1e\02\0c\04\02\0e\09'\00\08\0e\02\0d\03\0b\039\01\01\04\10\02\0c\04\0a\07\93\01g\00\00 \00\02\00\02\00\0f\00\00\00\00\00\05\00\00\00\00p\00\07\00-\01\01\01\02\01\02\01\01H\0b0\15\10\01e\07\02\06\02\02\01\04#\01\1e\1b[\0b:\09\09\01\18\04\01\09\01\03\01\05+\03;\09*\18\01 7\01\01\01\04\08\04\01\03\07\0a\02\1d\01:\01\01\01\02\04\08\01\09\01\0a\02\1a\01\02\029\01\04\02\04\02\02\03\03\01\1e\02\03\01\0b\029\01\04\05\01\02\04\01\14\02\16\06\01\01:\01\01\02\01\04\08\01\07\03\0a\02\1e\01;\01\01\01\0c\01\09\01(\01\03\017\01\01\03\05\03\01\04\07\02\0b\02\1d\01:\01\02\02\01\01\03\03\01\04\07\02\0b\02\1c\029\02\01\01\02\04\08\01\09\01\0a\02\1d\01H\01\04\01\02\03\01\01\08\01Q\01\02\07\0c\08b\01\02\09\0b\07I\02\1b\01\01\01\01\017\0e\01\05\01\02\05\0b\01$\09\01f\04\01\06\01\02\02\02\19\02\04\03\10\04\0d\01\02\02\06\01\0f\01\00\03\00\04\1c\03\1d\02\1e\02@\02\01\07\08\01\02\0b\09\01-\03\01\01u\02\22\01v\03\04\02\09\01\06\03\db\02\02\01:\01\01\07\01\01\01\01\02\08\06\0a\02\010.\02\0c\14\040\0a\04\03&\09\0c\02 \04\02\068\01\01\02\03\01\01\058\08\02\02\98\03\01\0d\01\07\04\01\06\01\03\02\c6@\00\01\c3!\00\03\8d\01` \00\06i\02\00\04\01\0a \02P\02\00\01\03\01\04\01\19\02\05\01\97\02\1a\12\0d\01&\08\19\0b\01\01,\030\01\02\04\02\02\02\01$\01C\06\02\02\02\02\0c\01\08\01/\013\01\01\03\02\02\05\02\01\01*\02\08\01\ee\01\02\01\04\01\00\01\00\10\10\10\00\02\00\01\e2\01\95\05\00\03\01\02\05\04(\03\04\01\a5\02\00\04A\05\00\02M\06F\0b1\04{\016\0f)\01\02\02\0a\031\04\02\02\07\01=\03$\05\01\08>\01\0c\024\09\01\01\08\04\02\01_\03\02\04\06\01\02\01\9d\01\03\08\15\029\02\01\01\01\01\0c\01\09\01\0e\07\03\05C\01\02\06\01\01\02\01\01\03\04\03\01\01\0e\02U\08\02\03\01\01\17\01Q\01\02\06\01\01\02\01\01\02\01\02\eb\01\02\04\06\02\01\02\1b\02U\08\02\01\01\02j\01\01\01\02\08e\01\01\01\02\04\01\05\00\09\01\02\f5\01\0a\04\04\01\90\04\02\02\04\01 \0a(\06\02\04\08\01\09\06\02\03.\0d\01\02\c6\01\01\03\01\01\c9\07\01\06\01\01R\16\02\07\01\02\01\02z\06\03\01\01\02\01\07\01\01H\02\03\01\01\01\00\02\0b\024\05\05\03\17\01\00\01\06\0f\00\0c\03\03\00\05;\07\00\01?\04Q\01\0b\02\00\02\00.\02\17\00\05\03\06\08\08\02\07\1e\04\94\03\007\042\08\01\0e\01\16\05\01\0f\00\07\01\11\02\07\01\02\01\05d\01\a0\07\00\01=\04\00\04\fe\02\f3\01\02\01\07\02\05\01\00\07m\07\00`\80\f0\00\ad\01\00\01\00\01\00\02\00\02U\05\00\05\1a\051\10\00\01\00\10\ef\01\a0\01O\09\00\04\00\08\00\00\00\ad\01\00\06\16\01\c0\011\01\00\02P\01\00\01\00\05\1a\051\05\01\0a\00\01\f9\03\00\01\0f\01\00\10\00\04\00\08\00\01\1e`\000123456789abcdef { , :  {\0a,\0a((\0a}) }\00\00\00\00\00\00\0c\00\00\00\04\00\00\00\19\00\00\00\1a\00\00\00\1b\00\00\00\f0\83\00\00K\00\00\00\e5\01\00\00\14\00\00\00called `Option::unwrap()` on a `None` value==00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00x\03\00\000\05 \00\0e\07`\01I\12 \03\9d\16\a0(\16\1f\a0-*$\a07t+`=\f4,\e0=\8d\a4 >,\a6\a0D\a4\d7 En\fa\a0K\d0\fd`L7\07\a1N\9a#\e1[\90/a\85V4A\86\fbC\a1\86GF\e1\86\00a!\87\00hA\879j\81\87@m\a1\87\d6\8c\81\8a\f0\af\e1\8c#\b1\81\8d\fc\b2a\8e\00\bc\a1\8f\00\cc\c1\8f\b4\ce\01\91\a6\d6a\91\cc\d7a\99\8c\da\a1\99\00\df\e1\99\90\e2\81\9a\d0\e4\c1\9dq\ec\81\9e\00\f0A\a2\d9\f6A\abX\faa\ae\00\00\e2\b1\e0\a6\82\b4\1e\b8\a2\b4\ae\ce\e2\b4\e1\eb\22\b5^\eeb\b5\00\f8\a2\b5\1e\fa\c2\b5\00\00\e3\b5K\13\03\b6z4#\b6\fe\ffc\b6\fe\ff\94\b6\00\03\00\00\83\04 \00\91\05`\00]\13\a0\00\12\17 \1f\0c `\1f\ef,`+*0\e0+o\a6\a0,\02\a8 -\1e\fb .\00\fe`6\9e\ff\a06\fd\01!7\01\0aa7$\0d!8\ab\0e\a19/\18!:\f3\1e!K@4\a1S\1ea\e1T\f0jaUOo\e1U\9d\bcaV\00\cfaWe\d1\a1W\00\da!X\00\e0\a1Y\ae\e2![\ec\e4\e1\5c\d0\e8a] \00\ee^\f0\01\7f_O\03\00\00\1c\06`\00_\11\a0\00\b4\17\e0\00\0b  \01d1\a0\01\00\fe`\02\a0\bc\a1\02s\d1\a1\03\00\00\ee\03\00\10.\04\00\10_\04\00\06\00\00\90\08`\00\0e\18`\01\0b \e0\01\ff\fe \02\bd\10!\0304\a1\03\a0\bc!\04s\d1a\04\01\00\ae\04\80\00\ff\04..    0x0123456789ABCDEF\a4\83\00\00K\00\00\00\85\0b\00\00&\00\00\00\a4\83\00\00K\00\00\00\8e\0b\00\00\1a\00\00\00RefCell already borrowed\d4\82\00\00c\00\00\004\00\00\00\12\00\00\00\d4\82\00\00c\00\00\00G\00\00\00\12\00\00\00\d4\82\00\00c\00\00\00Q\00\00\00\12\00\00\00\00\00\00\00\04\00\00\00\04\00\00\00\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1d\00\00\00called `Result::unwrap()` on an `Err` valuealign_offset: align is not a power-of-twob\82\00\00q\00\00\00\08\06\00\00\0d\00\00\00Freed node aliases existing hole! Bad free?\008\83\00\00k\00\00\00\f5\01\00\00\0d\00\00\008\83\00\00k\00\00\00\17\02\00\00\11\00\00\008\83\00\00k\00\00\00*\02\00\00\09\00\00\008\83\00\00k\00\00\00\a6\01\00\009\00\00\00assertion failed: aligned_hole_size >= size_of::<Hole>()8\83\00\00k\00\00\00P\01\00\00\09\00\00\008\83\00\00k\00\00\00X\01\00\00\09\00\00\00LayoutErrorname can only contain ASCII alphanumeric characters and underscoresname cannot contain whitespacename cannot be empty\02\02\02\02\02\02\02\02\02\02\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00serializing get requestdeserializing get responsewasm panic -           \e2\86\aa panic (buffer busy)unable to serialise request\00\00\00\00\00\00\0c\00\00\00\04\00\00\00\1e\00\00\00\1f\00\00\00 \00\00\00\0c\87\00\00_\87\00\00Q\87\00\00G\87\00\004\87\00\00\1d\87\00\00o\87\00\00\00\00\00\00\11\00\00\00\10\00\00\00\0e\00\00\00\0a\00\00\00\13\00\00\00\17\00\00\00\08\00\00\00\00\00\00\00"))
