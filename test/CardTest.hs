module CardTest(tests) where

import Card(Card(..), Rank(..), Suit(..))

import Test.HUnit

tests :: Test
tests =
  TestList
    [
        TestLabel "Ace is higher than Two" (TestCase (assertBool "Ace should be higher than Two" (Ace > Two))),
        TestLabel "Kind is equal to King" (TestCase (assertBool "King should be equal to King" (King == King) )),
        TestLabel "Ace of Spades is higher than Two of Hearts" (TestCase (assertBool "Ace of Spades should be higher than Two of Hearts" (Card Ace Spade > Card Two Heart))),
        TestLabel "Three of Clubs is lower than Seven of Diamonds" (TestCase (assertBool "Three of Clubs should be lower than Seven of Diamonds" (Card Three Club < Card Seven Diamond)))
    ]
