import Test.QuickCheck
import Data.List

quadruples :: Integer -> [(Integer, Integer, Integer, Integer)]
quadruples n =
  [(a, b, c, d) | a <- [1..n], b <- [1..n], c <- [1..n], d <- [1..n], (a * a + b * b) == (c * c + d * d)]

prop_quadruples :: Integer -> Bool
prop_quadruples n =
    (and [a * a + b * b == c * c + d * d | (a, b, c, d) <- (quadruples n)]) == True
