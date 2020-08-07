module ArduGen.ESP32
    (
    -- Base
      restartESP
    -- PWM
    , ledcAttachPin
    , ledcSetup
    , ledcWrite
    -- PubSubClient
    , PubSubClient
    ) where

import ArduGen.ESP32.PWM
import ArduGen.ESP32.PubSubClient
import ArduGen.Base (declareFunExtern, Fun)

restartESP :: Fun (IO ())
restartESP = declareFunExtern "ESP.restart"
