
import System.Random

pick :: [a] -> Int -> IO [a]
pick xs n = do
  gen <- getStdGen
  return $ take n [xs !! i | i <- randomRs (0, length xs - 1) gen]
