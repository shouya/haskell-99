import Data.List
import System.Random

randomPermutation :: (RandomGen g) => [a] -> g -> [a]
randomPermutation xs g = permutations xs !! (fst $ randomR (0, len ^  2 - 1) g)
  where len = length xs

randomPermutationIO :: [a] -> IO [a]
randomPermutationIO xs = getStdGen >>= return . randomPermutation xs
