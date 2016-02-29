-- 9: Pack consecutive repeating elements of a list into sublists

myPack :: Eq a => [a] -> [[a]]
myPack [] = []
myPack xs = packSubList [] xs
  where packSubList :: Eq a => [a] -> [a] -> [[a]]
        packSubList sub [] = [sub]
        packSubList sub (x:xs) | [] <- sub     = packSubList [x] xs
                               | x == head sub = packSubList (x : sub) xs
                               | otherwise     = sub : myPack (x:xs)
