module ArduGen.ESP32.PWM where

import ArduGen.Base

ledcWrite :: Fun(Int -> Int -> IO ())
ledcWrite = declareFunExtern "ledcWrite"

ledcSetup :: Fun (Int -> Int -> Int -> IO ())
ledcSetup = declareFunExtern "ledcSetup"

ledcAttachPin :: Fun (Int -> Int -> IO ())
ledcAttachPin = declareFunExtern "ledcAttachPin"
