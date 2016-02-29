-- 3: Find the k-th element of a list

elementAt :: [a] -> Int -> a
elementAt xs i | i >= length xs || i < 0 = error "Error, index out bounds"
               | otherwise = last $ take (i+1) xs
