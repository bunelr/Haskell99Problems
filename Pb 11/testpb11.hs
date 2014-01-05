import PB11
import Test.HUnit

test1 = TestCase (assertEqual "Encoding" ([Multiple 4 'a',Simple 'b',Multiple 2 'c',Multiple 2 'a', Simple 'd', Multiple 4 'e']::[EncodedUnit Char]) (encodemodified "aaaabccaadeeee"))

tests= TestList [TestLabel "First Test" test1]

main = runTestTT tests
