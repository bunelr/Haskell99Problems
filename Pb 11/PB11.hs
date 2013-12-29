module PB11(
    encodemodified
)
where

data EncodedUnit = Simple Char | Multiple {multiplicity :: Integer, value :: Char} deriving (Show)

encodemodified::[Char]->[EncodedUnit]
encodemodified x = foldr(accumulator) [] (encode x) 


encode::[Char]->[(Integer,Char)]
encode = foldr (\x acc -> if acc==[] || x/= snd (head acc) then (1,x):acc else (fst (head acc)+1,x):tail acc) []

accumulator ::(Integer, Char) -> [EncodedUnit]-> [EncodedUnit]
accumulator (1,value) list= Simple value:list
accumulator (multi,value) list = (Multiple multi value):list
