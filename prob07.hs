-- 7: Flatten nested list structure

data NestedList a = Elem a | List [NestedList a]
myFlatten :: NestedList a -> [a]
myFlatten (Elem a) = [a]
myFlatten (List nl) = foldr (++) [] $ map myFlatten nl
