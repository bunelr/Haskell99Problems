import Test.HUnit
import PB2

test1= TestCase (assertEqual "With letters" ("c") (myButLast ["a","b","c","d"]))

tests = TestList [TestLabel "First test" test1]

main = runTestTT tests
