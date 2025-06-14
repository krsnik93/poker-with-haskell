module HandRank (determine) where

import Hand (Hand)

data HandRank = HighCard | OnePair | TwoPair | ThreeOfAKind | Straight | Flush | FullHouse | FourOfAKind | StraightFlush
    deriving (Show, Eq, Ord)

determine :: Hand -> HandRank
determine hand = OnePair
