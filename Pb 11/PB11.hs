module PB11(
    encodemodified,
    EncodedUnit(..)
)
where

data EncodedUnit a = Simple a | Multiple {multiplicity :: Integer, value :: a} deriving (Show,Eq)

encodemodified::(Show a, Eq a)=>[a]->[EncodedUnit a]
encodemodified x = foldr(accumulator) [] (encode x) 


encode::(Show a, Eq a)=>[a]->[(Integer,a)]
encode = foldr (\x acc -> if acc==[] || x/= snd (head acc) then (1,x):acc else (fst (head acc)+1,x):tail acc) []

accumulator ::(Show a, Eq a)=>(Integer, a) -> [EncodedUnit a]-> [EncodedUnit a]
accumulator (1,value) list= Simple value:list
accumulator (multi,value) list = (Multiple multi value):list
