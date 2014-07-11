import System.Random


rndSelect :: Int -> Int -> Int -> IO [Int]
rndSelect l u n = do
  gen <- getStdGen
  return $ take n $ randomRs (l, u) gen
