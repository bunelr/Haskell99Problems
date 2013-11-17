module PB10(
encode
)
where

encode:: (Eq a, Integral b)=> [a]->[(b,a)]
encode = foldr (\x acc -> if acc==[] || x/= snd (head acc) then (1,x):acc else (fst (head acc)+1,x):tail acc) [] 
