
-- import "11.hs"

data MyType = Single Char |
              Multiple Integer Char deriving(Show)

decodeModified :: [MyType] -> [Char]

decodeModified [] = []
decodeModified (x:xs) =
  case x of
    Multiple n c -> (take (fromInteger n) $ repeat c) ++ decodeModified xs
    Single c     -> c : decodeModified xs


