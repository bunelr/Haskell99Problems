import PB10
import Test.HUnit

test1 = TestCase (assertEqual "First Test" [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')] (encode "aaaabccaadeeee"))

tests = TestList [TestLabel "first test" test1]

main = runTestTT tests
