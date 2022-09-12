loop(-1,Acumulador,Acumulador).
loop(N,Acumulador,Saida):-
    read(M),
    (N mod 2 =:= 0 -> Acumulador2 is Acumulador +1,loop(M,Acumulador2,Saida);loop(M,Acumulador,Saida)).
    
main:-
    read(Entrada),
    loop(Entrada,0,Saida),
    writeln(Saida),halt.

    
    