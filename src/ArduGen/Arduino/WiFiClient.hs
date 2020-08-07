module ArduGen.Arduino.WiFiClient where

import ArduGen.Base

data WiFiClient
instance ClassClass WiFiClient where
  className _ = "WiFiClient"

wifiStatus :: Fun (IO Int)
wifiStatus = declareFunExtern "WiFi.status"

wifiBegin :: Fun (String -> String -> IO ())
wifiBegin = declareFunExtern "WiFi.begin"
