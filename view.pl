/**
 * indiceSession(+S, -I).
 *
 * Retourne l'indice de la séance dans sa matière
 *

                    S0               I = 0
                    |
                ----------
                |        |
                |        |
                S1       S2          I = 1
                         |
                     ---------
                     |       |
                     |       |
                     S3      S4      I = 2
                     |       |
                     ---------
                         |
                         S5          I = 3

 *
 * @arg S   Id de séance
 * @arg I   L'indice
 */
indexSession(S, 0) :- \+ followingSession(S, _), \+ followingSession(S, _, _, _), !.
indexSession(S, N) :-
    (followingSession(S, S1); followingSession(S, S1, _, _)),
    !,
    indexSession(S1, N1),
    N is N1 + 1,
    !.

/**
 * beforeSession(-Order, +S1, +S2).
 *
 * R est unifié à < si S1 a un indice plus petit que S2, > sinon
 *
 * @arg Order
 * @arg S1      Id de séance
 * @arg S2      Id de séance
 */

beforeSession(R, S1, S2) :-
    indexSession(S1, N1),
    indexSession(S2, N2),
    N2 > N1 -> R = <; R = > .


/**
 * displaySession(+S)
 *
 * @arg S
 */

displaySession(S) :-
    Session(S, TypeCours, Mat, Nom),
    write('Séance:\t\t'),
    write(S), write(' "'), write(Nom), write('"'),
    write(' - '), write(TypeCours),
    write(' - '), write(Mat).

/**
 * displayMoment(+J, +M, +H)
 *
 * @arg J
 * @arg M
 * @arg H
 */

displayMoment(J, M, H) :-
    plage(H, Start, End),
    write('Date:\t\t'),
    write(J), write('/'), write(M),
    write(' '), write(Start), write('-'), write(End).

/**
 * displayGroupe(+Gs)
 *
 * @arg Gs   liste de groupes
 */

displayGroup([G]) :-
    write(G),
    !.
displayGroup([G, G2|Gs]) :-
    write(G), write(', '),
    displayGroup([G2|Gs]).

/**
 * displayGroupes(+S)
 *
 * @arg S   Une séance
 */

displayGroups(S) :-
    findall(G, groupSession(G, S), Gs), % tous les groupes de la séance
    write('Groupes:\t'),
    displayGroup(Gs).

/**
 * displayProf(+Ps)
 *
 * @arg Ps   liste d'enseignants
 */


displayProf([P]) :-
    write(P),
    !.
displayProf([P, P2|Ps]) :-
    write(P), write(', '),
    displayProf([P2|Ps]).

/**
 * displayProfs(+S)
 *
 * @arg S   Une séance
 */


displayProfs(S) :-
    findall(P, profesorSession(P, S), Ps), % tous les profs de la séance
    write('Profs:\t\t'),
    displayProf(Ps).

/**
 * displayClassRoom(+L)
 *
 * @arg L Une salle
 */

displayClassRoom(L) :-
    ClassRoom(L, Nb),
    write('Salle:\t\t'), write(L), write('('), write(Nb), write(')').

/**
 * displayOrganisation(+Cs)
 *
 * Affiche la planification dans l'ordre chronologique
 *
 * @arg Cs  Une liste de créneaux
 */

displayOrganisation([]) :- !.
displayOrganisation(Cs) :-
    date(J, M),
    plage(H, _, _),
    member(C, Cs),
    C = [S, H, J, M, L],
    write('--------------------------------------------------------------'), nl,
    displaySession(S), nl,
    displayMoment(J, M, H), nl,
    displayGroups(S), nl,
    displayProfs(S), nl,
    displayClassRoom(L), nl,
    delete(Cs, C, Cs2),
    displayOrganisation(Cs2),
    !.
