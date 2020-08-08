module ArduGen.Libraries.DS18b20 where

import ArduGen.Base

data OneWire = OneWire
instance ClassClass OneWire where
    className _ = "OneWire"
instance Type OneWire where
    typeOf _ v = "OneWire" <+> v
instance InhabitedType OneWire where

initializeOneWire :: Fun (Int -> IO OneWire)
initializeOneWire = declareFunExtern "OneWire"

data DallasTemperature = DallasTemperature
instance ClassClass DallasTemperature where
    className _ = "OneWire"
instance Type DallasTemperature where
    typeOf _ v = "OneWire" <+> v
instance InhabitedType DallasTemperature where

initializeDallasTemperature :: LVal (Class OneWire) -> RVal (Class DallasTemperature)
initializeDallasTemperature ow = trustMe ("DallasTemperature(&"++unVal ow++")")

requiredIncludes :: Decl ()
requiredIncludes = do
    include "<OneWire.h>"
    include "<DallasTemperature.h>"


begin :: LVal (Class DallasTemperature) -> Fun (IO ())
begin sens = declareFunExtern (unVal sens ++ ".begin")

getTemperatures :: LVal (Class DallasTemperature) -> Fun (IO ())
getTemperatures sens = declareFunExtern (unVal sens ++ ".requestTemperatures")

getTempCByIndex :: LVal (Class DallasTemperature) -> Fun (Int -> IO ())
getTempCByIndex sens = declareFunExtern (unVal sens ++ ".getTempCByIndex")

getTempFByIndex :: LVal (Class DallasTemperature) -> Fun (Int -> IO ())
getTempFByIndex sens = declareFunExtern (unVal sens ++ ".getTempFByIndex")

