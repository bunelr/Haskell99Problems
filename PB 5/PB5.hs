module PB5(
myReverse
)
where


myReverse::[a]->[a]
myReverse = foldl(\acc x -> x:acc) []
