-- 2: Find the second to last element of a list

myButLast :: [a] -> a
myButLast xs | []     <- xs = error "butLast of empty array"
             | (_:[]) <- xs = error "butLast of length-1 array"
             | (x:_:[]) <- xs = x
             | otherwise = myButLast $ tail xs
