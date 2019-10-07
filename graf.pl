node(a).
node(b).
node(c).
node(d).
node(e).

edge(a,b).
edge(b,c).
edge(c,e).
edge(d,e).


pathCall(A, B, R) :-
  path(A, B, [], R).

path(A,A, Visited, [A]) :-
  \+member(A, Visited).
path(A, B, Visited, [A|RestOfPath]) :-
  \+member(A, Visited),
  edge(A, Neighbor),
  path(Neighbor, B, [A|Visited], RestOfPath).
