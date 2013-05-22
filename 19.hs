--

rotate :: [a] -> Int -> [a]
rotate xs 0 = xs
rotate xs n
  | n < 0 = rotate (last xs : init xs) (n + 1)
  | n > 0 = rotate (tail xs ++ [head xs]) (n - 1)


--
-- n = -2
-- xs = "abc"

-- n < 0 --> ab c
-- n < 0 --> ca b
-- n < 0 --> bc a

--
