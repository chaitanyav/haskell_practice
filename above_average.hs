import Test.QuickCheck

averageThree :: Integer -> Integer -> Integer -> Float
averageThree a b c =
    fromInteger (a + b + c) / fromInteger 3

howManyAboveAverage :: Integer -> Integer -> Integer -> Integer
howManyAboveAverage a b c =
    aboveA + aboveB + aboveC
      where
        average = averageThree a b c
        aboveA = if average < (fromInteger a)  then 1 else 0
        aboveB = if average < (fromInteger b)  then 1 else 0
        aboveC = if average < (fromInteger c)  then 1 else 0

prop_averageThree :: Integer -> Integer -> Integer -> Bool
prop_averageThree a b c =
    d == (averageThree a b c) * 3
      where
        d = fromInteger (a + b + c)

prop_howManyAboveAverage :: Integer -> Integer -> Integer -> Bool
prop_howManyAboveAverage a b c =
    howManyAboveAverage a b c == howManyAboveAverage c b a 
