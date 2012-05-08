
myReverseBase :: [a] -> Int -> [a]
myReverseBase xs 0 = xs
myReverseBase (x:xs) n = myReverseBase ((head xs):[]) (n - 1)

myReverse :: [a] -> [a]
myReverse xs = myReverseBase xs (length xs)


