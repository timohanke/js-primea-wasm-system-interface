(module
  (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
  (type $FUNCSIG$vii (func (param i32 i32)))
  (type $FUNCSIG$ii (func (param i32) (result i32)))
  (import "env" "createMessage" (func $createMessage (param i32 i32) (result i32)))
  (import "test" "equals" (func $equals (param i32 i32)))
  (import "env" "messageDataLen" (func $getMessageDataLen (param i32) (result i32)))
  (table 0 anyfunc)
  (memory $0 1)
  (data (i32.const 16) "\00asm\01\00\00\00\00")
  (export "memory" (memory $0))
  (export "onCreation" (func $onCreation))
  (func $onCreation (result i32)
    (local $0 i32)
    (call $equals
      (tee_local $0
        (call $createMessage
          (i32.const 16)
          (i32.const 8)
        )
      )
      (i32.const 1)
    )
    (call $equals
      (call $getMessageDataLen
        (get_local $0)
      )
      (i32.const 8)
    )
    (get_local $0)
  )
)
