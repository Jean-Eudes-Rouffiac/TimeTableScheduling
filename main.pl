:- include('./definition.pl').
:- include('./view.pl').
:- include('./organisation.pl').

/**
 * organisation(-Cs).
 *
 * @arg Cs   Liste de créneaux
 */

organisation(Cs) :-
    findall(S, Session(S, _, _, _), Ss),

    % on trie les séances, les plus contraintes à la fin
    predsort(beforeSeance, Ss, Ss2),

    % on inverse car planifier/2 commence par la fin et on veut placer d'abord
    % les séances les moins contraintes (ie. les débuts de matière)

    reverse(Ss2, Ss3),

    % et voilà une organisation possible
    planifier(Ss3, Cs).

:- initialization main.

main :- organisation(Cs), displayOrganisation(Cs), halt.
main :- halt(1).
