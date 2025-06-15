module HandRankTest (tests) where

import Card (Card (..), Rank (..), Suit (..))
import Hand (makeHand)
import HandRank (isFlush, isStraight, isStraightFlush)
import Test.HUnit

isFlushTests :: Test
isFlushTests =
  TestList
    [ TestLabel "hand is a flush when all cards are spades" (TestCase (assertBool "hand should be flush" (isFlush (makeHand (Card Ace Spade, Card King Spade, Card Queen Spade, Card Jack Spade, Card Ten Spade))))),
      TestLabel "hand is a not a flush when it has cards of different suits" (TestCase (assertBool "hand should be flush" (not (isFlush (makeHand (Card Ace Heart, Card King Spade, Card Queen Spade, Card Jack Spade, Card Ten Spade))))))
    ]

isStraightTests :: Test
isStraightTests =
  TestList
  [
    TestLabel "hand is a wheel straight when it has ranks of A 2 3 4 5" (TestCase (assertBool "hand should be a wheel straight" (isStraight(makeHand(Card Ace Spade, Card Two Club, Card Three Heart, Card Four Spade, Card Five Spade))))),
    TestLabel "hand is a straight when it has ranks of 2 3 4 5 6" (TestCase (assertBool "hand should be a straight" (isStraight(makeHand(Card Two Spade, Card Three Club, Card Four Heart, Card Five Spade, Card Six Spade))))),
    TestLabel "hand is a straight when it has ranks of 2 3 4 5 6 out of order" (TestCase (assertBool "hand should be a straight" (isStraight(makeHand(Card Six Heart, Card Three Spade, Card Four Club, Card Five Diamond, Card Two Spade))))),
    TestLabel "hand is a not straight when it has ranks of 2 3 4 5 7" (TestCase (assertBool "hand should not be a straight" (not(isStraight(makeHand(Card Two Spade, Card Three Diamond, Card Four Heart, Card Five Club, Card Seven Spade)))))),
    TestLabel "hand is a straight flush when it has ranks of A 2 3 4 5 of same suit" (TestCase (assertBool "hand should be a straight flush" (isStraightFlush(makeHand(Card Two Spade, Card Three Spade, Card Four Spade, Card Five Spade, Card Ace Spade))))),
    TestLabel "hand is a straight flush when it has ranks of 10 J Q K A of same suit" (TestCase (assertBool "hand should be a straight flush" (isStraightFlush(makeHand(Card King Spade, Card Queen Spade, Card Jack Spade, Card Ten Spade, Card Ace Spade))))),
    TestLabel "hand is a straight flush when it has ranks of 7 8 9 10 J of same suit" (TestCase (assertBool "hand should be a straight flush" (isStraightFlush(makeHand(Card Jack Spade, Card Seven Spade, Card Eight Spade, Card Ten Spade, Card Nine Spade))))),
    TestLabel "hand is not a straight flush when it's only a flush" (TestCase (assertBool "hand should not be a straight flush" (not(isStraightFlush(makeHand(Card Jack Spade, Card Seven Spade, Card Eight Spade, Card Ten Spade, Card Two Spade)))))),
    TestLabel "hand is not a straight flush when it's only a straight" (TestCase (assertBool "hand should not be a straight flush" (not(isStraightFlush(makeHand(Card Jack Club, Card Seven Diamond, Card Eight Heart, Card Ten Spade, Card Nine Club))))))

  ]

tests :: Test
tests =
  TestList
    [ isFlushTests,
      isStraightTests
    ]
