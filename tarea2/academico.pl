% academico.pl
% Definición de relaciones académicas entre profesores, estudiantes y materias.

% dicta(Profesor, Materia)
dicta(leonardo, ci3661).
dicta(maria, ci3725).
dicta(pedro, ci2691).

% cursa(Estudiante, Materia)
cursa(ana, ci3661).
cursa(ana, ci3725).
cursa(juan, ci3661).
cursa(elena, ci2691).
cursa(elena, ci3725).

% nota(Estudiante, Materia, Nota)
nota(ana, ci3661, 88).
nota(ana, ci3725, 70).
nota(juan, ci3661, 40). % juan clavó :c
nota(elena, ci2691, 51).
% elena no tiene nota en ci3725 (la esta cursando)

% 1) profesor_de(Prof, Est)
% Verdadero si Prof le da (o le dio) clases a Est en al menos una materia.
profesor_de(Prof, Est) :-
	dicta(Prof, Mat),
	(cursa(Est, Mat) ; nota(Est, Mat, _)).

% 2) aprobado(Est, Mat)
% Verdadero si Est cursó Mat y obtuvo nota >= 50.
aprobado(Est, Mat) :-
	nota(Est, Mat, N),
	N >= 50.

% 3) aplazado(Est)
% Verdadero si Est tiene al menos una nota < 50.
aplazado(Est) :-
	nota(Est, _Mat, N),
	N < 50.

% 4) cursando_sin_nota(Est, Mat)
% Verdadero si Est cursa Mat pero no hay nota registrada.
cursando_sin_nota(Est, Mat) :-
	cursa(Est, Mat),
	\+ nota(Est, Mat, _).

% Ejemplos de consultas:
% ?- cursando_sin_nota(elena, ci3725).
% true.
% ?- cursando_sin_nota(ana, ci3661).
% false.
% ?- profesor_de(leonardo, ana).
% true.
% ?- aprobado(ana, ci3661).
% true.
% ?- aplazado(juan).
% true.
% ?- aplazado(elena).
% false.
