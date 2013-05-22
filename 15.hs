--

repli :: [c] -> Int -> [c]

repli xs n = concatMap (replicate n) xs
