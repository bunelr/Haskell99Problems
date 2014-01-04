import PB6
import Test.HUnit

test1 = TestCase (assertEqual "Test Palindrome" True (isPalindrome [1,2,3,4,5,4,3,2,1]))
test2 = TestCase (assertEqual "Test Not Palindrome" False (isPalindrome [1,2,3,4,5]))



tests = TestList [TestLabel "Positive" test1, TestLabel "Negative" test2]

main = runTestTT tests

