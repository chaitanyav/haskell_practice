import Test.QuickCheck
import Data.Char

charToNum :: Char -> Int
charToNum ch
  | (isDigit ch == True) = (fromEnum ch - fromEnum '0')
  | otherwise = 0


prop_charToNum1 :: Char -> Bool
prop_charToNum1 ch =
   (0 <= charToNum ch) && (charToNum ch <= 9) == True

prop_charToNum2 :: Char -> Bool
prop_charToNum2 ch
  | (ch == '0') = (0 == charToNum ch)
  | (ch == '1') = (1 == charToNum ch)
  | (ch == '2') = (2 == charToNum ch)
  | (ch == '3') = (3 == charToNum ch)
  | (ch == '4') = (4 == charToNum ch)
  | (ch == '5') = (5 == charToNum ch)
  | (ch == '6') = (6 == charToNum ch)
  | (ch == '7') = (7 == charToNum ch)
  | (ch == '9') = (8 == charToNum ch)
  | otherwise = (0 == charToNum ch)
