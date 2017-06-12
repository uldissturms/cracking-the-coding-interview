module ProblemsTests where

import Problems

import Test.Hspec
import Text.Printf (printf)

testUniqueNub for result =
  it (printf "is unique for: %s -> %s" for (show result)) $
    uniqueNub for `shouldBe` result
testUniqueSet for result =
  it (printf "is unique for: %s -> %s" for (show result)) $
    uniqueSet for `shouldBe` result
testUniqueSort for result =
  it (printf "is unique for: %s -> %s" for (show result)) $
    uniqueSort for `shouldBe` result

main = hspec $ do
  describe "unique nub" $ do
    testUniqueNub "abc" True
    testUniqueNub "a" True
    testUniqueNub "" True
    testUniqueNub "aabc" False
  describe "unique set" $ do
    testUniqueSet "abc" True
    testUniqueSet "aabc" False
  describe "unique sort" $ do
    testUniqueSort "abc" True
    testUniqueSort "aabc" False
