--

duplic :: [c] -> [c]

duplic = concatMap (replicate 2)
