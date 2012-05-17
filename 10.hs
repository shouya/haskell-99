

encode :: (Eq a) => [a] -> [(Int, a)]
encode []     = []
encode [x]    = [(1, x)]
encode (x:xs) = encode' xs x 0 []
    where
        encode' [y]    hold buffer result =
            if y == hold then
                result ++ [(buffer + 2, hold)]
            else
                result ++ [(buffer + 1, hold)] ++ [(1, y)]
        encode' (y:ys) hold buffer result =
            if y == hold then
                encode' ys hold (buffer + 1) result
            else
                encode' ys y 0 (result ++ [(buffer + 1, hold)])
