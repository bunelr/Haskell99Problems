import PB4
import Test.HUnit

test1 = TestCase (assertEqual "Checking the Length" 4 (myLength [1,2,3,4]))

tests = TestList [TestLabel "One test" test1]

main = runTestTT tests
