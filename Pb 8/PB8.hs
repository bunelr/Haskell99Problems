module PB8(
compress
)
where

compress::(Eq a) => [a]->[a]
compress = foldr (\x acc -> if acc==[] || x/= head acc then x:acc else acc) []

