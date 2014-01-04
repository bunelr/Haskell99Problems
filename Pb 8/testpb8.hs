import PB8
import Test.HUnit

test1 = TestCase (assertEqual "compression" "abcade" (compress "aaaabccaadeee"))

tests = TestList [TestLabel "Only test" test1]

main = runTestTT tests

