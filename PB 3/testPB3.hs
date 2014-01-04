import PB3
import Test.HUnit

test1 = TestCase (assertEqual "First element, no recursion" 3 (elementat [3,4,5] 1))
test2 = TestCase (assertEqual "With Recursion" 3 (elementat [1,2,3,4,5] 3))


tests = TestList [TestLabel "test1" test1, TestLabel "test2" test2]

main = runTestTT tests
