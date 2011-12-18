removeAt :: Int -> [a] -> (a, [a])
removeAt n xs = removeAt' n xs (take n xs)
  where
    removeAt' 0 (x:xs) ys = (x, ys++xs)
    removeAt' n (x:xs) ys = removeAt' (n-1) xs ys
