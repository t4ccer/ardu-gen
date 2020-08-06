module ArduGen.Arduino.Math where

import ArduGen.Base

abs :: Fun (Int -> IO Int)
abs = declareFunExtern "abs"

constrain :: Fun (Int -> Int -> Int -> IO Int)
constrain = declareFunExtern "constrain"

map :: Fun (Int -> Int -> Int -> Int -> Int -> IO Int)
map = declareFunExtern "map"

max :: Fun (Int -> Int -> IO Int)
max = declareFunExtern "max"

min :: Fun (Int -> Int -> IO Int)
min = declareFunExtern "min"

pow :: Fun (Double -> Double -> IO Double)
pow = declareFunExtern "pow"

sqrt :: Fun (Double -> IO Double)
sqrt = declareFunExtern "sqrt"

sq :: Fun (Double -> IO Double)
sq = declareFunExtern "sq"
