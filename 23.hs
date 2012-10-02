import System.Random
import Control.Monad (replicateM)

randIndex :: [a] -> IO Int
randIndex xs = randomRIO (0, (length xs) - 1)

rndSelect :: [a] -> Int -> IO [a]
rndSelect [] _ = return []
rndSelect xs i = replicateM i rand
  where rand = do n <- randIndex xs
                  return (xs !! n)
