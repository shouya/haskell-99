
myReverseBase :: [a] -> [a] -> [a]
myReverseBase [] xs = xs
myReverseBase xs ys = myReverseBase (init xs) (ys ++ [last xs])

myReverse :: [a] -> [a]
myReverse xs = myReverseBase xs []


