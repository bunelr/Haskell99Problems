import PB7
import Test.HUnit

test1 = TestCase (assertEqual "Single element" ([5]) (flatten (Elem 5)) )

test2 = TestCase (assertEqual "Nested List" ([1,2,3,4,5]) (flatten (List [Elem 1, List [ Elem 2, List[Elem 3, Elem 4], Elem 5]])))

test3 = TestCase (assertEqual "Empty List" ([]::[Int]) (flatten (List [])) )

tests = TestList [TestLabel "Single Element" test1, TestLabel "Nested" test2, TestLabel "Empty" test3]

main = runTestTT tests
