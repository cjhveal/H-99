range :: Int -> Int -> [Int]
range n m = case n `compare` m of
  LT -> [n] ++ range (n+1) m
  EQ -> [n]
