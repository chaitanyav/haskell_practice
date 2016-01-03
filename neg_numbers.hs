import Test.QuickCheck
import Data.List

negNumbers :: [Integer] -> Integer
negNumbers xs =
    sum [ 1 | x <- xs, x < 0]

prop_negNumbers :: [Integer] -> Bool
prop_negNumbers xs =
    toInteger (length [ x | x <- xs, x < 0]) == (negNumbers xs)
