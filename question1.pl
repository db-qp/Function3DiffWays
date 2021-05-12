/* Dawson Black */
/* 1.3 */

foo(X,Y,Z) :- Y =< 0, Z is X, !.
foo(X,Y,Z) :- X =< 0, Z is Y, !.
foo(X,Y,Z) :- X < Y,
X1 is X-2,
Y1 is Y-3,
(foo(X1,Y1,Z1)),
Z is Y+Z1;
X1 is X-1,
Y1 is Y-2,
(foo(X1,Y1,Z1)),
Z is X+Z1.

