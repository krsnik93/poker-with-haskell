{-# LANGUAGE DataKinds #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeApplications #-}

module Hand (Hand (..), makeHand) where

import Card (Card, getRank)

import qualified Data.Vector.Sized as V

newtype Hand = Hand (V.Vector 5 Card)
  deriving (Show, Eq)

makeHand :: (Card, Card, Card, Card, Card) -> Hand
makeHand tuple = Hand (V.fromTuple tuple)
