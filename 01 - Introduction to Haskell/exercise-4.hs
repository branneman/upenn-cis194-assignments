--
-- Dependencies
--

import Data.Char

toDigits :: Integer -> [Integer]
toDigits = (map toInteger) . (map digitToInt) . show

double2nd :: [Integer] -> [Integer]
double2nd (x:y:xs) = x : 2 * y : double2nd xs
double2nd a = a

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther = reverse . double2nd . reverse

sumCreditCard :: Integer -> Integer -> Integer
sumCreditCard x y = x + if y > 10 then y - 9 else y

sumDigits :: [Integer] -> Integer
sumDigits xs = foldl sumCreditCard 0 xs


--
-- Implementation
--

transform :: Integer -> Integer
transform = sumDigits . doubleEveryOther . toDigits

validate :: Integer -> Bool
validate n = 0 == rem (transform n) 10


--
-- Example
--
-- validate 4012888888881881  =>  True
-- validate 4012888888881882  =>  False
