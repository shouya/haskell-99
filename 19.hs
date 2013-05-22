--

rotate :: [a] -> Int -> [a]
rotate xs 0 = xs
rotate xs n
  | n < 0 = (last xs) : rotate (init xs) (n + 1)
  | n > 0 = rotate (tail xs) (n - 1) ++ [head xs]
