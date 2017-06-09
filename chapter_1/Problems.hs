module Problems where

import Data.List
import Data.Set

-- Problem 1

-- O(n^2)
{-
  nub - O(n^2), more info: http://hackage.haskell.org/package/base-4.9.1.0/docs/src/Data.OldList.html#nub
  nubBy eq [] =  []
  nubBy eq (x:xs) = x : nubBy eq (filter (\ y -> not (eq x y)) xs)
-}
uniqueNub :: String -> Bool
uniqueNub input = (nub input) == input

-- O(n*log n)
{-
-- | /O(n*log n)/. Create a set from a list of elements.
  fromList :: Ord a => [a] -> Set a
  fromList xs
    = foldlStrict ins empty xs
    where
      ins t x = insert x t
-}
uniqueSet :: String -> Bool
uniqueSet input = (toList $ fromList(input)) == input
