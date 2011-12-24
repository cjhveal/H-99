compress :: Eq(a) => [a] -> [a]
compress [] = []
compress (x:y:xs) = case x == y of
  True -> compress $ y:xs
  False -> [x] ++ (compress $ y:xs)
compress (x:[]) = [x]
