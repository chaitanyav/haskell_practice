import Test.QuickCheck
import Prelude hiding (max)

max :: Integer -> Integer -> Integer
max x y
  | x >=y = x
  | otherwise = y


prop_max1 :: Integer -> Integer -> Bool
prop_max1 x y = (x <= max x y) && (y <= max x y)

prop_max2 :: Integer -> Integer -> Bool
prop_max2 x y = (x == max x y) || (y == max x y)

maxThree :: Integer -> Integer -> Integer -> Integer
maxThree x y z
  | x >= y && x >= z = x
  | y >= z = y
  | otherwise = z

prop_maxThree1 :: Integer -> Integer -> Integer -> Bool
prop_maxThree1 x y z =
    (x <= maxThree x y z) && (y <= maxThree x y z) && (z <= maxThree x y z)

prop_maxThree2 :: Integer -> Integer -> Integer -> Bool
prop_maxThree2 x y z =
    (x == maxThree x y z) || (y == maxThree x y z) || (z == maxThree x y z)
