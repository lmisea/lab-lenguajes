% prelaciones.pl
% Definición de prelaciones entre materias.

% prela(Materia, Prelacion)
prela(ci2691, ci3661). % ci2691 prela a ci3661
prela(ci2525, ci2691).
prela(ci2691, ci3641).
prela(ci3641, ci3725).
prela(ci3725, ci3825). % ci3725 prela a ci3825
prela(ma1111, ci2525).

% 1) prelacion_directa(A,B)
% Es verdadero si A es prelación directa de B.
prelacion_directa(A, B) :-
	prela(A, B).

% 2) prelacion_total(A,B)
% Es verdadero si A es prelación de B, directa o indirectamente.
prelacion_total(A, B) :-
	prelacion_total(A, B, [A]).

% Caso base: directa
prelacion_total(A, B, _) :-
	prelacion_directa(A, B).

% Recursivo: A -> C y de C a B (si no se ha visitado C aún)
prelacion_total(A, B, Visited) :-
	prelacion_directa(A, C),
	\+ member(C, Visited),
	prelacion_total(C, B, [C | Visited]).

% Ejemplos de consultas:
% ?- prelacion_total(ci2525, ci3661).
% true.
% ?- prelacion_total(ma1111, ci3825).
% true.
% ?- prelacion_total(ci3661, ci3725).
% false.
% ?- prelacion_total(ci2691, ci3825).
% true.
% ?- prelacion_total(ci3641, ci3661).
% false.
