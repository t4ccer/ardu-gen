module ArduGen.Arduino where

import ArduGen.Base

-- Constants
output :: RVal Int
output = lit 2

input :: RVal Int
input = lit 1

-- Funcs


-- IO

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

-- Time

millis :: Fun (IO Int)
millis = declareFunExtern "millis"

micros :: Fun (IO Int)
micros = declareFunExtern "micros"

delay :: Fun (Int -> IO ())
delay = declareFunExtern "delay"

delayMicroseconds :: Fun (IO Int)
delayMicroseconds = declareFunExtern "delayMicroseconds"

