import Test.QuickCheck
import Data.List

onThreeLines :: String -> String -> String -> String
onThreeLines a b c = (filter ('\n'/=) a) ++ "\n" ++ (filter ('\n'/=) b) ++ "\n" ++ (filter ('\n'/=) c) ++ "\n"

prop_onThreeLines :: String -> String -> String -> Bool
prop_onThreeLines a b c =
  3 == length (filter ('\n'==) (onThreeLines a b c))
