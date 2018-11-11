%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                               Groupes                                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/**
 * groupe(?Groupe, ?Effectif)
 *
 * @arg Groupe      Nom du groupe
 * @arg Effectif    Nombre d'étudiants dans le groupe
 **/

groupe(gm3, 65).
groupe(gm3_1, 32).
groupe(gm3_2, 33).
groupe(gm4, 50).
groupe(gm4_1, 25).
groupe(gm4_2, 25).
groupe(gm5, 30).
groupe(gm5_1, 15).
groupe(gm5_2, 15).

/**
 * incomp(-G1, -G2)
 *
 * @arg G1     Nom du groupe 1
 * @arg G2     Nom du groupe 2
 */

incomp(gm3, gm3_1).
incomp(gm3, gm3_2).
incomp(gm4, gm4_1).
incomp(gm4, gm4_2).
incomp(gm5, gm5_1).
incomp(gm5, gm5_2).


/**
 * incompatibles(-Groupe1, -Groupe2)
 *
 * Définit l'incompatibilité entre 2 groupes (si il y a des étudiants en commun)
 *
 * @arg Groupe1     Nom du groupe 1
 * @arg Groupe2     Nom du groupe 2
 */
% reflexive
incompatibles(X, X) :- !.

% symétrique
incompatibles(X, Y) :- incomp(X, Y), !.
incompatibles(X, Y) :- incomp(Y, X), !.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                               Matières                                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/**
 * matiere(?Matiere)
 *
 * @arg Matiere     Nom de la matière
 **/


%matiere gm3%

%s5%

matiere(analyse_numerique_1).
matiere(fortran).
matiere(mesure_distribution).

matiere(probabilite).
matiere(signal_1).
matiere(optimisation_discrete).

matiere(c).
matiere(algo).

%s6%
matiere(analyse_numerique_2).
matiere(analyse_fonctionnelle).
matiere(algo_num_arith).

matiere(statistiques1).
matiere(equa_diff).

matiere(langage_oriente_objet).
matiere(syst_exploitation).




%matiere gm4%
%

%s7%
matiere(mnedp1).
matiere(edp).
matiere(opti_lineaire).


matiere(automatique).
matiere(markov).
matiere(statistiques2).

matiere(java).
matiere(algo_structure_donnees).

%s9%
matiere(mnedp2).
matiere(b_spline).

matiere(signal2).
matiere(opti_combinatoire).

matiere(technoweb).
matiere(cplusplus).
matiere(base_de_donnee).




%matiere gm5%
%

%s10%
matiere(regression_non_lineaire).
matiere(had).
matiere(hamilton_jacobi).
matiere(auto_non_lineaire).
matiere(calcul_parallelle).
matiere(programmation_logique_contrainte).

%s11%
matiere(machine_learning).
matiere(traitement_image).
matiere(calcul_sto).
matiere(realite_virtuelle).

matiere(anglais).
matiere(gsf).
matiere(sport).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                   Profs                                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/**
 * prof(?Prof)
 *
 * @arg Prof     Nom de l'enseignant
 **/

prof(abdulrab).
prof(beveraggi).
prof(borel).
prof(boutigny).
prof(caputo).
prof(chaignaud).
prof(ciotir).
prof(dubois).
prof(el_assoudi).
prof(el_machkouri).
prof(forcadel).
prof(fortier).
prof(fourati).
prof(knippel).
prof(kotowicz).
prof(gleyse).
prof(godichon).
prof(gout).
prof(gypson).
prof(joyce).
prof(jaumat).
prof(itmi).
prof(merieux).
prof(marx).
prof(lemonnier).
prof(le_guyader).
prof(milou).
prof(portier).
prof(rennoux).
prof(respondek).
prof(tonnoir).
prof(vercouter).
prof(zakarova).
prof(zanni_merk).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                   Plages                                     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Selon les conseils de M. Le Capitaine, nous avons modifié les plages horaires

/**
 * plage(?Id, -Start, -End)
 *
 * @arg Id      Id de la plage horaire
 * @arg Start   Heure de début de la plage
 * @arg End     Heure de fin de la plage
 */
plage(1, '08h00', '09h30').
plage(2, '09h45', '11h15').
plage(3, '11h30', '13h00').
plage(4, '14h00', '15h30').
plage(5, '15h45', '17h15').
plage(6, '17h30', '19h00').

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                    Jour                                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/**
 * mois(?IdMois).
 *
 * @arg IdMois  Id du mois
 */
mois(1).
mois(2).
mois(3).
mois(4).
mois(5).
mois(6).
mois(7).
mois(8).
mois(9).




/**
* joursParMois(-Nb).
*
* @arg Nb  Nombre de jours par mois
*/
joursParMois(20).

/**
* date(?IdJour, ?IdMois)
*
* @arg IdJour  Id du jour
* @arg IdMois  Id du mois
*/
date(J, M) :-
    mois(M),
    joursParMois(Max),
    between(1, Max, J).

/**
 * dateBefore(+J1, +M1, +J2, +M2)
 *
 * Test si date 1 < date 2
 * @arg J1  Jour date 1
 *
 * @arg M1  Mois date 1
 * @arg J2  Jour date 2
 * @arg M2  Mois date 2
 */
dateBefore( _, M1,  _, M2) :- M1 < M2, !.
dateBefore(J1, M1, J2, M2) :- M1 = M2, J1 < J2, !.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                               Type de cours                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/**
 * typeCours(?Type)
 *
 * @arg Type  Un type de cours
 */
typeCours(cm).
typeCours(td).
typeCours(tp).
typeCours(ds).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                   Salle                                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/**
 * salle(?Nom, ?Effectif, ?Types)
 *
 * @arg Nom         Nom de la salle
 * @arg Effectif    Nombre de place disponibles
 * @arg Types       Listes de types de cours
 **/


salle(ma_h_r1_01, 60, [cm, ds]).
salle(ma_h_r1_03, 60, [cm, ds]).
salle(ma_h_r1_05, 60, [cm, ds]).
salle(ma_h_r1_07, 60, [cm, ds]).
salle(ma_b_rc_17, 50, [td, cm]).
salle(ma_b_rc_01, 50, [td, cm]).
salle(ma_g_rc_01-02-03, 150, [cm, ds]).
salle(ma_i_r1_06, 35, [td]).
salle(ma_i_r1_03, 35, [td]).
salle(ma_i_r1_08, 35, [td]).
salle(ma_e_r1_06, 60, [td, cm]).
salle(ma_e_r1_01, 60, [td, cm]).
salle(ma_f_r1_06, 35, [td]).
salle(ma_f_r1_03, 35, [td]).
salle(ma_f_r1_08, 35, [td]).
salle(ma_g_rC_05, 30, [td]).
salle(ma_g_rC_07, 30, [td]).
salle(ma_c_rC_01, 65, [cm, ds]).

salle(du_rj_01, 40, [td]).
salle(du_rj_03, 40, [td]).
salle(du_rj_05, 40, [td]).
salle(du_rj_07, 40, [td]).
salle(du_rj_09, 40, [td]).
salle(du_rj_11, 40, [td]).
salle(du_rj_13, 40, [td]).
salle(du_rj_15, 40, [td]).
salle(du_rj_02, 100, [cm]).
salle(du_rj_06, 100, [cm]).
salle(du_rj_12, 100, [cm]).

salle(bo_r2_03, 35, [tp]).
salle(bo_r2_05, 35, [tp]).
salle(bo_r2_07, 35, [tp]).

/**
 * salle(?Nom, ?Effectif)
 *
 * @arg Nom         Nom de la salle
 * @arg Effectif    Nombre de place disponibles
 **/
salle(S, N) :- salle(S, N, _). % TODO add tests

/**
 * accueille(+Salle, ?TypeCours)
 *
 * @arg Salle       Nom d'une salle
 * @arg TypeCours   Type de cours que la salle accueille
 */
accueille(S, T) :-
    salle(S, _, L),
    member(T, L).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                  Séances                                     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/*
 * seances(?Nom, ?Mat, ?Prof, ?Type, ?Groupe, ?Ids).
 *
 * Définition de plusieurs séances à la volée
 *
 * @arg Nom     Nom des séances
 * @arg Mat     Id Matière
 * @arg Prof    Id Prof
 * @arg Type    Type de cours
 * @arg Groupe  Id Groupe
 * @arg Ids     Liste d'atomes servant d'ids pour ces séances
 */


% gm3 %

% S5 %

% Analyse numérique 1 %


seances('CM Analyse numérique 1', analyse_numerique_1, zakarova, cm, gm3, [
    cm_ananum1_1, cm_ananum1_2, cm_ananum1_3, cm_ananum1_4, cm_ananum1_5
]).

seances('CM Analyse numérique 1', analyse_numerique_1, zakarova, cm, gm3, [
    cm_ananum1_1, cm_ananum1_2, cm_ananum1_3, cm_ananum1_4, cm_ananum1_5
]).

seances('TD Analyse numérique 1 Groupe 1', analyse_numerique_1, zakarova, td, gm3_1, [
    td_ananum1_1_1, td_ananum1_1_2, td_ananum1_1_3, td_ananum1_1_4, td_ananum1_1_5
]).

seances('TD Analyse numérique 1 Groupe 2', analyse_numerique_1, zakarova, td, gm3_2, [
    td_ananum1_2_1, td_ananum1_2_2, td_ananum1_2_3, td_ananum1_2_4, td_ananum1_2_5
]).

seances('DS Analyse numérique 1', analyse_numerique_1, zakarova, ds, gm3, [
    ds_ananum1
]).


% Mesure et distribution %

seances('CM Mesure et distribution', mesure_distribution, el_assoudi, cm, gm3, [
    cm_mesure_1, cm_mesure_2, cm_mesure_3, cm_mesure_4, cm_mesure_5
]).

seances('TD Mesure et distribution Groupe 1', mesure_distribution, el_assoudi, td, gm3_1, [
    td_mesure_1_1, td_mesure_1_2, td_mesure_1_3, td_mesure_1_4, td_mesure_1_5
]).

seances('TD Mesure et distribution Groupe 2', mesure_distribution, el_assoudi, td, gm3_2, [
    td_mesure_2_1, td_mesure_2_2, td_mesure_2_3, td_mesure_2_4, td_mesure_2_5
]).

seances('DS Mesure et distribution', mesure_distribution, el_assoudi, ds, gm3, [
    ds_mesure
]).


% Fortran %

seances('CM Fortran', mesure_distribution, caputo, cm, gm3, [
    cm_fortran_1, cm_fortran_2, cm_fortran_3, cm_fortran_4, cm_fortran_5
]).

seances('TD Fortran Groupe 1', mesure_distribution, caputo, td, gm3_1, [
    td_fortran_1_1, td_fortran_1_2, td_fortran_1_3, td_fortran_1_4, td_fortran_1_5
]).

seances('TD Fortran Groupe 2', mesure_distribution, caputo, td, gm3_2, [
    td_fortran_2_1, td_fortran_2_2, td_fortran_2_3, td_fortran_2_4, td_fortran_2_5
]).

seances('DS Fortran', mesure_distribution, caputo, ds, gm3, [
    ds_fortran
]).


% Probabilité %

seances('CM Probabilité', probabilite, ciotir, cm, gm3, [
    cm_proba_1, cm_proba_2, cm_proba_3, cm_proba_4, cm_proba_5
]).

seances('TD Probabilité Groupe 1', probabilite, ciotir, td, gm3_1, [
    td_proba_1_1, td_proba_1_2, td_proba_1_3, td_proba_1_4, td_proba_1_5
]).

seances('TD Probabilité Groupe 2', probabilite, ciotir, td, gm3_2, [
    td_proba_2_1, td_proba_2_2, td_proba_2_3, td_proba_2_4, td_proba_2_5
]).

seances('DS Probabilité', probabilite, ciotir, ds, gm3, [
    ds_proba
]).



% Optimisation discrète %

seances('CM Optimisation discrète', optimisation_discrete, beveraggi, cm, gm3, [
    cm_opti_discrete_1, cm_opti_discrete_2, cm_opti_discrete_3, cm_opti_discrete_4, cm_opti_discrete_5
]).

seances('TD Optimisation discrète Groupe 1', optimisation_discrete, beveraggi, td, gm3_1, [
    td_opti_discrete_1_1, td_opti_discrete_1_2, td_opti_discrete_1_3, td_opti_discrete_1_4, td_opti_discrete_1_5
]).

seances('TD Optimisation discrète Groupe 2', optimisation_discrete, beveraggi, td, gm3_2, [
    td_opti_discrete_2_1, td_opti_discrete_2_2, td_opti_discrete_2_3, td_opti_discrete_2_4, td_opti_discrete_2_5
]).

seances('DS Optimisation discrète', optimisation_discrete, beveraggi, ds, gm3, [
    ds_opti_discrete
]).



% Signal 1 %

seances('CM Signal 1', signal_1, fortier, cm, gm3, [
    cm_signal1_1, cm_signal1_2, cm_signal1_3, cm_signal1_4, cm_signal1_5
]).

seances('TD Signal 1 Groupe 1', signal_1, fortier, td, gm3_1, [
    td_signal1_1_1, td_signal1_1_2, td_signal1_1_3, td_signal1_1_4, td_signal1_1_5
]).

seances('TD Signal 1 Groupe 2', signal_1, fortier, td, gm3_2, [
    td_signal1_2_1, td_signal1_2_2, td_signal1_2_3, td_signal1_2_4, td_signal1_2_5
]).

seances('TP Signal 1 Groupe 1', signal_1, fortier, tp, gm3_1, [
    tp_signal1_1_1, tp_signal1_1_2
]).

seances('TP Signal 1 Groupe 2', signal_1, fortier, tp, gm3_2, [
    tp_signal1_2_1, tp_signal1_2_2
]).

seances('DS Signal 1', signal_1, fortier, ds, gm3, [
    ds_signal1
]).


% Langage C %

seances('CM Langage C', c, kotowicz, cm, gm3, [
    cm_C_1, cm_C_2, cm_C_3, cm_C_4, cm_C_5
]).

seances('TD Langage C Groupe 1', c, kotowicz, tp, gm3_1, [
    tp_C_1_1, tp_C_1_2, tp_C_1_3, tp_C_1_4, tp_C_1_5
]).

seances('TD Langage C Groupe 2', c, kotowicz, tp, gm3_2, [
    tp_C_2_1, tp_C_2_2, tp_C_2_3, tp_C_2_4, tp_C_2_5
]).

seances('DS Langage C', c, kotowicz, ds, gm3, [
    ds_C
]).


% Algo %

seances('CM Algo', algo, chaignaud, cm, gm3, [
    cm_algo_1, cm_algo_2, cm_algo_3, cm_algo_4, cm_algo_5
]).

seances('TD Algo Groupe 1', algo, chaignaud, td, gm3_1, [
    td_algo_1_1, td_algo_1_2, td_algo_1_3, td_algo_1_4, td_algo_1_5
]).

seances('TD Algo Groupe 2', algo, chaignaud, td, gm3_2, [
    td_algo_2_1, td_algo_2_2, td_algo_2_3, td_algo_2_4, td_algo_2_5
]).

seances('DS Algo', algo, chaignaud, ds, gm3, [
    ds_algo
]).


% Anglais %

seances('CM Anglais', anglais, milou, cm, gm3, [
    cm_anglais1_1, cm_anglais1_2, cm_anglais1_3, cm_anglais1_4, cm_anglais1_5
]).

seances('TD Anglais Groupe 1', anglais, milou, td, gm3_1, [
    td_anglais1_1_1, td_anglais1_1_2, td_anglais1_1_3, td_anglais1_1_4, td_anglais1_1_5
]).

seances('TD Anglais Groupe 2', anglais, milou, td, gm3_2, [
    td_anglais1_2_1, td_anglais1_2_2, td_anglais1_2_3, td_anglais1_2_4, td_anglais1_2_5
]).

seances('DS Anglais', anglais, milou, ds, gm3, [
    ds_anglais1
]).

% GSF %

seances('TD GSF Groupe 1', gsf, borel, td, gm3_1, [
    td_gsf1_1_1, td_gsf1_1_2, td_gsf1_1_3, td_gsf1_1_4, td_gsf1_1_5
]).

seances('TD GSF Groupe 2', gsf, borel, td, gm3_2, [
    td_gsf1_2_1, td_gsf1_2_2, td_gsf1_2_3, td_gsf1_2_4, td_gsf1_2_5
]).

seances('DS GSF', gsf, borel, ds, gm3, [
    ds_gsf1
]).


% Sport %

seances('CM Sport', sport, dubois, cm, gm3, [
    cm_sport1_1, cm_sport1_2, cm_sport1_3, cm_sport1_4, cm_sport1_5
]).

% S6 %

% Analyse numérique 2 %

seances('CM Analyse numérique 2', analyse_numerique_2, forcadel, cm, gm3, [
    cm_ananum2_1, cm_ananum2_2, cm_ananum2_3, cm_ananum2_4, cm_ananum2_5
]).

seances('CM Analyse numérique 2', analyse_numerique_2, forcadel, cm, gm3, [
    cm_ananum2_1, cm_ananum2_2, cm_ananum2_3, cm_ananum2_4, cm_ananum2_5
]).

seances('TD Analyse numérique 2 Groupe 1', analyse_numerique_2, forcadel, td, gm3_1, [
    td_ananum2_1_1, td_ananum2_1_2, td_ananum2_1_3, td_ananum2_1_4, td_ananum2_1_5
]).

seances('TD Analyse numérique 2 Groupe 2', analyse_numerique_2, forcadel, td, gm3_2, [
    td_ananum2_2_1, td_ananum2_2_2, td_ananum2_2_3, td_ananum2_2_4, td_ananum2_2_5
]).

seances('TP Analyse numérique 2 Groupe 1', analyse_numerique_2, forcadel, tp, gm3_1, [
    tp_ananum2_1_1, tp_ananum2_1_2
]).

seances('TP Analyse numérique 2 Groupe 2', analyse_numerique_2, forcadel, tp, gm3_2, [
    tp_ananum2_2_1, tp_ananum2_2_2
]).

seances('DS Analyse numérique 2', analyse_numerique_2, forcadel, ds, gm3, [
    ds_ananum2
]).

% Analyse fonctionnelle %

seances('CM Analyse fonctionnelle', analyse_fonctionnelle, zakarova, cm, gm3, [
    cm_anafonc_1, cm_anafonc_2, cm_anafonc_3, cm_anafonc_4, cm_anafonc_5
]).

seances('TD Analyse fonctionnelle Groupe 1', analyse_fonctionnelle, zakarova, td, gm3_1, [
    td_anafonc_1_1, td_anafonc_1_2, td_anafonc_1_3, td_anafonc_1_4, td_anafonc_1_5
]).

seances('TD Analyse fonctionnelle Groupe 2', analyse_fonctionnelle, zakarova, td, gm3_2, [
    td_anafonc_2_1, td_anafonc_2_2, td_anafonc_2_3, td_anafonc_2_4, td_anafonc_2_5
]).

seances('DS Analyse fonctionnelle', analyse_fonctionnelle, zakarova, ds, gm3, [
    ds_anafonc
]).

% Algorithmique numérique et arithmétique %

seances('CM Algorithmique numérique et arithmétique', algo_num_arith, gleyse, cm, gm3, [
    cm_algo_num_arith_1, cm_algo_num_arith_2, cm_algo_num_arith_3, cm_algo_num_arith_4, cm_algo_num_arith_5
]).

seances('TD Algorithmique numérique et arithmétique Groupe 1', algo_num_arith, gleyse, td, gm3_1, [
    td_algo_num_arith_1_1, td_algo_num_arith_1_2, td_algo_num_arith_1_3, td_algo_num_arith_1_4, td_algo_num_arith_1_5
]).

seances('TD Algorithmique numérique et arithmétique Groupe 2', algo_num_arith, gleyse, td, gm3_2, [
    td_algo_num_arith_2_1, td_algo_num_arith_2_2, td_algo_num_arith_2_3, td_algo_num_arith_2_4, td_algo_num_arith_2_5
]).

seances('DS Algorithmique numérique et arithmétique', algo_num_arith, gleyse, ds, gm3, [
    ds_algo_num_arith
]).



% Statistiques 1 %

seances('CM Statistiques 1', statistiques1, el_machkouri, cm, gm3, [
    cm_stat1_1, cm_stat1_2, cm_stat1_3, cm_stat1_4, cm_stat1_5
]).

seances('TD Statistiques 1 Groupe 1', statistiques1, el_machkouri, td, gm3_1, [
    td_stat1_1_1, td_stat1_1_2, td_stat1_1_3, td_stat1_1_4, td_stat1_1_5
]).

seances('TD Statistiques 1 Groupe 2', statistiques1, el_machkouri, td, gm3_2, [
    td_stat1_2_1, td_stat1_2_2, td_stat1_2_3, td_stat1_2_4, td_stat1_2_5
]).

seances('DS Statistiques 1', statistiques1, el_machkouri, ds, gm3, [
    ds_stat1
]).


% Equation différentiel %

seances('CM Equation différentiel', equa_diff, respondek, cm, gm3, [
    cm_equadiff_1, cm_equadiff_2, cm_equadiff_3, cm_equadiff_4, cm_equadiff_5
]).

seances('TD Equation différentiel Groupe 1', equa_diff, respondek, td, gm3_1, [
    td_equadiff_1_1, td_equadiff_1_2, td_equadiff_1_3, td_equadiff_1_4, td_equadiff_1_5
]).

seances('TD Equation différentiel Groupe 2', equa_diff, respondek, td, gm3_2, [
    td_equadiff_2_1, td_equadiff_2_2, td_equadiff_2_3, td_equadiff_2_4, td_equadiff_2_5
]).

seances('DS Equation différentiel', equa_diff, respondek, ds, gm3, [
    ds_equadiff
]).

% Système dexploitation %

seances('CM Système dexploitation', syst_exploitation, jaumat, cm, gm3, [
    cm_systexploit_1, cm_systexploit_2, cm_systexploit_3, cm_systexploit_4, cm_systexploit_5
]).

seances('TP Système dexploitation Groupe 1', syst_exploitation, jaumat, td, gm3_1, [
    tp_systexploit_1_1, tp_systexploit_1_2, tp_systexploit_1_3, tp_systexploit_1_4, tp_systexploit_1_5
]).

seances('TP Système dexploitation Groupe 2', syst_exploitation, jaumat, td, gm3_2, [
    tp_systexploit_2_1, tp_systexploit_2_2, tp_systexploit_2_3, tp_systexploit_2_4, tp_systexploit_2_5
]).

seances('DS Système dexploitation objet', syst_exploitation, jaumat, ds, gm3, [
    ds_systexploit
]).

% gm5 %

% S9 %

%% REGRESSION NON LINEAIRE %%

 seances('CM regression non linéaire', regression_non_lineaire, portier , cm, gm5, [
     cm_regression_non_lineaire_1, cm_regression_non_lineaire_2, cm_regression_non_lineaire_3, cm_regression_non_lineaire_4,
     cm_regression_non_lineaire_5
 ]).

 seances('TP regression non linéaire groupe 1', regression_non_lineaire, portier, tp, gm5_1, [
     tp_regression_non_lineaire_1_1, tp_regression_non_lineaire_1_2, tp_regression_non_lineaire_1_3, tp_regression_non_lineaire_1_4,
     tp_regression_non_lineaire_1_5
 ]).

 seances('TP regression non linéaire groupe 2', regression_non_lineaire, portier, tp, gm5_2, [
     tp_regression_non_lineaire_2_1, tp_regression_non_lineaire_2_2, tp_regression_non_lineaire_2_3, tp_regression_non_lineaire_2_4,
     tp_regression_non_lineaire_2_5
 ]).


 % HAD %%

  seances('CM heuristique et aide à la décision', had, itmi , cm, gm5, [
      cm_had_1, cm_had_2, cm_had_3, cm_had_4,
      cm_had_5
  ]).

  seances('TD heuristique et aide à la décision groupe 1', had, itmi, td, gm5_1, [
      td_had_1_1, td_had_1_2, td_had_1_3, td_had_1_4,
      td_had_1_5
  ]).

  seances('TD heuristique et aide à la décision groupe 2', had, itmi, td, gm5_2, [
      td_had_2_1, td_had_2_2, td_had_2_3, td_had_2_4,
      td_had_2_5
  ]).



  % HAMILTON JACOBI %%

   seances('CM Hamilton Jacobi', hamilton_jacobi, forcadel , cm, gm5, [
       cm_hamilton_jacobi_1, cm_hamilton_jacobi_2, cm_hamilton_jacobi_3, cm_hamilton_jacobi_4,
       cm_hamilton_jacobi_5
   ]).

   seances('TD Hamilton Jacobi groupe 1', hamilton_jacobi, forcadel, td, gm5_1, [
       td_hamilton_jacobi_1_1, td_hamilton_jacobi_1_2, td_hamilton_jacobi_1_3, td_hamilton_jacobi_1_4,
       td_hamilton_jacobi_1_5
   ]).

   seances('TD Hamilton Jacobi groupe 2', hamilton_jacobi, forcadel, td, gm5_2, [
       td_hamilton_jacobi_2_1, td_hamilton_jacobi_2_2, td_hamilton_jacobi_2_3, td_hamilton_jacobi_2_4,
       td_hamilton_jacobi_2_5
   ]).



   % AUTOMATIQUE NON LINEAIRE %%

    seances('CM automatique non linéaire', auto_non_lineaire, el_assoudi , cm, gm5, [
        cm_auto_non_lineaire_1, cm_auto_non_lineaire_2, cm_auto_non_lineaire_3, cm_auto_non_lineaire_4,
        cm_auto_non_lineaire_5
    ]).

    seances('TD automatique non linéaire groupe 1', auto_non_lineaire, el_assoudi, td, gm5_1, [
        td_auto_non_lineaire_1_1, td_auto_non_lineaire_1_2, td_auto_non_lineaire_1_3, td_auto_non_lineaire_1_4,
        td_auto_non_lineaire_1_5
    ]).

    seances('TD automatique non linéaire groupe 2', auto_non_lineaire, el_assoudi, td, gm5_2, [
        td_auto_non_lineaire_2_1, td_auto_non_lineaire_2_2, td_auto_non_lineaire_2_3, td_auto_non_lineaire_2_4,
        td_auto_non_lineaire_2_5
    ]).

    seances('DS automatique non linéaire', auto_non_lineaire, el_assoudi, ds, gm5, [
        ds_auto_non_lineaire
    ]).

    % CALCUL PARALLELLE %%

     seances('CM calcul parallèle', calcul_parallelle, le_guyader , cm, gm5, [
         cm_calcul_parallelle_1, cm_calcul_parallelle_2, cm_calcul_parallelle_3, cm_calcul_parallelle_4,
         cm_calcul_parallelle_5
     ]).

     seances('TD calcul parallèle groupe 1', calcul_parallelle, le_guyader, td, gm5_1, [
         td_calcul_parallelle_1_1, td_calcul_parallelle_1_2, td_calcul_parallelle_1_3, td_calcul_parallelle_1_4,
         td_calcul_parallelle_1_5
     ]).

     seances('TD calcul parallèle groupe 2', calcul_parallelle, le_guyader, td, gm5_2, [
         td_calcul_parallelle_2_1, td_calcul_parallelle_2_2, td_calcul_parallelle_2_3, td_calcul_parallelle_2_4,
         td_calcul_parallelle_2_5
     ]).



     % PROGRAMMATION LOGIQUE CONTRAINTE %%

      seances('CM programmation_logique_contrainte', programmation_logique_contrainte, abdulrab , cm, gm5, [
          cm_programmation_logique_contrainte_1, cm_programmation_logique_contrainte_2, cm_programmation_logique_contrainte_3, cm_programmation_logique_contrainte_4,
          cm_programmation_logique_contrainte_5
      ]).

      seances('TD programmation_logique_contrainte groupe 1', programmation_logique_contrainte, abdulrab, td, gm5_1, [
          td_programmation_logique_contrainte_1_1, td_programmation_logique_contrainte_1_2, td_programmation_logique_contrainte_1_3, td_programmation_logique_contrainte_1_4,
          td_programmation_logique_contrainte_1_5
      ]).

      seances('td programmation_logique_contrainte groupe 2', programmation_logique_contrainte, abdulrab, td, gm5_2, [
          td_programmation_logique_contrainte_2_1, td_programmation_logique_contrainte_2_2, td_programmation_logique_contrainte_2_3, td_programmation_logique_contrainte_2_4,
          td_programmation_logique_contrainte_2_5
      ]).

      seances('DS programmation_logique_contrainte', programmation_logique_contrainte, abdulrab, ds, gm5, [
          ds_programmation_logique_contrainte
      ]).

% s10 %

      % MACHINE LEARNING %%

  seances('CM machine_learning', machine_learning, zanni_merk , cm, gm5, [
      cm_machine_learning_1, cm_machine_learning_2, cm_machine_learning_3, cm_machine_learning_4,
      cm_machine_learning_5
  ]).

  seances('TD machine learning groupe1', machine_learning, zanni_merk, td, gm5_1, [
      td_machine_learning_1_1, td_machine_learning_1_2, td_machine_learning_1_3, td_machine_learning_1_4,
      td_machine_learning_1_5
  ]).

  seances('TD machine learning groupe2', machine_learning, zanni_merk, td, gm5_2, [
      td_machine_learning_2_1, td_machine_learning_2_2, td_machine_learning_2_3, td_machine_learning_2_4,
      td_machine_learning_2_5
  ]).

  % TRAITEMENT IMAGE %%

   seances('CM traitement image', traitement_image, zanni_merk , cm, gm5, [
       cm_traitement_image_1, cm_traitement_image_2, cm_traitement_image_3, cm_traitement_image_4,
       cm_traitement_image_5
   ]).

   seances('TD traitement image groupe1', traitement_image, zanni_merk, td, gm5_1, [
       td_traitement_image_1_1, td_traitement_image_1_2, td_traitement_image_1_3, td_traitement_image_1_4,
       td_traitement_image_1_5
   ]).

   seances('TD traitement image groupe2', traitement_image, zanni_merk, td, gm5_2, [
       td_traitement_image_2_1, td_traitement_image_2_2, td_traitement_image_2_3, td_traitement_image_2_4,
       td_traitement_image_2_5
   ]).


   % CALCUL STOCHASTIQUE %%

    seances('CM calcul sto', calcul_sto, ciotir , cm, gm5, [
        cm_calcul_sto_1, cm_calcul_sto_2, cm_calcul_sto_3, cm_calcul_sto_4,
        cm_calcul_sto_5
    ]).

    seances('TD calcul sto groupe1', calcul_sto, ciotir, td, gm5_1, [
        td_calcul_sto_1_1, td_calcul_sto_1_2, td_calcul_sto_1_3, td_calcul_sto_1_4,
        td_calcul_sto_1_5
    ]).

    seances('TD calcul sto groupe2', calcul_sto, ciotir, td, gm5_2, [
        td_calcul_sto_2_1, td_calcul_sto_2_2, td_calcul_sto_2_3, td_calcul_sto_2_4,
        td_calcul_sto_2_5
    ]).


    % REALITE VIRTUELLE %%

     seances('CM realite virtuelle', realite_virtuelle, saunier , cm, gm5, [
         cm_realite_virtuelle_1, cm_realite_virtuelle_2, cm_realite_virtuelle_3, cm_realite_virtuelle_4,
         cm_realite_virtuelle_5
     ]).

     seances('TD realite virtuelle groupe1', realite_virtuelle, saunier, td, gm5_1, [
         td_realite_virtuelle_1_1, td_realite_virtuelle_1_2, td_realite_virtuelle_1_3, td_realite_virtuelle_1_4,
         td_realite_virtuelle_1_5
     ]).

     seances('TD realite virtuelle groupe2', realite_virtuelle, saunier, td, gm5_2, [
         td_realite_virtuelle_2_1, td_realite_virtuelle_2_2, td_realite_virtuelle_2_3, td_realite_virtuelle_2_4,
         td_realite_virtuelle_2_5
     ]).





/**
 * seance(?Id, ?TypeCours, ?Matiere, ?Nom)
 *
 * @arg Id          Id de la séance
 * @arg TypeCours   Type de cours de la séance
 * @arg Matiere     Matiere à laquelle la séance appartient
 * @arg Nom         Nom de la séance
*/
:- dynamic seance/4.

/**
 * groupeSeance(?Groupe, ?Seance)
 *
 * Définit la participation d'un groupe à une séance
 *
 * @arg Groupe      Nom du groupe
 * @arg Seance      Id de la séance
 */
:- dynamic groupeSeance/2.

/**
 * profSeance(?Prof, ?Seance)
 *
 * Définit la participation d'un enseignant à une séance
 *
 * @arg Prof        Nom de l'enseignant
 * @arg Seance      Id de la séance
 */
:- dynamic profSeance/2.

/**
 * suitSeance(+Seance_suivante, ?Seance_suivie)
 *
 * On remarque que le prédicat nous permet également d'implémenter la relation
 * de suite entre les matière (dernière séance matière 1 - première séance
 * matière 2)
 *
 * @arg Seance_suivante     Id de la séance qui suit
 * @arg Seance_suivie       Id de la séance suivit
 */

 /**
 * suitSeance(?Seance_suivante, ?Seance_suivie, ?tempsMin, ?tempsMax)
 *
 * @arg Seance_suivante     Id de la séance qui suit
 * @arg Seance_suivie       Id de la séance suivit
 * @arg tempsMin            Nombre de jours min avant la prochaine séance
 * @arg tempsMax            Nombre de jours max avant la prochaine séance
 */

:- dynamic suitSeance/2.
:- dynamic suitSeance/4.

%
%suitSeance GM3%
%
suitSeance(cm_ananum2_1, cm_ananum1_5, 28, 35).
suitSeance(cm_anafonc_1, cm_ananum1_5, 28, 35).
suitSeance(cm_algo_num_arith_1, cm_ananum1_5, 28, 35).
suitSeance(cm_stat1_1, cm_ananum1_5, 28, 35).
suitSeance(cm_equadiff_1, cm_ananum1_5, 28, 35).
suitSeance(cm_systexploit_1, cm_ananum1_5, 28, 35).

suitSeance(cm_ananum2_1, cm_fortran_5, 28, 35).
suitSeance(cm_anafonc_1, cm_fortran_5, 28, 35).
suitSeance(cm_algo_num_arith_1, cm_fortran_5, 28, 35).
suitSeance(cm_stat1_1, cm_fortran_5, 28, 35).
suitSeance(cm_equadiff_1, cm_fortran_5, 28, 35).
suitSeance(cm_systexploit_1, cm_fortran_5, 28, 35).

suitSeance(cm_ananum2_1, cm_mesure_5, 28, 35).
suitSeance(cm_anafonc_1, cm_mesure_5, 28, 35).
suitSeance(cm_algo_num_arith_1, cm_mesure_5, 28, 35).
suitSeance(cm_stat1_1, cm_mesure_5, 28, 35).
suitSeance(cm_equadiff_1, cm_mesure_5, 28, 35).
suitSeance(cm_systexploit_1, cm_mesure_5, 28, 35).

suitSeance(cm_ananum2_1, cm_proba_5, 28, 35).
suitSeance(cm_anafonc_1, cm_proba_5, 28, 35).
suitSeance(cm_algo_num_arith_1, cm_proba_5, 28, 35).
suitSeance(cm_stat1_1, cm_proba_5, 28, 35).
suitSeance(cm_equadiff_1, cm_proba_5, 28, 35).
suitSeance(cm_systexploit_1, cm_proba_5, 28, 35).

suitSeance(cm_ananum2_1, cm_signal1_5, 28, 35).
suitSeance(cm_anafonc_1, cm_signal1_5, 28, 35).
suitSeance(cm_algo_num_arith_1, cm_signal1_5, 28, 35).
suitSeance(cm_stat1_1, cm_signal1_5, 28, 35).
suitSeance(cm_equadiff_1, cm_signal1_5, 28, 35).
suitSeance(cm_systexploit_1, cm_signal1_5, 28, 35).

suitSeance(cm_ananum2_1, cm_opti_discrete_5, 28, 35).
suitSeance(cm_anafonc_1, cm_opti_discrete_5, 28, 35).
suitSeance(cm_algo_num_arith_1, cm_opti_discrete_5, 28, 35).
suitSeance(cm_stat1_1, cm_opti_discrete_5, 28, 35).
suitSeance(cm_equadiff_1, cm_opti_discrete_5, 28, 35).
suitSeance(cm_systexploit_1, cm_opti_discrete_5, 28, 35).

suitSeance(cm_ananum2_1, cm_C_5, 28, 35).
suitSeance(cm_anafonc_1, cm_C_5, 28, 35).
suitSeance(cm_algo_num_arith_1, cm_C_5, 28, 35).
suitSeance(cm_stat1_1, cm_C_5, 28, 35).
suitSeance(cm_equadiff_1, cm_C_5, 28, 35).
suitSeance(cm_systexploit_1, cm_C_5, 28, 35).

suitSeance(cm_ananum2_1, cm_algo_5, 28, 35).
suitSeance(cm_anafonc_1, cm_algo_5, 28, 35).
suitSeance(cm_algo_num_arith_1, cm_algo_5, 28, 35).
suitSeance(cm_stat1_1, cm_algo_5, 28, 35).
suitSeance(cm_equadiff_1, cm_algo_5, 28, 35).
suitSeance(cm_systexploit_1, cm_algo_5, 28, 35).

%DS GM3 suitSeance%
suitSeance(ds_ananum1, td_ananum1_2_5, 7, 14).
suitSeance(ds_ananum1, td_ananum1_1_5, 7, 14).
suitSeance(ds_fortran, td_fortran_1_5, 7, 14).
suitSeance(ds_fortran, td_fortran_2_5, 7, 14).
suitSeance(ds_mesure, td_mesure_2_5, 7, 14).
suitSeance(ds_mesure, td_mesure_1_5, 7, 14).
suitSeance(ds_proba, td_proba_1_5, 7, 14).
suitSeance(ds_proba, td_proba_2_5, 7, 14).
suitSeance(ds_signal1, td_signal1_2_5, 7, 14).
suitSeance(ds_signal1, td_signal1_1_5, 7, 14).
suitSeance(ds_opti_discrete, td_opti_discrete_2_5, 7, 14).
suitSeance(ds_opti_discrete, td_opti_discrete_1_5, 7, 14).
suitSeance(ds_C, tp_C_1_5, 7, 14).
suitSeance(ds_C, tp_C_2_5, 7, 14).
suitSeance(ds_algo, td_algo_2_5, 7, 14).
suitSeance(ds_algo, td_algo_1_5, 7, 14).

suitSeance(ds_anafonc, td_anafonc_2_5, 7, 14).
suitSeance(ds_anafonc, td_anafonc_1_5, 7, 14).
suitSeance(ds_ananum2, td_ananum2_2_5, 7, 14).
suitSeance(ds_ananum2, td_ananum2_1_5, 7, 14).
suitSeance(ds_equadiff, td_equadiff_2_5, 7, 14).
suitSeance(ds_equadiff, td_equadiff_1_5, 7, 14).
suitSeance(ds_systexploit, tp_systexploit_2_5, 7, 14).
suitSeance(ds_systexploit, tp_systexploit_1_5, 7, 14).
suitSeance(ds_algo_num_arith, td_algo_num_arith_2_5, 7, 14).
suitSeance(ds_algo_num_arith, td_algo_num_arith_1_5, 7, 14).
suitSeance(ds_stat1, td_stat1_2_5, 7, 14).
suitSeance(ds_stat1, td_stat1_1_5, 7, 14).


%ananum2 GM3 S6%
suitSeance(cm_ananum2_2, cm_ananum2_1, 1, 10).
suitSeance(cm_ananum2_3, cm_ananum2_2, 1, 10).
suitSeance(cm_ananum2_4, cm_ananum2_3, 1, 10).
suitSeance(cm_ananum2_5, cm_ananum2_4, 1, 10).

suitSeance(td_ananum2_1_1, cm_ananum2_1, 1, 10).
suitSeance(td_ananum2_1_2, cm_ananum2_2, 1, 10).
suitSeance(td_ananum2_1_3, cm_ananum2_3, 1, 10).
suitSeance(td_ananum2_1_4, cm_ananum2_4, 1, 10).
suitSeance(td_ananum2_1_5, cm_ananum2_5, 1, 10).

suitSeance(td_ananum2_2_1, cm_ananum2_1, 1, 10).
suitSeance(td_ananum2_2_2, cm_ananum2_2, 1, 10).
suitSeance(td_ananum2_2_3, cm_ananum2_3, 1, 10).
suitSeance(td_ananum2_2_4, cm_ananum2_4, 1, 10).
suitSeance(td_ananum2_2_5, cm_ananum2_5, 1, 10).

%anafonc2 GM3 S6%
suitSeance(cm_anafonc_2, cm_anafonc_1, 1, 10).
suitSeance(cm_anafonc_3, cm_anafonc_2, 1, 10).
suitSeance(cm_anafonc_4, cm_anafonc_3, 1, 10).
suitSeance(cm_anafonc_5, cm_anafonc_4, 1, 10).

suitSeance(td_anafonc_1_1, cm_anafonc_1, 1, 10).
suitSeance(td_anafonc_1_2, cm_anafonc_2, 1, 10).
suitSeance(td_anafonc_1_3, cm_anafonc_3, 1, 10).
suitSeance(td_anafonc_1_4, cm_anafonc_4, 1, 10).
suitSeance(td_anafonc_1_5, cm_anafonc_5, 1, 10).

suitSeance(td_anafonc_2_1, cm_anafonc_1, 1, 10).
suitSeance(td_anafonc_2_2, cm_anafonc_2, 1, 10).
suitSeance(td_anafonc_2_3, cm_anafonc_3, 1, 10).
suitSeance(td_anafonc_2_4, cm_anafonc_4, 1, 10).
suitSeance(td_anafonc_2_5, cm_anafonc_5, 1, 10).

%algo_num_arith GM3 S6%

suitSeance(cm_algo_num_arith_2, cm_algo_num_arith_1).
suitSeance(cm_algo_num_arith_3, cm_algo_num_arith_2).
suitSeance(cm_algo_num_arith_4, cm_algo_num_arith_3).
suitSeance(cm_algo_num_arith_5, cm_algo_num_arith_4).

suitSeance(td_algo_num_arith_1_1, cm_algo_num_arith_1).
suitSeance(td_algo_num_arith_1_2, cm_algo_num_arith_2).
suitSeance(td_algo_num_arith_1_3, cm_algo_num_arith_3).
suitSeance(td_algo_num_arith_1_4, cm_algo_num_arith_4).
suitSeance(td_algo_num_arith_1_5, cm_algo_num_arith_5).

suitSeance(td_algo_num_arith_2_1, cm_algo_num_arith_1).
suitSeance(td_algo_num_arith_2_2, cm_algo_num_arith_2).
suitSeance(td_algo_num_arith_2_3, cm_algo_num_arith_3).
suitSeance(td_algo_num_arith_2_4, cm_algo_num_arith_4).
suitSeance(td_algo_num_arith_2_5, cm_algo_num_arith_5).

%statistiques1 GM3 S6%

suitSeance(cm_stat1_2, cm_stat1_1).
suitSeance(cm_stat1_3, cm_stat1_2).
suitSeance(cm_stat1_4, cm_stat1_3).
suitSeance(cm_stat1_5, cm_stat1_4).

suitSeance(td_stat1_1_1, cm_stat1_1).
suitSeance(td_stat1_1_2, cm_stat1_2).
suitSeance(td_stat1_1_3, cm_stat1_3).
suitSeance(td_stat1_1_4, cm_stat1_4).
suitSeance(td_stat1_1_5, cm_stat1_5).

suitSeance(td_stat1_2_1, cm_stat1_1).
suitSeance(td_stat1_2_2, cm_stat1_2).
suitSeance(td_stat1_2_3, cm_stat1_3).
suitSeance(td_stat1_2_4, cm_stat1_4).
suitSeance(td_stat1_2_5, cm_stat1_5).

%equa_diff GM3 S6%

suitSeance(cm_equadiff_2, cm_equadiff_1).
suitSeance(cm_equadiff_3, cm_equadiff_2).
suitSeance(cm_equadiff_4, cm_equadiff_3).
suitSeance(cm_equadiff_5, cm_equadiff_4).

suitSeance(td_equadiff_1_1, cm_equadiff_1).
suitSeance(td_equadiff_1_2, cm_equadiff_2).
suitSeance(td_equadiff_1_3, cm_equadiff_3).
suitSeance(td_equadiff_1_4, cm_equadiff_4).
suitSeance(td_equadiff_1_5, cm_equadiff_5).

suitSeance(td_equadiff_2_1, cm_equadiff_1).
suitSeance(td_equadiff_2_2, cm_equadiff_2).
suitSeance(td_equadiff_2_3, cm_equadiff_3).
suitSeance(td_equadiff_2_4, cm_equadiff_4).
suitSeance(td_equadiff_2_5, cm_equadiff_5).

%syst_exploitation GM3 S6%
suitSeance(cm_systexploit_2, cm_systexploit_1).
suitSeance(cm_systexploit_3, cm_systexploit_2).
suitSeance(cm_systexploit_4, cm_systexploit_3).
suitSeance(cm_systexploit_5, cm_systexploit_4).

suitSeance(tp_systexploit_1_1, cm_systexploit_1).
suitSeance(tp_systexploit_1_2, cm_systexploit_2).
suitSeance(tp_systexploit_1_3, cm_systexploit_3).
suitSeance(tp_systexploit_1_4, cm_systexploit_4).
suitSeance(tp_systexploit_1_5, cm_systexploit_5).

suitSeance(tp_systexploit_2_1, cm_systexploit_1).
suitSeance(tp_systexploit_2_2, cm_systexploit_2).
suitSeance(tp_systexploit_2_3, cm_systexploit_3).
suitSeance(tp_systexploit_2_4, cm_systexploit_4).
suitSeance(tp_systexploit_2_5, cm_systexploit_5).


%
%suitSeance GM5%
%

%regression_non_lineaire GM5 S9%
suitSeance(cm_regression_non_lineaire_2, cm_regression_non_lineaire_1).
suitSeance(cm_regression_non_lineaire_3, cm_regression_non_lineaire_2).
suitSeance(cm_regression_non_lineaire_4, cm_regression_non_lineaire_3).
suitSeance(cm_regression_non_lineaire_5, cm_regression_non_lineaire_4).

suitSeance(tp_regression_non_lineaire_1_1, cm_regression_non_lineaire_1).
suitSeance(tp_regression_non_lineaire_1_2, cm_regression_non_lineaire_2).
suitSeance(tp_regression_non_lineaire_1_3, cm_regression_non_lineaire_3).
suitSeance(tp_regression_non_lineaire_1_4, cm_regression_non_lineaire_4).
suitSeance(tp_regression_non_lineaire_1_5, cm_regression_non_lineaire_5).

suitSeance(tp_regression_non_lineaire_2_1, cm_regression_non_lineaire_1).
suitSeance(tp_regression_non_lineaire_2_2, cm_regression_non_lineaire_2).
suitSeance(tp_regression_non_lineaire_2_3, cm_regression_non_lineaire_3).
suitSeance(tp_regression_non_lineaire_2_4, cm_regression_non_lineaire_4).
suitSeance(tp_regression_non_lineaire_2_5, cm_regression_non_lineaire_5).

%had GM5 S9%
suitSeance(cm_had_2, cm_had_1).
suitSeance(cm_had_3, cm_had_2).
suitSeance(cm_had_4, cm_had_3).
suitSeance(cm_had_5, cm_had_4).

suitSeance(td_had_1_1, cm_had_1).
suitSeance(td_had_1_2, cm_had_2).
suitSeance(td_had_1_3, cm_had_3).
suitSeance(td_had_1_4, cm_had_4).
suitSeance(td_had_1_5, cm_had_5).

suitSeance(td_had_2_1, cm_had_1).
suitSeance(td_had_2_2, cm_had_2).
suitSeance(td_had_2_3, cm_had_3).
suitSeance(td_had_2_4, cm_had_4).
suitSeance(td_had_2_5, cm_had_5).

%hamilton_jacobi GM5 S9%
suitSeance(cm_hamilton_jacobi_2, cm_hamilton_jacobi_1).
suitSeance(cm_hamilton_jacobi_3, cm_hamilton_jacobi_2).
suitSeance(cm_hamilton_jacobi_4, cm_hamilton_jacobi_3).
suitSeance(cm_hamilton_jacobi_5, cm_hamilton_jacobi_4).

suitSeance(td_hamilton_jacobi_1_1, cm_hamilton_jacobi_1).
suitSeance(td_hamilton_jacobi_1_2, cm_hamilton_jacobi_2).
suitSeance(td_hamilton_jacobi_1_3, cm_hamilton_jacobi_3).
suitSeance(td_hamilton_jacobi_1_4, cm_hamilton_jacobi_4).
suitSeance(td_hamilton_jacobi_1_5, cm_hamilton_jacobi_5).

suitSeance(td_hamilton_jacobi_2_1, cm_hamilton_jacobi_1).
suitSeance(td_hamilton_jacobi_2_2, cm_hamilton_jacobi_2).
suitSeance(td_hamilton_jacobi_2_3, cm_hamilton_jacobi_3).
suitSeance(td_hamilton_jacobi_2_4, cm_hamilton_jacobi_4).
suitSeance(td_hamilton_jacobi_2_5, cm_hamilton_jacobi_5).

%auto_non_lineaire GM5 S9%
suitSeance(cm_auto_non_lineaire_2, cm_auto_non_lineaire_1).
suitSeance(cm_auto_non_lineaire_3, cm_auto_non_lineaire_2).
suitSeance(cm_auto_non_lineaire_4, cm_auto_non_lineaire_3).
suitSeance(cm_auto_non_lineaire_5, cm_auto_non_lineaire_4).

suitSeance(td_auto_non_lineaire_1_1, cm_auto_non_lineaire_1).
suitSeance(td_auto_non_lineaire_1_2, cm_auto_non_lineaire_2).
suitSeance(td_auto_non_lineaire_1_3, cm_auto_non_lineaire_3).
suitSeance(td_auto_non_lineaire_1_4, cm_auto_non_lineaire_4).
suitSeance(td_auto_non_lineaire_1_5, cm_auto_non_lineaire_5).

suitSeance(td_auto_non_lineaire_2_1, cm_auto_non_lineaire_1).
suitSeance(td_auto_non_lineaire_2_2, cm_auto_non_lineaire_2).
suitSeance(td_auto_non_lineaire_2_3, cm_auto_non_lineaire_3).
suitSeance(td_auto_non_lineaire_2_4, cm_auto_non_lineaire_4).
suitSeance(td_auto_non_lineaire_2_5, cm_auto_non_lineaire_5).

%calcul_parallelle GM5 S9%
suitSeance(cm_calcul_parallelle_2, cm_calcul_parallelle_1).
suitSeance(cm_calcul_parallelle_3, cm_calcul_parallelle_2).
suitSeance(cm_calcul_parallelle_4, cm_calcul_parallelle_3).
suitSeance(cm_calcul_parallelle_5, cm_calcul_parallelle_4).

suitSeance(td_calcul_parallelle_1_1, cm_calcul_parallelle_1).
suitSeance(td_calcul_parallelle_1_2, cm_calcul_parallelle_2).
suitSeance(td_calcul_parallelle_1_3, cm_calcul_parallelle_3).
suitSeance(td_calcul_parallelle_1_4, cm_calcul_parallelle_4).
suitSeance(td_calcul_parallelle_1_5, cm_calcul_parallelle_5).

suitSeance(td_calcul_parallelle_2_1, cm_calcul_parallelle_1).
suitSeance(td_calcul_parallelle_2_2, cm_calcul_parallelle_2).
suitSeance(td_calcul_parallelle_2_3, cm_calcul_parallelle_3).
suitSeance(td_calcul_parallelle_2_4, cm_calcul_parallelle_4).
suitSeance(td_calcul_parallelle_2_5, cm_calcul_parallelle_5).

%programmation_logique_contrainte GM5 S9%
suitSeance(cm_programmation_logique_contrainte_2, cm_programmation_logique_contrainte_1).
suitSeance(cm_programmation_logique_contrainte_3, cm_programmation_logique_contrainte_2).
suitSeance(cm_programmation_logique_contrainte_4, cm_programmation_logique_contrainte_3).
suitSeance(cm_programmation_logique_contrainte_5, cm_programmation_logique_contrainte_4).

suitSeance(td_programmation_logique_contrainte_1_1, cm_programmation_logique_contrainte_1).
suitSeance(td_programmation_logique_contrainte_1_2, cm_programmation_logique_contrainte_2).
suitSeance(td_programmation_logique_contrainte_1_3, cm_programmation_logique_contrainte_3).
suitSeance(td_programmation_logique_contrainte_1_4, cm_programmation_logique_contrainte_4).
suitSeance(td_programmation_logique_contrainte_1_5, cm_programmation_logique_contrainte_5).

suitSeance(td_programmation_logique_contrainte_2_1, cm_programmation_logique_contrainte_1).
suitSeance(td_programmation_logique_contrainte_2_2, cm_programmation_logique_contrainte_2).
suitSeance(td_programmation_logique_contrainte_2_3, cm_programmation_logique_contrainte_3).
suitSeance(td_programmation_logique_contrainte_2_4, cm_programmation_logique_contrainte_4).
suitSeance(td_programmation_logique_contrainte_2_5, cm_programmation_logique_contrainte_5).

%machine_learning GM5 S10%
suitSeance(cm_machine_learning_2, cm_machine_learning_1).
suitSeance(cm_machine_learning_3, cm_machine_learning_2).
suitSeance(cm_machine_learning_4, cm_machine_learning_3).
suitSeance(cm_machine_learning_5, cm_machine_learning_4).

suitSeance(td_machine_learning_1_1, cm_machine_learning_1).
suitSeance(td_machine_learning_1_2, cm_machine_learning_2).
suitSeance(td_machine_learning_1_3, cm_machine_learning_3).
suitSeance(td_machine_learning_1_4, cm_machine_learning_4).
suitSeance(td_machine_learning_1_5, cm_machine_learning_5).

suitSeance(td_machine_learning_2_1, cm_machine_learning_1).
suitSeance(td_machine_learning_2_2, cm_machine_learning_2).
suitSeance(td_machine_learning_2_3, cm_machine_learning_3).
suitSeance(td_machine_learning_2_4, cm_machine_learning_4).
suitSeance(td_machine_learning_2_5, cm_machine_learning_5).

%traitement_image GM5 S10%
suitSeance(cm_traitement_image_2, cm_traitement_image_1).
suitSeance(cm_traitement_image_3, cm_traitement_image_2).
suitSeance(cm_traitement_image_4, cm_traitement_image_3).
suitSeance(cm_traitement_image_5, cm_traitement_image_4).

suitSeance(td_traitement_image_1_1, cm_traitement_image_1).
suitSeance(td_traitement_image_1_2, cm_traitement_image_2).
suitSeance(td_traitement_image_1_3, cm_traitement_image_3).
suitSeance(td_traitement_image_1_4, cm_traitement_image_4).
suitSeance(td_traitement_image_1_5, cm_traitement_image_5).

suitSeance(td_traitement_image_2_1, cm_traitement_image_1).
suitSeance(td_traitement_image_2_2, cm_traitement_image_2).
suitSeance(td_traitement_image_2_3, cm_traitement_image_3).
suitSeance(td_traitement_image_2_4, cm_traitement_image_4).
suitSeance(td_traitement_image_2_5, cm_traitement_image_5).

%calcul_sto GM5 S10%
suitSeance(cm_calcul_sto_2, cm_calcul_sto_1).
suitSeance(cm_calcul_sto_3, cm_calcul_sto_2).
suitSeance(cm_calcul_sto_4, cm_calcul_sto_3).
suitSeance(cm_calcul_sto_5, cm_calcul_sto_4).

suitSeance(td_calcul_sto_1_1, cm_calcul_sto_1).
suitSeance(td_calcul_sto_1_2, cm_calcul_sto_2).
suitSeance(td_calcul_sto_1_3, cm_calcul_sto_3).
suitSeance(td_calcul_sto_1_4, cm_calcul_sto_4).
suitSeance(td_calcul_sto_1_5, cm_calcul_sto_5).

suitSeance(td_calcul_sto_2_1, cm_calcul_sto_1).
suitSeance(td_calcul_sto_2_2, cm_calcul_sto_2).
suitSeance(td_calcul_sto_2_3, cm_calcul_sto_3).
suitSeance(td_calcul_sto_2_4, cm_calcul_sto_4).
suitSeance(td_calcul_sto_2_5, cm_calcul_sto_5).


%realite_virtuelle GM5 S10%
suitSeance(cm_realite_virtuelle_2, cm_realite_virtuelle_1).
suitSeance(cm_realite_virtuelle_3, cm_realite_virtuelle_2).
suitSeance(cm_realite_virtuelle_4, cm_realite_virtuelle_3).
suitSeance(cm_realite_virtuelle_5, cm_realite_virtuelle_4).

suitSeance(td_realite_virtuelle_1_1, cm_realite_virtuelle_1).
suitSeance(td_realite_virtuelle_1_2, cm_realite_virtuelle_2).
suitSeance(td_realite_virtuelle_1_3, cm_realite_virtuelle_3).
suitSeance(td_realite_virtuelle_1_4, cm_realite_virtuelle_4).
suitSeance(td_realite_virtuelle_1_5, cm_realite_virtuelle_5).

suitSeance(td_realite_virtuelle_2_1, cm_realite_virtuelle_1).
suitSeance(td_realite_virtuelle_2_2, cm_realite_virtuelle_2).
suitSeance(td_realite_virtuelle_2_3, cm_realite_virtuelle_3).
suitSeance(td_realite_virtuelle_2_4, cm_realite_virtuelle_4).
suitSeance(td_realite_virtuelle_2_5, cm_realite_virtuelle_5).


%ds GM5%
suitSeance(ds_programmation_logique_contrainte,td_programmation_logique_contrainte_2_5).
suitSeance(ds_programmation_logique_contrainte,td_programmation_logique_contrainte_1_5).
suitSeance(ds_auto_non_lineaire, td_auto_non_lineaire_1_5).
suitSeance(ds_auto_non_lineaire, td_auto_non_lineaire_2_5).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Écriture dynamique de la base de donnée -------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
/**
 * computeProfSeance(+P, +Seance)
 *
 * assert profSeance
 *
 * @arg P       Un enseignant ou une liste d'enseignants
 * @arg Seance  Une séance
 */
computeProfSeance(P, Seance) :-
    \+ is_list(P),
    assertz(profSeance(P, Seance)).
computeProfSeance([], _).
computeProfSeance([P|Profs], Seance) :- % si plusieurs profs par séance
    computeProfSeance(P, Seance),
    computeProfSeance(Profs, Seance).

/**
 * computeSeance(+Nom, +Mat, +Profs, +Type, +Groupe, +S)
 *
 * @arg Nom     Nom de la séance
 * @arg Mat     Matière
 * @arg Profs   Enseignant ou liste d'enseignants
 * @arg Type    Type de cours
 * @arg Groupe
 * @arg Ss      Listes d'id de séances
 */
computeSeance(Nom, Mat, Profs, Type, Groupe, [X]) :-
    computeProfSeance(Profs, X),
    assertz(groupeSeance(Groupe, X)),
    assertz(seance(X, Type, Mat, Nom)).
computeSeance(Nom, Mat, Profs, Type, Groupe, [X, Y|S]) :-
    (suitSeance(Y, X, _, _); assertz(suitSeance(Y, X))),
    computeSeance(Nom, Mat, Profs, Type, Groupe, [X]),
    computeSeance(Nom, Mat, Profs, Type, Groupe, [Y|S]).

% On génère la base de donnée dynamique des séances et des prédicats en lien
:- forall(
    seances(Nom, Mat, Prof, Type, Groupe, Ids),
    (
        computeSeance(Nom, Mat, Prof, Type, Groupe, Ids)
    )
).
