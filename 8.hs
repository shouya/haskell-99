

compress :: (Eq a) => [a] -> [a]
compress xs = compress' xs []
    where compress' [y] zs = zs ++ [y]
          compress' [] zs = zs
          compress' (y:ys) zs = if y == head ys then
                                   compress' (ys) zs
                               else
                                   compress' (ys) (zs ++ [y])

