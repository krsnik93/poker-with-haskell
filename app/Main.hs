module Main where

import qualified Card (Card(..), Suit(..), Rank(..), deck)
import qualified Hand (Hand(..))
import qualified HandRank (determine)
import qualified Randy (pickCard, shuffle)

main :: IO ()
main = do
  putStrLn "Hello, Haskell!"
  putStrLn "Deck:"
  print Card.deck
  print "Random card from deck:"
  randomCard <- Randy.pickCard Card.deck
  print randomCard

  print "First card in deck before shuffling:"
  print (Card.deck !! 0)

  shuffledDeck <- Randy.shuffle Card.deck
  print "First card in deck after shuffling:"
  print (shuffledDeck !! 0)

  let card = Card.Card  Card.Ace Card.Spade
  let hand = Hand.Hand card card card card card
  print (HandRank.determine(hand))
