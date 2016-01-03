import Test.QuickCheck
import Data.List


divisors :: Integer -> [Integer]
divisors n = [x | x <- [1..n], mod n x == 0]

prop_divisors :: Integer -> Bool
prop_divisors n = (and [mod n x == 0 | x <- (divisors n)]) == True
