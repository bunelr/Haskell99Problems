module PB4(
myLength,
myLength'
)
where

myLength::(Integral b) => [a]->b
myLength [] = 0
myLength (x:xs) = myLength xs + 1


myLength'::(Integral b) => [a]->b
myLength' = foldl( \acc _ -> acc + 1) 0
