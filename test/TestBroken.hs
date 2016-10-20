{-# OPTIONS_GHC -fno-warn-orphans #-}

import Test.QuickCheck

import Broken

instance Arbitrary BoolConj where
  arbitrary = BoolConj <$> arbitrary

type IdType a = a -> Bool

leftId :: (Monoid a, Eq a) => a -> Bool
leftId x = (mempty `mappend` x) == x

main :: IO ()
main = quickCheck (leftId :: IdType BoolConj) -- This requires `stack clean`.
-- main = quickCheck fun -- This works.
