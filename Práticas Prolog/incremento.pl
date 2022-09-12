acc(X,R):-R is X +1.

main:-
read(X),
acc(X,Y),
write(Y).