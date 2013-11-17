module PB2
(myButLast)
where

myButLast::(Ord a)=>[a]->a
myButLast [] = error "Doesn't work with empty list"
myButLast (x:[]) = error "Need at least two elements"
myButLast (x1:x2:[]) = x1
myButLast (x:xs) = myButLast xs



