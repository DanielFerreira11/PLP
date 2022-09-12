vogais:: String
vogais = "aeiouAEIOU"

contaVogais::String -> Int
contaVogais[] = 0
contaVogais(h:t) 
  | elem h vogais = 1 + contaVogais t
  | otherwise = 0 + contaVogais t


contaConsoantes:: String -> Int -> Int
contaConsoantes palavra v = length (palavra) - v

compara:: Int -> Int -> IO()
compara c v
 |(c == v) = print ("consoantes=vogais")
 |(c > v) = print("+consoantes")
 |otherwise = print("+vogais")
 
main::IO()
main = do
  entrada <- getLine
  let v = contaVogais(entrada)
  let c = contaConsoantes(entrada) v
  compara c v