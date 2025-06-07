module Main where

import qualified Card (suits, ranks, deck)
import qualified Picking (pickRandomCard)

main :: IO ()
main = do
  putStrLn "Hello, Haskell!"
  putStrLn "Suits:"
  print Card.suits
  putStrLn "Ranks:"
  print Card.ranks
  putStrLn "Deck:"
  print Card.deck
  print "Picked random card from deck:"
  let randomCard = Picking.pickRandomCard Card.deck
  print randomCard
