import PB12
import Test.HUnit

test1 = TestCase (assertEqual "First test" "aaaabccaadeeee" (decodemodified [Multiple 4 'a',Simple 'b', Multiple 2 'c', Multiple 2 'a',Simple 'd', Multiple 4 'e']))

tests = TestList [TestLabel "Only test" test1]

main = runTestTT tests

