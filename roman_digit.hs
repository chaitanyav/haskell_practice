import Test.QuickCheck
import Data.Char

romanDigit :: Char -> String
romanDigit ch
  | ch == '1' = "I"
  | ch == '2' = "II"
  | ch == '3' = "III"
  | ch == '4' = "IV"
  | ch == '5' = "V"
  | ch == '6' = "VI"
  | ch == '7' = "VII"
  | ch == '8' = "VIII"
  | ch == '9' = "IX"
  | otherwise = "Not a valid digit"

prop_romanDigit :: Char -> Bool
prop_romanDigit ch
  | (ch == '1') = (romanDigit ch == "I")
  | (ch == '2') = (romanDigit ch == "II")
  | (ch == '3') = (romanDigit ch == "III")
  | (ch == '4') = (romanDigit ch == "IV")
  | (ch == '5') = (romanDigit ch == "V")
  | (ch == '6') = (romanDigit ch == "VI")
  | (ch == '7') = (romanDigit ch == "VII")
  | (ch == '8') = (romanDigit ch == "VIII")
  | (ch == '9') = (romanDigit ch == "IX")
  | otherwise = (romanDigit ch == "Not a valid digit")
