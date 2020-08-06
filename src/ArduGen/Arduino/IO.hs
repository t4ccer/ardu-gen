module ArduGen.Arduino.IO where

import ArduGen.Base

digitalWrite :: Fun (Int -> Int -> IO())
digitalWrite = declareFunExtern "digitalWrite"

digitalRead :: Fun (Int -> IO Int)
digitalRead = declareFunExtern "digitalRead"

pinMode :: Fun (Int -> Int -> IO ())
pinMode = declareFunExtern "pinMode"

analogRead :: Fun (Int -> IO Int)
analogRead = declareFunExtern "analogRead"

analogWrite :: Fun (Int -> IO ())
analogWrite = declareFunExtern "analogRead"

-- Constants
output :: RVal Int
output = lit 2

input :: RVal Int
input = lit 1