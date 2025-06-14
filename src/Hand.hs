module Hand (Hand(..), makeHand) where

{-# LANGUAGE DataKinds #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}

import qualified Data.Vector.Sized as V

import Card (Card)

newtype Hand = Hand (V.Vector 5 Card)
  deriving (Show, Eq)

makeHand :: (Card, Card, Card, Card, Card) -> Hand
makeHand tuple = Hand (V.fromTuple tuple)
