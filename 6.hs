
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome [_] = True
isPalindrome []  = True
isPalindrome (x:xs)  = if x == (last xs) then
                       isPalindrome (init xs)
                   else
                       False

