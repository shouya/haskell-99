
-- import "10.hs"

import Data.List

data MyType = Single Char |
              Multiple Integer Char deriving(Show)

encodeModified :: [Char] -> [MyType]

encodeModified [] = []
encodeModified arr@(x:xs)
  | head xs /= x   = Single x : encodeModified xs
  | otherwise      = let n    = 1 + (length $ takeWhile (==x) xs)
                         rest = drop n arr in
                    Multiple (fromIntegral n :: Integer) x : encodeModified rest




