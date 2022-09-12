/* Percorrer ambas as listas de caracteres e verificar se todos os caracteres são iguais, caso sejam, retorna True. 
anagrama([],[],true).
anagrama([],_,false).
anagrama(_,[],false).

anagrama([H | T],L2,R):-
    member(H, L2),
    select(H, L2,S),
    anagrama(T,S,R).

anagrama([_ | T], L2, R):-
    anagrama(T,L2,R).

main:-
   read(P1),
   read(P2),
   string_chars(P1,C1),
   string_chars(P2,C2),
   anagrama(C1,C2,R), R.*/
 
anagrama([],[],true).
anagrama([],_,false).
anagrama(L,[],false):- length(L,S), S =\= 0.

anagrama([H | T],L2,R):-
    member(H, L2),
    select(H, L2,S),
    anagrama(T,S,R).

anagrama([_ | T], L2, R):-
    anagrama(T,L2,R).

main:-
   read(P1),
   read(P2),
   string_chars(P1,C1),
   string_chars(P2,C2),
   anagrama(C1,C2,R),
   writeln(R), halt.
 



