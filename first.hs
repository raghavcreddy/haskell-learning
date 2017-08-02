i :: Int
i = 1

c = 'c'

cs :: [Int]
cs = [1,2,3]

cs' = 1:2:3:[]
cs'' = "sattar"
cs''' = ['s', 'a', 't', 't', 'a', 'r']
cs'''' = 's':'a':[]

t :: (Int,Int)
t= (1,2)
tr :: (Int,Char,Int)
tr = (1,'a',3)

square = \x -> x * x
cube x = x * x * x

add x y = x + y

add' (x,y,z) = x + y + z

fact 0 = 1
fact n = n * fact(n-1)

-- a :: [Int]
{-
a = 1 : a
-}

cycle' :: [a] -> [a]
cycle' x = x++(cycle x)

fibs :: [Integer]
fibs = 0:1:zipWith (+) fibs (tail fibs)

curry f = \x y -> f (x,y)