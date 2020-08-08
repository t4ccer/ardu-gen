module ArduGen.Libraries.PubSubClient where

import ArduGen.Base
import ArduGen.Byte
import ArduGen.Arduino

data PubSubClient
instance ClassClass PubSubClient where
  className _ = "PubSubClient"

mqttInitializeClient :: LVal (Class WiFiClient) -> RVal (Class PubSubClient)
mqttInitializeClient wifi =trustMe ("PubSubClient(" ++ unVal wifi ++ ")") 

mqttSetServer :: LVal (Class PubSubClient) -> Fun(String -> Int -> IO ())
mqttSetServer client = declareFunExtern (unVal client ++ ".setServer")

mqttConnected :: LVal (Class PubSubClient) -> Fun (IO Int)
mqttConnected client = declareFunExtern (unVal client ++ ".connected")

mqttSetCallback :: LVal (Class PubSubClient) ->  Fun (Fun (Ptr Char -> Ptr Byte -> Int -> IO ()) -> IO ())
mqttSetCallback client = declareFunExtern (unVal client ++  ".setCallback")

mqttConnect :: LVal (Class PubSubClient) ->  Fun (String -> IO ())
mqttConnect client = declareFunExtern (unVal client ++ ".connect")

mqttLoop :: LVal (Class PubSubClient) ->  Fun (IO ())
mqttLoop client = declareFunExtern (unVal client ++  ".loop")

mqttPublish :: LVal (Class PubSubClient) ->  Fun(String -> Ptr Char -> IO ())
mqttPublish client = declareFunExtern (unVal client ++ ".publish")
