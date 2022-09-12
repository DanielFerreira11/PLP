  import Text.Printf

contaGastoDiario:: Float -> Float -> Float -> Float
contaGastoDiario p t c = (calculaConsumo p t) * c

calculaConsumo:: Float -> Float -> Float
calculaConsumo p t = (p/1000) * t

contaGastoSemanal:: Float -> Float -> Float -> Float
contaGastoSemanal p t c  = (contaGastoDiario p t c)  * 7

main:: IO()
main = do
 p <- getLine
 t <- getLine
 c <- getLine
 let consumo = calculaConsumo (read p) (read t) 
 let gastoDiario = contaGastoDiario (read p) (read t) (read c)
 let gastoSemanal = contaGastoSemanal (read p) (read t) (read c)

 printf "Consumo = %.2fkWh\n" (consumo)
 printf "Gasto diário = R$ %.2f\n" (gastoDiario)
 printf "Gasto semanal = R$ %.2f\n" (gastoSemanal)
 
 




 
    
