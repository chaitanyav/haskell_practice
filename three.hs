import Test.QuickCheck
import Data.Bits

threeEqual :: Integer -> Integer -> Integer -> Bool
threeEqual x y z = ((x == y) && (y == z))

threeDifferent :: Integer -> Integer -> Integer -> Bool
threeDifferent x y z = not ((x == y) && (y == z))
