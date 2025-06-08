module HandRank (determine) where

import qualified Hand (Hand)

data HandRank = HighCard | OnePair | TwoPair | ThreeOfAKind | Straight | Flush | FullHouse | FourOfAKind | StraightFlush
    deriving (Show, Eq, Ord)

determine :: Hand.Hand -> HandRank
determine hand = OnePair
