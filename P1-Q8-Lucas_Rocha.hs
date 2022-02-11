{- Questao 8 -}

ultimoElemento :: [a] -> a
ultimoElemento [] = error "lista vazia"
ultimoElemento (x:xs) = if length xs == 0 then x else ultimoElemento xs



main :: IO ()
main = do

 print $ ultimoElemento [1,2,3,4,5,8,9,10]
