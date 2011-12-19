myGCD :: Int -> Int -> Int 
myGCD n 0 = n
myGCD n m = gcd m $ n `mod` m

coprime :: Int -> Int -> Bool
coprime n m = 1 == myGCD n m

