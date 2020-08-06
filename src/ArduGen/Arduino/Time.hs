module ArduGen.Arduino.Time where

import ArduGen.Base

millis :: Fun (IO Int)
millis = declareFunExtern "millis"

micros :: Fun (IO Int)
micros = declareFunExtern "micros"

delay :: Fun (Int -> IO ())
delay = declareFunExtern "delay"

delayMicroseconds :: Fun (IO Int)
delayMicroseconds = declareFunExtern "delayMicroseconds"