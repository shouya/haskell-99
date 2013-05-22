--

dropEvery :: [a] -> Int -> [a]

dropEvery xs n = dropEveryHelper xs (n - 1) n
  where dropEveryHelper [] _ _     = []
        dropEveryHelper (_:xs) 0 n =     dropEveryHelper xs (n - 1) n
        dropEveryHelper (x:xs) i n = x : dropEveryHelper xs (i - 1) n
