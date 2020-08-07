module ArduGen 
    (
    -- Base
      Generate, generate
    , Val, LVal, RVal, Ptr, Fun, Struct, Class, Type, typeOf, rval
    , InhabitedType
    , sizeof, cond
    , address, deref, funPtr, fun, nullPtr, (!)
    , cast, castFun
    , lit
    , int, float, double, char, bool
    , (==), (/=)
    , (<), (>), (<=), (>=)
    , (&&), (||), (^)
    , not
    , (+), (-), (*), (/)
    , string
    , call, scall
    , trustMe
    , Stmt, stmt
    , ret_, ret
    , scope
    , (=.), newvar, (=:)
    , ifte, iff, switch
    , while, for, forFromTo, break, continue
    , Decl
    , include
    , declareGlobal
    , (:>)(..)
    , declareFun, defineNewFun, defineFun
    , MainType, makeMain
    , StructClass(..), ClassClass(..)
    , defineStruct
    , (:->)(..)
    , comment
    -- Stdlib  
    , malloc
    , arrayMalloc
    , free
    -- Byte
    , Byte

    )where

import ArduGen.Base
import ArduGen.Byte
import ArduGen.Stdlib
import Prelude()