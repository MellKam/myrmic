(module
  (type (;0;) (func (param i32 i32 i32)))
  (func (;0;) (type 0) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    memory.copy)
  (func (;1;) (type 0) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 3
      i32.and
      local.set 5
      local.get 2
      i32.const 4
      i32.ge_u
      if  ;; label = @2
        local.get 2
        i32.const -4
        i32.and
        local.set 7
        i32.const 0
        local.set 2
        loop  ;; label = @3
          local.get 0
          local.get 2
          i32.add
          local.tee 3
          local.get 1
          local.get 2
          i32.add
          local.tee 6
          i32.load
          i32.store
          local.get 3
          i32.const 4
          i32.add
          local.get 6
          i32.const 4
          i32.add
          i32.load
          i32.store
          local.get 3
          i32.const 8
          i32.add
          local.get 6
          i32.const 8
          i32.add
          i32.load
          i32.store
          local.get 3
          i32.const 12
          i32.add
          local.get 6
          i32.const 12
          i32.add
          i32.load
          i32.store
          local.get 2
          i32.const 16
          i32.add
          local.set 2
          local.get 7
          local.get 4
          i32.const 4
          i32.add
          local.tee 4
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 5
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 4
      i32.const 2
      i32.shl
      local.tee 3
      i32.add
      local.set 2
      local.get 0
      local.get 3
      i32.add
      local.set 3
      loop  ;; label = @2
        local.get 3
        local.get 2
        i32.load
        i32.store
        local.get 2
        i32.const 4
        i32.add
        local.set 2
        local.get 3
        i32.const 4
        i32.add
        local.set 3
        local.get 5
        i32.const 1
        i32.sub
        local.tee 5
        br_if 0 (;@2;)
      end
    end)
  (memory (;0;) 1 1)
  (export "memory" (memory 0))
  (export "copy" (func 0))
  (export "copy_words" (func 1)))
