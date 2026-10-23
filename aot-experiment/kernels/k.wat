(module
  (type (;0;) (func (param i32 i32) (result i32)))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func (param i32 i32 i32)))
  (type (;3;) (func (param i64 i64) (result i64)))
  (type (;4;) (func (param f32 f32) (result f32)))
  (import "gpio" "set" (func (;0;) (type 0)))
  (func (;1;) (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    local.get 1
    i32.const 0
    i32.le_s
    if  ;; label = @1
      i32.const 0
      return
    end
    local.get 1
    i32.const 3
    i32.and
    local.set 4
    block  ;; label = @1
      local.get 1
      i32.const 4
      i32.lt_u
      if  ;; label = @2
        br 1 (;@1;)
      end
      local.get 1
      i32.const 2147483644
      i32.and
      local.set 5
      local.get 0
      local.set 1
      loop  ;; label = @2
        local.get 1
        i32.const 12
        i32.add
        i32.load
        local.get 1
        i32.const 8
        i32.add
        i32.load
        local.get 1
        i32.const 4
        i32.add
        i32.load
        local.get 1
        i32.load
        local.get 2
        i32.add
        i32.add
        i32.add
        i32.add
        local.set 2
        local.get 1
        i32.const 16
        i32.add
        local.set 1
        local.get 5
        local.get 3
        i32.const 4
        i32.add
        local.tee 3
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 4
    if  ;; label = @1
      local.get 0
      local.get 3
      i32.const 2
      i32.shl
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 1
        i32.load
        local.get 2
        i32.add
        local.set 2
        local.get 1
        i32.const 4
        i32.add
        local.set 1
        local.get 4
        i32.const 1
        i32.sub
        local.tee 4
        br_if 0 (;@2;)
      end
    end
    local.get 2)
  (func (;2;) (type 2) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      local.get 1
      i32.const 0
      i32.le_s
      br_if 0 (;@1;)
      local.get 1
      i32.const 3
      i32.and
      local.set 5
      local.get 1
      i32.const 4
      i32.ge_u
      if  ;; label = @2
        local.get 1
        i32.const 2147483644
        i32.and
        local.set 6
        local.get 0
        local.set 1
        loop  ;; label = @3
          local.get 1
          local.get 1
          i32.load
          local.get 2
          i32.mul
          i32.const 1
          i32.add
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.tee 3
          local.get 3
          i32.load
          local.get 2
          i32.mul
          i32.const 1
          i32.add
          i32.store
          local.get 1
          i32.const 8
          i32.add
          local.tee 3
          local.get 3
          i32.load
          local.get 2
          i32.mul
          i32.const 1
          i32.add
          i32.store
          local.get 1
          i32.const 12
          i32.add
          local.tee 3
          local.get 3
          i32.load
          local.get 2
          i32.mul
          i32.const 1
          i32.add
          i32.store
          local.get 1
          i32.const 16
          i32.add
          local.set 1
          local.get 6
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
      local.get 0
      local.get 4
      i32.const 2
      i32.shl
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 1
        local.get 1
        i32.load
        local.get 2
        i32.mul
        i32.const 1
        i32.add
        i32.store
        local.get 1
        i32.const 4
        i32.add
        local.set 1
        local.get 5
        i32.const 1
        i32.sub
        local.tee 5
        br_if 0 (;@2;)
      end
    end)
  (func (;3;) (type 0) (param i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 1
      i32.const 0
      i32.le_s
      if  ;; label = @2
        br 1 (;@1;)
      end
      loop  ;; label = @2
        local.get 0
        local.get 3
        i32.const 1
        i32.and
        call 0
        local.get 2
        i32.or
        local.set 2
        local.get 1
        local.get 3
        i32.const 1
        i32.add
        local.tee 3
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 2)
  (func (;4;) (type 3) (param i64 i64) (result i64)
    local.get 0
    local.get 1
    i64.const 1
    i64.or
    i64.div_s
    local.get 0
    i64.const 7
    i64.rem_s
    i64.add)
  (func (;5;) (type 4) (param f32 f32) (result f32)
    local.get 0
    local.get 1
    f32.mul
    local.get 0
    local.get 1
    f32.const 0x1p+0 (;=1;)
    f32.add
    f32.div
    f32.add)
  (func (;6;) (type 1) (param i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.const 2
    i32.lt_s
    if  ;; label = @1
      local.get 0
      return
    end
    loop  ;; label = @1
      local.get 0
      i32.const 1
      i32.sub
      call 6
      local.get 1
      i32.add
      local.set 1
      local.get 0
      i32.const 3
      i32.gt_u
      local.set 2
      local.get 0
      i32.const 2
      i32.sub
      local.set 0
      local.get 2
      br_if 0 (;@1;)
    end
    local.get 0
    local.get 1
    i32.add)
  (func (;7;) (type 1) (param i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.const 0
    i32.gt_s
    if  ;; label = @1
      loop  ;; label = @2
        local.get 2
        local.get 1
        local.get 1
        i32.mul
        i32.add
        local.set 2
        local.get 0
        local.get 1
        i32.const 1
        i32.add
        local.tee 1
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 2)
  (memory (;0;) 1 1)
  (export "memory" (memory 0))
  (export "sum" (func 1))
  (export "scale" (func 2))
  (export "toggle" (func 3))
  (export "mix" (func 4))
  (export "fmix" (func 5))
  (export "fib" (func 6))
  (export "sumsq" (func 7)))
