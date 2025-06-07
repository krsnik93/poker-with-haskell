module Card (Card, Deck, suits, ranks, deck) where

data Suit = Spade | Club | Heart | Diamond
    deriving (Show, Enum, Bounded)
data Rank = One | Two | Three | Four | Five | Six | Seven | Eight | Nine | Ten | Jack | Queen | King | Ace
    deriving (Show, Enum, Bounded)

data Card = Card Suit Rank
    deriving (Show)

type Deck = [Card]

suits :: [Suit]
suits = [Spade, Club, Heart, Diamond]

ranks :: [Rank]
ranks = [One, Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten, Jack, Queen, King, Ace]

cards :: [Card]
cards = [Card rank suit | rank <- [minBound ..], suit <- [minBound ..]]

deck :: Deck
deck = cards
