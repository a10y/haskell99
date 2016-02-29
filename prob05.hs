-- 5: Reverse a list

myReverse :: [a] -> [a]
myReverse xs = reverseHelper xs []
    where reverseHelper ys accum | [] <- ys = accum
                                 | (a:as) <- ys = reverseHelper as (a:accum)
