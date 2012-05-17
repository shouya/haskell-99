

pack :: (Eq a) => [a] -> [[a]]
pack (x:xs) = pack' xs x [] []
    where
        pack' [y]    hold buffer result =
            if y == hold then
                result ++ [y:hold:buffer]
            else
                result ++ [hold:buffer] ++ [[y]]
        pack' (y:ys) hold buffer result =
            if y == hold then
                pack' ys hold (hold:buffer) result
            else
                pack' ys y [] (result ++ [hold:buffer])
