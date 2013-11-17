module PB3(
elementat
)
where

elementat::(Integral b)=>[a]->b->a
elementat [] _ = error "Not Enough Element"
elementat (x:xs) 1 = x
elementat (x:xs) n = elementat xs (n-1)

