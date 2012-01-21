-- pack: Takes a list, and returns a list of lists with all adjacent elements compacted into sublists.
pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack [x] = [[x]]
pack (x:xs) = case x `elem` (head $ pack xs) of
  True -> (x:(head $ pack xs)):(tail $ pack xs)
  False -> [x]:(pack xs)

-- encode: Takes a list, and returns a run-length encoding consisting
-- of a list of tuples, the length of the run and the element.
encode :: (Eq a) => [a] -> [(Int, a)]
encode = (map $ \x -> (length x, head x)) . pack
