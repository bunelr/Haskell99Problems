import Test.HUnit
import PB9

test1 = TestCase (assertEqual "Packing" ["aaaa","b","cc","aa","d","eeee"](pack ['a','a','a','a','b','c','c','a','a','d','e','e','e','e']))

tests = TestList [TestLabel "First Test" test1]

main = runTestTT tests
