module ArduGen.Byte where

import ArduGen.Base

newtype Byte = Byte Int
instance ClassClass Byte where
  className _ = "byte"
instance Type Byte where
    typeOf _ v = "byte" <+> v
instance InhabitedType Byte where
instance NumType Byte where
  lit (Byte x) = Val $ show x
