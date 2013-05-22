--

split :: [a] -> Int -> ([a], [a])
split xs i = (take i xs, drop i xs)
