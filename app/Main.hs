module Main where

-- import Data.Semigroup
-- import Test.Tasty
-- import Test.Tasty.QuickCheck hiding (Failure, Success)

-- data BoolConj = BoolConj Bool deriving (Eq, Show)

-- instance Semigroup BoolConj where
--   BoolConj True <> BoolConj True = BoolConj True
--   BoolConj _    <> BoolConj _    = BoolConj False

-- instance Monoid BoolConj where
--     mempty  = BoolConj True -- <- note the error, should be BoolConj True
--     mappend = (<>)

-- instance Arbitrary BoolConj where
--   arbitrary = BoolConj <$> arbitrary

-- type IdType a = a -> Bool

-- rightId :: (Monoid a, Eq a) => a -> Bool
-- rightId x = x `mappend` mempty == x

main :: IO ()
main = undefined
-- main = defaultMain $ testGroup "Quickcheck tests"
--   [ testProperty "BoolConj monoid has right identity"
--       (rightId :: IdType BoolConj)
--   ]
