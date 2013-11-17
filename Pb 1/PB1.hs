module PB1
(myLast)
where




myLast:: (Ord a)=> [a]->a
myLast [x]= x
myLast (x:xs) = myLast xs 

