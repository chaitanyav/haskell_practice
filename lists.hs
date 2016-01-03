import Test.QuickCheck
import Data.List

a = [2, 4, 6, 8]
b = [1, 3, 5, 7]
c = a ++ b
d = 9 : c
e = d !! 0
f = head a
g = tail a
h = last a
i = init a

{-
*Main> head []
*** Exception: Prelude.head: empty list
*Main> tail []
*** Exception: Prelude.tail: empty list
-}

len = length a
empty = null a
rev = reverse a
firstThree = take 3 d
lastN = drop 3 d
large = maximum d
small =  minimum d
total = sum d
prod = product d
exists = elem 2 d

ten = take 10 (cycle d)
