# Tarea 2 - Laboratorio de Lenguajes de Programación I

![Made with Love](https://img.shields.io/badge/Made%20with-Love-pink?style=for-the-badge&logo=data:image/svg%2bxml;base64,PHN2ZyByb2xlPSJpbWciIHZpZXdCb3g9IjAgMCAyNCAyNCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj48dGl0bGU+R2l0SHViIFNwb25zb3JzIGljb248L3RpdGxlPjxwYXRoIGQ9Ik0xNy42MjUgMS40OTljLTIuMzIgMC00LjM1NCAxLjIwMy01LjYyNSAzLjAzLTEuMjcxLTEuODI3LTMuMzA1LTMuMDMtNS42MjUtMy4wM0MzLjEyOSAxLjQ5OSAwIDQuMjUzIDAgOC4yNDljMCA0LjI3NSAzLjA2OCA3Ljg0NyA1LjgyOCAxMC4yMjdhMzMuMTQgMzMuMTQgMCAwIDAgNS42MTYgMy44NzZsLjAyOC4wMTcuMDA4LjAwMy0uMDAxLjAwM2MuMTYzLjA4NS4zNDIuMTI2LjUyMS4xMjUuMTc5LjAwMS4zNTgtLjA0MS41MjEtLjEyNWwtLjAwMS0uMDAzLjAwOC0uMDAzLjAyOC0uMDE3YTMzLjE0IDMzLjE0IDAgMCAwIDUuNjE2LTMuODc2QzIwLjkzMiAxNi4wOTYgMjQgMTIuNTI0IDI0IDguMjQ5YzAtMy45OTYtMy4xMjktNi43NS02LjM3NS02Ljc1em0tLjkxOSAxNS4yNzVhMzAuNzY2IDMwLjc2NiAwIDAgMS00LjcwMyAzLjMxNmwtLjAwNC0uMDAyLS4wMDQuMDAyYTMwLjk1NSAzMC45NTUgMCAwIDEtNC43MDMtMy4zMTZjLTIuNjc3LTIuMzA3LTUuMDQ3LTUuMjk4LTUuMDQ3LTguNTIzIDAtMi43NTQgMi4xMjEtNC41IDQuMTI1LTQuNSAyLjA2IDAgMy45MTQgMS40NzkgNC41NDQgMy42ODQuMTQzLjQ5NS41OTYuNzk3IDEuMDg2Ljc5Ni40OS4wMDEuOTQzLS4zMDIgMS4wODUtLjc5Ni42My0yLjIwNSAyLjQ4NC0zLjY4NCA0LjU0NC0zLjY4NCAyLjAwNCAwIDQuMTI1IDEuNzQ2IDQuMTI1IDQuNSAwIDMuMjI1LTIuMzcgNi4yMTYtNS4wNDggOC41MjN6Ii8+PC9zdmc+)

Tarea 2 del laboratorio de Lenguajes de Programacion I (CI-3661) de la Universidad Simón Bolívar.
Este tarea 2 se implementará en **Prolog** para practicar el paradigma de la programación lógica.

## Ejecución

Para ejecutar los problemas de la tarea 2, usaremos `swipl`. Son dos problemas independientes, así que para ejecutar el primero, cargamos el archivo `prelaciones.pl` en el intérprete de Prolog con el siguiente comando:

```bash
swipl -s prelaciones.pl
```

Luego, podemos hacer consultas con el intérprete. Por ejemplo:

```prolog
?- prelacion_total(ci2525, ci3661).
% true.

?- prelacion_total(ma1111, ci3825).
% true.

?- prelacion_total(ci3661, ci3725).
% false.
```

Para el segundo problema, cargamos el archivo `academico.pl` en el intérprete de Prolog con el siguiente comando:

```bash
swipl -s academico.pl
```

Luego, podemos hacer consultas con el intérprete. Por ejemplo:

```prolog
?- cursando_sin_nota(elena, ci3725).
% true.

?- cursando_sin_nota(ana, ci3661).
% false.

?- profesor_de(leonardo, ana).
% true.

?- aprobado(ana, ci3661).
% true.

?- aplazado(juan).
% true.
```

## Estudiante

- Luis Isea [@lmisea](https://github.com/lmisea) (19-10175).
