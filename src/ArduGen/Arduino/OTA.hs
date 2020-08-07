module ArduGen.Arduino.OTA where

import ArduGen.Base

arduinoOTABegin :: Fun (IO ())
arduinoOTABegin = declareFunExtern "ArduinoOTA.begin"

arduinoOTASetHostname :: Fun (String -> IO ())
arduinoOTASetHostname = declareFunExtern "ArduinoOTA.setHostname"

arduinoOTASetPort :: Fun (Int -> IO ())
arduinoOTASetPort = declareFunExtern "ArduinoOTA.setPort"

arduinoOTAOnEnd :: Fun (Fun (IO ()) -> IO ())
arduinoOTAOnEnd = declareFunExtern "ArduinoOTA.onEnd"

arduinoOTALoop :: Fun (IO ())
arduinoOTALoop = declareFunExtern "ArduinoOTA.handle"
