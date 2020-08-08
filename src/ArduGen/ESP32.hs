module ArduGen.ESP32
    (
    -- Base
      restartESP
    -- PWM
    , ledcAttachPin
    , ledcSetup
    , ledcWrite
    ) where

import ArduGen.ESP32.PWM
import ArduGen.Base (declareFunExtern, Fun)

restartESP :: Fun (IO ())
restartESP = declareFunExtern "ESP.restart"
