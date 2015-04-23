sumCreditCard :: Integer -> Integer -> Integer
sumCreditCard x y = x + if y > 10 then y - 9 else y

sumDigits :: [Integer] -> Integer
sumDigits xs = foldl sumCreditCard 0 xs
