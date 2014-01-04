import PB5
import Test.HUnit


test1 = TestCase (assertEqual "Reversing a list" [1,2,3,4] (myReverse [4,3,2,1] ))

tests = TestList [TestLabel "Only test" test1]

main = runTestTT tests

