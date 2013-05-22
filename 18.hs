--


slice :: [a] -> Int -> Int -> [a]
slice xs a b = take (b - a + 1) $ drop (a - 1) xs
