{-# LANGUAGE FlexibleContexts #-}

module HandRank (determine, isFlush) where

import qualified Data.Vector.Sized as V

import Hand (Hand(..))
import Card(getSuit, getRank)

data HandRank = HighCard | OnePair | TwoPair | ThreeOfAKind | Straight | Flush | FullHouse | FourOfAKind | StraightFlush
    deriving (Show, Eq, Ord)

determine :: Hand -> HandRank
determine hand = OnePair

isFlush :: Hand -> Bool
isFlush (Hand v) =
    let firstCard = V.head v
        rest = V.tail v
        firstSuit = getSuit firstCard
    in V.all (\card -> getSuit card == firstSuit) rest
