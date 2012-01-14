rotate :: [a] -> Int -> [a]
rotate [] _ = []
rotate xs n
  | n == 0 = xs
  | n > 0 = (drop n xs) ++ (take n xs)
  | n < 0 = let len = ((length xs) + n) in
    (drop len xs) ++ (take len xs)
