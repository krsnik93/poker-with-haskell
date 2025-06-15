module CardTest(tests) where

import Card(Card(..), Rank(..), Suit(..))

import Test.HUnit

tests :: Test
tests =
  TestList
    [
        TestLabel "Ace is higher than Two" (TestCase (assertBool "Ace should be higher than Two" (Card Ace Spade > Card Two Heart))),
        TestLabel "Ace is equal to another Ace" (TestCase (assertBool "Ace should be equal to Ace of different Suit" (Card Ace Spade == Card Ace Heart)))
    ]
