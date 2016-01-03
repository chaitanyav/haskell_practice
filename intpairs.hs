import Test.QuickCheck
import Data.List

intPairs :: Integer -> [(Integer, Integer)]
intPairs n =
  [(x, y) | x <- [1..n], y <- [1..n], x /= y]

prop_intPairs1 :: Integer -> Bool
prop_intPairs1 n =
    (and [x /= y | (x, y) <- (intPairs n)]) == True

prop_intPairs2 :: Integer -> Bool
prop_intPairs2 n =
  (and [x <= n && y <= n | (x, y) <- (intPairs n)]) == True
