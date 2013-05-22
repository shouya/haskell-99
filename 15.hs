--

repli :: [c] -> Int -> [c]

repli xs n = concatMap (replicate n) xs

repli' :: [c] -> Int -> c
repli' = flip $ concatMap . replicate