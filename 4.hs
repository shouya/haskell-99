
myLength :: [a] -> Int
myLength [x] = 1
myLength (_:xs) = 1 + myLength xs

