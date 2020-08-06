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

-- Chars

isAlpha :: Fun (Char -> IO Bool)
isAlpha = declareFunExtern "isAlpha"

isAlphaNumeric :: Fun (Char -> IO Bool)
isAlphaNumeric = declareFunExtern "isAlphaNumeric"

isAscii :: Fun (Char -> IO Bool)
isAscii = declareFunExtern "isAscii"

isControl :: Fun (Char -> IO Bool)
isControl = declareFunExtern "isControl"

isDigit :: Fun (Char -> IO Bool)
isDigit = declareFunExtern "isDigit"

isGraph :: Fun (Char -> IO Bool)
isGraph = declareFunExtern "isGraph"

isHexadecimalDigit :: Fun (Char -> IO Bool)
isHexadecimalDigit = declareFunExtern "isHexadecimalDigit"

isLowerCase :: Fun (Char -> IO Bool)
isLowerCase = declareFunExtern "isLowerCase"

isPrintable :: Fun (Char -> IO Bool)
isPrintable = declareFunExtern "isPrintable"

isPunct :: Fun (Char -> IO Bool)
isPunct = declareFunExtern "isPunct"

isSpace :: Fun (Char -> IO Bool)
isSpace = declareFunExtern "isSpace"

isUpperCase :: Fun (Char -> IO Bool)
isUpperCase = declareFunExtern "isUpperCase"

isWhitespace :: Fun (Char -> IO Bool)
isWhitespace = declareFunExtern "isWhitespace"
