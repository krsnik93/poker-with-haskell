module Hand (Hand(..)) where

import qualified Card (Card)

data Hand = Hand Card.Card Card.Card Card.Card Card.Card Card.Card
