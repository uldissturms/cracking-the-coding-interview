module ProblemsTests where

import Problems

import Test.Hspec
import Text.Printf (printf)

testUnique :: String -> Bool -> Spec
testUnique for result =
  it (printf "is unique for: %s -> %s" for (show result)) $
    unique for`shouldBe` result

main = hspec $ do
  describe "unique" $ do
    testUnique "abc" True
    testUnique "aabc" False
