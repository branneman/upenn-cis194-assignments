import Data.Char

toDigits :: Integer -> [Integer]
toDigits = (map toInteger) . (map digitToInt) . show

toDigitsRev :: Integer -> [Integer]
toDigitsRev = reverse . (map toInteger) . (map digitToInt) . show


--
-- Alternate implementations
--

-- Braces
toDigits0 :: Integer -> [Integer]
toDigits0 n = map toInteger (map digitToInt (show n))

-- $ signs
toDigits1 :: Integer -> [Integer]
toDigits1 n = map toInteger $ map digitToInt $ show n

-- Composition
toDigits2 :: Integer -> [Integer]
toDigits2 = (map toInteger) . (map digitToInt) . show
