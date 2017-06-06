module Problems where

import Data.List

unique :: String -> Bool
unique input = (nub input) == input
