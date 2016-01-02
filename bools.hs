import Test.QuickCheck

exOr :: Bool -> Bool -> Bool
exOr x y = (x || y) && not (x && y)

exOr1 :: Bool -> Bool -> Bool
exOr1 x y
  | x == True && y == False = True
  | x == False && y == True = True
  | otherwise = False

myNot :: Bool -> Bool
myNot False = True
myNot True = False

nand :: Bool -> Bool -> Bool
nand x y = not (x && y)

prop_myNot :: Bool -> Bool
prop_myNot x =
  not x == myNot x

prop_exOr :: Bool -> Bool -> Bool
prop_exOr x y =
  exOr x y == exOr1 x y

prop_nand :: Bool -> Bool -> Bool
prop_nand x y =
  not x || not y == nand x y
