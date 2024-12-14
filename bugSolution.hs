{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveAnyclass #-}

import GHC.Generics
import Data.Maybe

main :: IO ()
main = do
  print (Just 3 == Just 3)
  print (Just 3 == Nothing)
  print (Nothing == Nothing)
  print (compare (Just 3) (Just 5))
  print (compare (Just 3) Nothing)
  print (compare Nothing (Just 5))