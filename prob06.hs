-- 6: Check if list is palindrome

isPalindrome :: Eq a => [a] -> Bool
isPalindrome s = ((==) . reverse) s s
