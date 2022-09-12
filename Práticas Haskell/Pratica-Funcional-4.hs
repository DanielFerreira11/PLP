findMax:: Ord a => [a] -> a
findMax [num] = num
findMax (num:num': t) = maximum ((if num >= num' then num else num'):t)

removeMax:: Int -> [Int] -> [Int]
removeMax _ [] = []
removeMax mx (h:t)
  | h == mx = removeMax  mx t
  | otherwise = h : removeMax mx t
  
removeNMaiores::[Int] -> Int -> [Int]
removeNMaiores lista 0 = lista  
removeNMaiores lista n = removeNMaiores (removeMax (findMax lista) lista) (n-1)

main:: IO()
main = do
  list <- getLine
  n <- getLine
  let resultado = removeNMaiores (read list) (read n) 
  print(resultado)
  
