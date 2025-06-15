{-# LANGUAGE FlexibleContexts #-}

module HandRank (determine, isFlush, isStraight, isStraightFlush) where

import qualified Data.Vector.Sized as V
import qualified Data.Set as S

import Card (Rank(..), getRank, getSuit)
import Hand (Hand (..))

data HandRank = HighCard | OnePair | TwoPair | ThreeOfAKind | Straight | Flush | FullHouse | FourOfAKind | StraightFlush
  deriving (Show, Eq, Ord)

determine :: Hand -> HandRank
determine hand = OnePair

isFlush :: Hand -> Bool
isFlush (Hand h) =
  let firstCard = V.head h
      rest = V.tail h
      firstSuit = getSuit firstCard
   in V.all (\card -> getSuit card == firstSuit) rest

isStraight :: Hand -> Bool
isStraight hand = isRegularStraight hand || isWheelStraight hand

isRegularStraight :: Hand -> Bool
isRegularStraight (Hand h) =
  let ranks = V.toList $ V.map getRank h
      rankSet = S.fromList $ map fromEnum ranks
      minRank = minimum rankSet
      expectedSet = S.fromList [minRank .. minRank + 4]
  in rankSet == expectedSet

wheelStraight :: [Rank]
wheelStraight = [Ace, Two, Three, Four, Five]

isWheelStraight :: Hand -> Bool
isWheelStraight (Hand h) =
  let ranks = V.map getRank h
      rankSet = S.fromList (V.toList ranks)
      wheelSet = S.fromList wheelStraight
  in  rankSet == wheelSet

isStraightFlush :: Hand -> Bool
isStraightFlush hand = isStraight hand && isFlush hand
