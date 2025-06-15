{-# LANGUAGE DataKinds #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeApplications #-}

module Hand (Hand (..), makeHand, sortHandByRank) where

import Card (Card, getRank)

import qualified Data.Vector.Sized as V
import Data.Maybe (fromJust)
import Data.List (sort)

newtype Hand = Hand (V.Vector 5 Card)
  deriving (Show, Eq)

makeHand :: (Card, Card, Card, Card, Card) -> Hand
makeHand tuple = Hand (V.fromTuple tuple)


sortHandByRank :: Hand -> Hand
sortHandByRank (Hand v) =
  let sortedList = sort (V.toList v)
      sortedVec = fromJust (V.fromList sortedList)
  in Hand sortedVec
