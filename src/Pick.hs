module Pick(pickRandomCard) where

import System.Random

import qualified Card (Deck, Card)

pickRandomCard :: Card.Deck -> Card.Card
pickRandomCard deck =
    let seed = 40
        generator = mkStdGen seed
        n = length deck
        (randIx, _) = randomR (0,(n-1)) generator
    in deck !! randIx
