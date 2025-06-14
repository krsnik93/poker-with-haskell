module Main where

import Card (Card(..), Suit(..), Rank(..))
import Hand (makeHand)
import Deck(deck)
import HandRank (determine)
import qualified Randy (pickCard, shuffle)

main :: IO ()
main = do
  putStrLn "Hello, Haskell!"
  putStrLn "Deck:"
  print deck
  print "Random card from deck:"
  randomCard <- Randy.pickCard deck
  print randomCard

  print "First card in deck before shuffling:"
  print (deck !! 0)

  shuffledDeck <- Randy.shuffle deck
  print "First card in deck after shuffling:"
  print (shuffledDeck !! 0)

  let card = Card  Ace Spade
  let hand = makeHand (card, card, card, card, card)
  print (HandRank.determine(hand))
