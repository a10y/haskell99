-- 8: Remove consecutive duplicates from a list

myCompress :: Eq a => [a] -> [a]
myCompress (a:b:rest) | a == b    = a : myCompress rest
                      | otherwise = a : b : myCompress rest
myCompress xs = xs
