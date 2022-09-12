volume(X,L):-R is X * 3.785.
peso(X,Q):- Q is X / 2.205.
distancia(X,K):- K is X * 1.609.

main:-
read(X),
volume(X,Y):- X =.= "volume";X =.= "Volume".
peso(X,Y):- X =.= "peso";X =.= "Peso".
distancia(X,Y):-  X =.= "distancia"; X =.= "Distancia".
write(Y), halt.