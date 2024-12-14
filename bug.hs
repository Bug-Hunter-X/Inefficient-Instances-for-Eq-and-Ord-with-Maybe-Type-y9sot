{-# LANGUAGE FlexibleInstances #-}

instance Eq a => Eq (Maybe a) where
  Nothing == Nothing = True
  Just x == Just y = x == y
  _ == _ = False

instance Ord a => Ord (Maybe a) where
  compare Nothing Nothing = EQ
  compare Nothing (Just _) = LT
  compare (Just _) Nothing = GT
  compare (Just x) (Just y) = compare x y

main :: IO ()
main = do
  print (Just 3 == Just 3)
  print (Just 3 == Nothing)
  print (Nothing == Nothing)
  print (compare (Just 3) (Just 5))
  print (compare (Just 3) Nothing)
  print (compare Nothing (Just 5))