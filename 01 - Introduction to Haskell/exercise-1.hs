import Data.Char

toDigits :: Integer -> [Integer]
toDigits n = map (\x -> read [x]::Integer) $ show n

toDigitsRev :: Integer -> [Integer]
toDigitsRev n = reverse $ map (\x -> read [x]::Integer) $ show n
