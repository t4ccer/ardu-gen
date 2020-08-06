module ArduGen.Arduino.Random where

import ArduGen.Base

random :: Fun (Int -> IO Int)
random = declareFunExtern "random"

random' :: Fun (Int -> Int -> IO Int)
random' = declareFunExtern "random"

randomSeed :: Fun (Int -> IO ())
randomSeed = declareFunExtern "randomSeed"
