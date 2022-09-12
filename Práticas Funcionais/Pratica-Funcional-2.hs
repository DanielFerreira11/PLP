tempoConvertido:: Int
tempoConvertido = 2160

quantMusicas:: Int -> Int -> Int -> IO()
quantMusicas 0 soma quant = 
   if soma > tempoConvertido then print (quant-1)
   else print quant
quantMusicas i soma quant =
   if soma == tempoConvertido then print quant
   else 
    if soma > tempoConvertido then print (quant-1)
    else do
      dura <- getLine
      quantMusicas(i-1) (soma + read dura) (quant + 1)

main:: IO()
main = do
entrada <- getLine
quantMusicas (read entrada) 0 0