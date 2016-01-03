import Test.QuickCheck

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum of empty list"
maximum' [x] = x
maximum' (x:xs)
    | x > maxTail = x
    | otherwise = maxTail
    where
      maxTail = maximum' xs


prop_maximum' :: (Ord a) => [a] -> Bool
prop_maximum' a =
    (all (<= largest) a) == True
    where
      largest = maximum' a
