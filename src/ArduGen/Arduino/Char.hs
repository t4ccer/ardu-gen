module ArduGen.Arduino.Char where

import ArduGen.Base

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