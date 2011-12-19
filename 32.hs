module MyGCD where
myGCD :: Int -> Int -> Int 
myGCD n 0 = n
myGCD n m = gcd m $ n `mod` m
