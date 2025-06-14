module HandRankTest(tests) where

import Card(Card(..), Suit(..), Rank(..))
import Hand(makeHand)
import HandRank(isFlush)

import Test.HUnit

isFlushTests :: Test
isFlushTests = TestList
    [
        TestLabel "hand is a flush when all cards are spades" (TestCase (assertBool "hand should be flush" (isFlush (makeHand (Card Ace Spade, Card King Spade, Card Queen Spade, Card Jack Spade, Card Ten Spade))))),
        TestLabel "hand is a not a flush when it has cards of different suits" (TestCase (assertBool "hand should be flush" (not (isFlush (makeHand (Card Ace Heart, Card King Spade, Card Queen Spade, Card Jack Spade, Card Ten Spade))))))
    ]
tests :: Test
tests = TestList
    [
        isFlushTests
    ]
