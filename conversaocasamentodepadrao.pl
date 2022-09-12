conversao(X,M,R):- M =@= volume, R is X * 3.785.
conversao(X,M,R):- M =@= peso, R is X / 2.205.
conversao(X,M,R):- M =@= distancia, R is X * 1.609.

main:-
read(X),
read(M),
conversao(X,M,R),
format('~2f',R).
