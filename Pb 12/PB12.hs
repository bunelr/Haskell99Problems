module PB12(
    decodemodified,
    EncodedUnit(..)
)
where

data EncodedUnit a= Simple a | Multiple {multiplicity :: Integer, value ::a} deriving (Show,Eq)

decodemodified::(Eq a)=>[EncodedUnit a]->[a]
decodemodified = foldr(\elt list -> expandEncode(elt) ++ list ) [] 

expandEncode ::(Eq a)=>EncodedUnit a->[a]
expandEncode (Simple a) = a:[]
expandEncode (Multiple nb a) = replicate (fromInteger nb) a
