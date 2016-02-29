-- 1: Find last element of a list

myLast :: [a] -> a
myLast xs | []       <- xs        = error "empty list"
          | [x]      <- xs        = x
          | (_:y:[]) <- xs        = y
