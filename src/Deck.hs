module Deck(Deck, deck) where

import Card(Card(..), cards)

type Deck = [Card]

deck :: Deck
deck = cards
