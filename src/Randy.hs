{-|
This module provides utilities relying on randomness, like shuffling or picking.

It's called Randy to avoid name clashing with System.Random.
-}

module Randy(pickCard, shuffle) where

import qualified System.Random
import qualified System.Random.Shuffle (shuffleM)

import qualified Card (Deck, Card)

pickCard :: Card.Deck -> IO Card.Card
pickCard deck = do
    let n = length deck
    randIx <- System.Random.randomRIO (0, n - 1)
    return (deck !! randIx)

shuffle :: Card.Deck -> IO Card.Deck
shuffle = System.Random.Shuffle.shuffleM
