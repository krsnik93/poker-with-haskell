module DeckTest (tests) where

import Card (Card (..), Rank (..), Suit (..))
import Deck (Deck, deck)
import Test.HUnit

expectedDeck :: Deck
expectedDeck =
  [ Card Two Spade,
    Card Two Club,
    Card Two Heart,
    Card Two Diamond,
    Card Three Spade,
    Card Three Club,
    Card Three Heart,
    Card Three Diamond,
    Card Four Spade,
    Card Four Club,
    Card Four Heart,
    Card Four Diamond,
    Card Five Spade,
    Card Five Club,
    Card Five Heart,
    Card Five Diamond,
    Card Six Spade,
    Card Six Club,
    Card Six Heart,
    Card Six Diamond,
    Card Seven Spade,
    Card Seven Club,
    Card Seven Heart,
    Card Seven Diamond,
    Card Eight Spade,
    Card Eight Club,
    Card Eight Heart,
    Card Eight Diamond,
    Card Nine Spade,
    Card Nine Club,
    Card Nine Heart,
    Card Nine Diamond,
    Card Ten Spade,
    Card Ten Club,
    Card Ten Heart,
    Card Ten Diamond,
    Card Jack Spade,
    Card Jack Club,
    Card Jack Heart,
    Card Jack Diamond,
    Card Queen Spade,
    Card Queen Club,
    Card Queen Heart,
    Card Queen Diamond,
    Card King Spade,
    Card King Club,
    Card King Heart,
    Card King Diamond,
    Card Ace Spade,
    Card Ace Club,
    Card Ace Heart,
    Card Ace Diamond
  ]

tests :: Test
tests =
  TestList
    [ TestLabel "deck has 52 cards" (TestCase (assertEqual "deck does not have expected length" 52 (length deck))),
      TestLabel "deck has expected cards" (TestCase (assertEqual "deck does not have expected cards" expectedDeck deck))
    ]
