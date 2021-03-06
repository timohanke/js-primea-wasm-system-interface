(module
  (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
  (type $FUNCSIG$vii (func (param i32 i32)))
  (type $FUNCSIG$ii (func (param i32) (result i32)))
  (type $FUNCSIG$vi (func (param i32)))
  (type $FUNCSIG$v (func))
  (import "env" "createMessage" (func $createMessage (param i32 i32) (result i32)))
  (import "env" "deleteData" (func $deleteData (param i32)))
  (import "test" "equals" (func $equals (param i32 i32)))
  (import "env" "loadData" (func $loadData (param i32 i32)))
  (import "env" "messageDataLen" (func $messageDataLen (param i32) (result i32)))
  (import "env" "storeData" (func $storeData (param i32 i32)))
  (table (export "callbacks") 2 2 anyfunc)
  (elem (i32.const 0) $__wasm_nullptr $loadedDataCallback)
  (memory $0 1)
  (data (i32.const 16) "test data\00")
  (export "memory" (memory $0))
  (export "onCreation" (func $onCreation))
  (export "loadedDataCallback" (func $loadedDataCallback))
  (export "onMessage" (func $onMessage))
  (func $onCreation
    (call $storeData
      (i32.const 0)
      (call $createMessage
        (i32.const 16)
        (i32.const 9)
      )
    )
  )
  (func $loadedDataCallback (type $FUNCSIG$vi) (param $0 i32)
    (call $equals
      (call $messageDataLen
        (get_local $0)
      )
      (i32.const 9)
    )
    (call $deleteData
      (i32.const 0)
    )
  )
  (func $onMessage
    (call $loadData
      (i32.const 0)
      (i32.const 1)
    )
  )
  (func $__wasm_nullptr (type $FUNCSIG$v)
    (unreachable)
  )
)
