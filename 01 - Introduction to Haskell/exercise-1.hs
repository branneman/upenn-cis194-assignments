import Data.Char

toDigits :: Integer -> [Integer]
toDigits n = map toInteger $ map digitToInt $ show n

toDigitsRev :: Integer -> [Integer]
toDigitsRev n = reverse $ map toInteger $ map digitToInt $ show n
