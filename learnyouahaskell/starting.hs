doubleMe x = x + x

doubleUs x y = x * 2 + y * 2
doubleUs' x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100 then x else x * 2
doubleSmallNumber' x = (if x > 100 then x else doubleMe x) + 1

conanO'Brien = "It's a-me, Conan O'Brien"

numbers = [4, 8, 15, 16, 23, 42]
numbers' = 5:numbers
numbers'' = 1:2:[3, 4]
numbers''' = 1:2:3:[]

name = "raghu"
name' = 'r':'a':'g':'h':'u':'!':[]

helloworld = "hello" ++ " " ++ "world"
woot = ['w', 'o'] ++ ['o', 't']

smallcat = 'A':" SMALL CAT"

a = name !! 1
bang = name' !! 5
four = numbers !! 0

b = [[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3]]
c = b ++ [[1,1,1,1]]

bool = [1,2,3] > [1,2,4]
bool' = [3,2,1] > [2, 20, 200]
bool'' = [4,3,2] == [4,3,2]

list = [1, 2, 3, 4, 5]
headd = head list
taill = tail list
lastt = last list
initt = init list
lengthh = length list
nulll = null list
nulll' = null []
rev = reverse list

take3 = take 3 list
nothing = take 0 list

drop3 = drop 3 list
drop0 = drop 0 list
dropall = drop 100 list

list' = [8, 4, 2, 1, 5, 6]
mini = minimum list'
maxi = maximum list'
summ = sum list'
prod = product list'
prod0 = product (0:list')
prod0' = product (list ++ [0])

exists = elem 4 [1,2,3,4]
exists' = 4 `elem` [1,2,3]


--  RANGES
twenty = [1..20]
atoz = ['a'..'z']
ktoz = ['K'..'Z']

evens = [2,4..20]
threes = [3,6..20]

twentyrev = [20,19..1]
oddsrev = [19,17..1]

-- FLOATs are not recommended to be used in ranges
floatfunky = [0.1, 0.3..1]

infi = [1..]
seven = take 7 infi

thirteentable = [13,26..13*20]
thirteentable' = take 20 [13,26..]


cyc = cycle [1..3]
-- cycle of an infinite list never completes one cycle if you know what i mean
onetwothree = take 10 cyc
lulz =take 11 (cycle "LOL ")

tenfives = take 10 (repeat 5)
threetens = replicate 3 10


-- LIST COMPREHENSIONS
doubles = [x * 2 | x <- [1..10]]

evenlist = [x | x <- [1..20], even x]
oddlist = [x | x <- [1..20], odd x]

mod7three = [x | x <- [50..100], x `mod` 7 == 3]
mod7three' = [x | x <- [50..100], mod x 7 == 3]

boombangs xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]
exclude = [x | x <- [10..20], x/=13, x/=15, x/=18]

multi = [x * y | x <- [1,2,3], y <- [1,2,3]]
multi' = [x * y | x <- [2,5,10], y <- [8,10,11], x * y > 50]

nouns = ["hobo","frog","pope"]
adjectives = ["lazy","grouchy","scheming"]
epicnames = [a ++ " " ++ n | a <- adjectives, n <- nouns]

length' xs = sum [1 | _ <- xs]

removeNonUpperCase st = [c | c <- st, c `elem` ['A'..'Z']]
str = removeNonUpperCase "IdontLIKEFROGS"

xxs = [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,1,3,2,3,6]]
nestedlist = [[x | x <- xs, even x] | xs <- xxs]

--  TUPLES
fstt = fst (8,11)
sndd = snd ("Wow", False)

zipper = zip [1..5] (take 5(repeat 5))
zipper' = zip [1..5] (replicate 5 7)
zipper'' = zip [1..5] ["one", "two", "three", "four", "five"]
shortzip = zip [5,3,2,6,2,7,2,5,4,6,6] ["im","a","turtle"]
shortzip' = zip [1..] ["apple", "orange", "cherry", "mango"]



triangles = [ (a,b,c) | a <- [1..10], b <- [1..10], c <- [1..10]]
triangles' = [ (a,b,c) | a <- [1..10], b <- [1..10], c <- [1..10], a == b, b ==c,c==a]
rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]
rightTriangles' = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]

--------------------------------------------------------------


tuplesz = zipWith (\a b -> a:b:[]) [1,2] [3,4]
fibs = 0:1:zipWith (+) fibs (drop 1 fibs)
fibs' = 0:1:zipWith (+) fibs (tail fibs)

digs :: Integral x => x -> [x]
digs 0 = []
digs x = digs (x `div` 10) ++ [x `mod` 10]

factorial :: Integer -> Integer
factorial n = product [1..n]
