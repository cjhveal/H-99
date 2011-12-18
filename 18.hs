slice :: [a] -> Int -> Int -> [a]
slice (x:xs) 1 n = case n `compare` 1 of
  GT -> [x] ++ slice xs 1 (n-1)
  EQ -> [x]
slice (_:xs) n m = slice xs (n-1) (m-1)
