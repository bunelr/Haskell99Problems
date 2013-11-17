module PB6(
isPalindrome
)
where


isPalindrome::(Eq a) => [a]->Bool
isPalindrome x = x==myReverse x

myReverse::[a]->[a]
myReverse = foldl(\acc x -> x:acc) []

