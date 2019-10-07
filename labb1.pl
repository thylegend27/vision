

% uppgift 3
last([Greger|[]], [], Greger).
last([H|T], [H|R], X) :-
  last(T, R, X).

% uppgift 4
visited = [].
addToVisit(In, [In|Visited]).


partstring([], _) :- !, false.
partstring(X, X) :- addToVisit(X, _), +/member(X, Visited).
partstring([_|T], Out) :-
  partstring(T, Out).
  
partstring(In, Out) :-
  last(In, T, _),
  partstring(T, Out).
  
% uppgift 5
permute([], []).
permute(In, [X|R]) :-
  select(X, In, Rest),
  permute(Rest, R).

% uppgift 6

node(a).
node(b).
node(c).
node(d).
node(e).

edge(a,b).
edge(b,c).
% edge(e,a).
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




































% this comment is intetional.
