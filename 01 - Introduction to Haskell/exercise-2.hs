double2nd :: [Integer] -> [Integer]
double2nd (x:y:xs) = x : 2 * y : double2nd xs
double2nd a = a

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther = reverse . double2nd . reverse
