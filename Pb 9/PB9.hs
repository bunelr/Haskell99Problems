module PB9(
pack
)
where

pack::(Eq a) => [a]->[[a]]
pack = foldr (\x acc -> if acc/=[] && x==head(head acc) then (x:head acc) : tail acc else [x]:acc) []
