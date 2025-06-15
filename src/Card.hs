module Card (Card (..), Suit (..), Rank (..), cards, getRank, getSuit) where

data Suit = Spade | Club | Heart | Diamond
  deriving (Show, Enum, Eq, Bounded)

data Rank = Two | Three | Four | Five | Six | Seven | Eight | Nine | Ten | Jack | Queen | King | Ace
  deriving (Show, Enum, Ord, Eq, Bounded)

data Card = Card Rank Suit
  deriving (Show, Eq)

instance Ord Card where
  compare (Card r1 _) (Card r2 _) = compare r1 r2

getSuit :: Card -> Suit
getSuit (Card _ suit) = suit

getRank :: Card -> Rank
getRank (Card rank _) = rank

suits :: [Suit]
suits = [Spade, Club, Heart, Diamond]

ranks :: [Rank]
ranks = [Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten, Jack, Queen, King, Ace]

cards :: [Card]
cards = [Card rank suit | rank <- [minBound ..], suit <- [minBound ..]]
