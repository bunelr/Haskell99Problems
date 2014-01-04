module PB7(
NestedList(..),
flatten
)
where

data NestedList a = Elem a | List [NestedList a] deriving (Show)

flatten:: NestedList a->[a]
flatten (Elem a) = [a]
flatten (List []) = []
flatten (List x) = flatten (head x) ++ flatten (List (tail x))


