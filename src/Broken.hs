module Broken where

import Data.Semigroup

-- OK, using a simple function causes no problems.
fun :: Int -> Bool
fun = const False

data BoolConj = BoolConj Bool deriving (Eq, Show)

instance Semigroup BoolConj where
  BoolConj True <> BoolConj True = BoolConj True
  BoolConj _    <> BoolConj _    = BoolConj False

instance Monoid BoolConj where
    -- Switching between True/False (as argument to the BoolConj
    -- constructor) *should* mend/break test, but it doesn't seem to take
    -- effect until `stack clean` has been run.
    mempty  = BoolConj False
    mappend = (<>)
