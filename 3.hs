
elementAt :: [a] -> Int -> a
elementAt xs n = xs !! (n - 1)

elementAt' :: [a] -> Int -> a
elementAt' xs 1 = head xs
elementAt' (_:xs) n = elementAt' xs (n-1)

