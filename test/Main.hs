module Main (main) where

import Test.HUnit
import qualified System.Exit(exitFailure, exitSuccess)

import qualified HandRankTest(tests)
import qualified DeckTest(tests)

tests :: Test
tests = TestList
    [
        TestLabel "addition" (TestCase (assertEqual "basic addition failed" (3 :: Integer) (1 + 2))),
        HandRankTest.tests,
        DeckTest.tests
    ]

main :: IO Counts
main = do
    result <- runTestTT tests
    if failures result > 0 || errors result > 0
        then System.Exit.exitFailure
        else System.Exit.exitSuccess
