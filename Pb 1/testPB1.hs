import Test.HUnit
import PB1

test1 = TestCase (assertEqual "with numbers" (4) (myLast [1,2,3,4]) )

test2 = TestCase (assertEqual "with letters" ('z') (myLast ['x','y','z']) )

tests = TestList [TestLabel "Test 1" test1, TestLabel "Test 2" test2]

main = runTestTT tests
