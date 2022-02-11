

{- Questao 1 -}
concatenacao :: [a] -> [a] -> [a]
concatenacao [] ys = ys
concatenacao xs [] = xs
concatenacao (x:xs) ys = x: concatenacao xs ys


{-Questoes 2 e 3
--2)
pertence :: Eq a=> a-> [a] -> Bool
pertence a [] = False
pertence a (x:xs) = 
  if a == x then True 
    else pertence a xs

--3)
intersecao :: Eq a=> [a] -> [a] -> [a]
intersecao xs [] = []
intersecao [] ys = []
intersecao (x:xs) ys = 
  if pertence x ys
    then x : intersecao xs ys else intersecao xs ys

-}

{-Questao 4 

adc :: a -> [a] -> [a]
adc a xs = a : xs 

inverso :: [a] -> [a]
inverso [] = [] 

inverso (x:xs) = adc x (inverso xs)
au = [] 
-}

{- Questao 5
primeiros :: Int -> [a] -> [a]
primeiros 0 _ = []
primeiros _ [] = []
primeiros n (x:xs) = x:primeiros (n-1) xs
-}

{- Questao 6 
ultimos :: Int -> [a] -> [a]
ultimos _ [] = []
ultimos 0 _ = []
ultimos n (x:xs) = if length(xs) == (n) then xs else ultimos n xs
-}

{- Questao 7 
binParaInt :: String -> Int
binParaInt "1" = 1
binParaInt "" = 0
binParaInt (x:xs) = if x == '1' then converte x (length(xs)) + binParaInt xs else binParaInt xs
 where
  converte :: Char -> Int -> Int
  converte _ n = power 2 n 

  power :: Int -> Int -> Int
  power n 0 = 1
  power n p = n * power n (p - 1)
-}

{- Questao 8 
10/2 5 0 5/2 2 1 2/2 1 0 1/2 0 1-}
--intParaBin :: Int -> String
--intParaBin

{- Questao 9 -}
menorValor :: Ord a => [a] -> a
menorValor [] = error "lista vaiza"
menorValor [a] = a
menorValor (x:xs) = if x < menorValor xs then x else menorValor xs


{- Questao 10 -}
removerPrimeiro :: Eq a => [a] -> a -> [a]
removerPrimeiro [] _ = []
--removerPrimeiro [a] a = []
removerPrimeiro (x:xs) a = if x == a then concatenacao xs aux else x:removerPrimeiro xs a 
aux = []


{- Questao 11 -}

ultimoElemento :: [a] -> a
ultimoElemento [] = error "lista vazia"
ultimoElemento (x:xs) = if length xs == 0 then x else ultimoElemento xs

adc :: a -> [a] -> [a]
adc a xs = a:xs 
 

ordenar :: Ord a => [a] -> [a]
--ordenar [] = a1
--ordenar [a] = [a]
--ordenar xs = if length xs == 0 then a1 else concatenacao (ordenar (removerPrimeiro xs (menorValor xs))) a1
ordenar xs = if length xs == 0 then a1 else ordenar (removerPrimeiro xs  (ultimoElemento (adc (menorValor xs) a1))) --removerPrimeiro xs (ultimoElemento ((adc (menorValor xs) xs))) --if length xs == 2 then xs else ordenar (removerPrimeiro xs (ultimoElemento (((menorValor xs):xs))))
a2 = []
a1 = []
--if length xs == 1 then concatenacao a1 xs else
{--}

main :: IO ()
main = do

 
 --print $ concatenacao [1,2] [3]
 --print $ pertence 0 [2,3,1]
 --print $ intersecao [1,4,2,3] [2,3]
 --print $ inverso [1,2,3,4]
 --print $ primeiros 2 [1,2,3]
 --print $ ultimos 5 [1,2,3,4,5,6]
 --print $ binParaInt("011")
 --print $ intParaBin 10
 --print $ menorValor [5,4,10,2,3]
 --print $ removerPrimeiro [1,2,3,4,3] 3
   print $ ordenar [5,4,2,6,1]