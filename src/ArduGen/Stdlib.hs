{-# LANGUAGE ScopedTypeVariables #-}


module ArduGen.Stdlib 
  ( malloc
  , arrayMalloc
  , free
  )where

import ArduGen.Base as C

mallocFun :: Fun (Int -> IO (Ptr ()))
mallocFun = fun $ trustMe "malloc"

freeFun :: Fun (Ptr () -> IO ())
freeFun = fun $ trustMe "free"

-- | Allocate memory (@sizeof(type)@).
malloc :: forall a. Type a => RVal (Ptr a)
malloc = cast $ call mallocFun $ sizeof (undefined :: a)

-- | Allocate an array (@sizeof(type) * size@).
arrayMalloc :: forall lr a. Type a
            => Val lr Int   -- ^ Size
            -> RVal (Ptr a) -- ^ Pointer to the array
arrayMalloc size =
  cast $ call mallocFun $ sizeof (undefined :: a) C.* size

-- | Free memory.
free :: Type a
     => Val lr (Ptr a) -- ^ Pointer to the memory location to free
     -> Stmt r ()
free ptr = scall freeFun $ cast ptr
