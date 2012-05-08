
myButLast :: [a] -> a
myButLast (x:_:[]) = x
myButLast (x:xs) = myButLast xs

