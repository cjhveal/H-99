-- pack: Takes a list, and returns a list of lists with all adjacent elements compacted into sublists.
pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack [x] = [[x]]
pack (x:xs) = case x `elem` (head $ pack xs) of
  True -> (x:(head $ pack xs)):(tail $ pack xs)
  False -> [x]:(pack xs)
