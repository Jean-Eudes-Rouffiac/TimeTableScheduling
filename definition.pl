
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                               Groupes                                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/**
 * groupe(?Groupe, ?Effectif)
 *
 * @arg Groupe      Nom du groupe
 * @arg Effectif    Nombre détudiants dans le groupe
 **/


groupe(GM3, 65).
groupe(GM3_1, 32).
groupe(GM3_2, 33).
groupe(GM4, 50).
groupe(GM4_1, 25).
groupe(GM4_2, 25).
groupe(GM5, 30).
groupe(GM5_1, 15).
groupe(GM5_2, 15).


/**
 * incomp(-G1, -G2)
 *
 * @arg G1     Nom du groupe 1
 * @arg G2     Nom du groupe 2
 */
incomp(GM3, GM4).
incomp(GM3, GM5).
incomp(GM4, GM5).
incomp(GM3_1, GM3).
incomp(GM3_2, GM3_1).
incomp(GM4_1, GM3).
incomp(GM4_1, GM4_2).
incomp(GM5_1, GM5_2).
incomp(GM4_2, GM3).
incomp(GM5_1, GM3).
incomp(GM5_2, GM3).

/**
 * incompatibles(-Groupe1, -Groupe2)
 *
 * Définit lincompatibilité entre 2 groupes (si il y a des étudiants en commun)
 *
 * @arg Groupe1     Nom du groupe 1
 * @arg Groupe2     Nom du groupe 2
 */
% reflexive
incompatibles(X, X) :- !.

% symétrique
incompatibles(X, Y) :- incomp(X, Y), !.
incompatibles(X, Y) :- incomp(Y, X), !.

%
%%
%%%
%%%%%%%%%%%%%%% matiere INSA ROUEN GM %%%%%%%%%%%%%%%
%%%
%%
%
/**
 * subject(?subject)
 *
 * @arg matiere     Nom de la matière
 **/

%matiere GM3%
%

%s5%
subject(analyse_numerique_1).
subject(fortran).
subject(mesure_distribution).

subject(probabilite).
subject(signal_1).
subject(optimisation_discrete).

subject(C).
subject(algo).

%s6%
subject(analyse_numerique_2).
subject(analyse_fonctionnelle).
subject(algo_num_arith).

subject(statistiques1).
subject(analyse_donnees).
subject(equa_diff).

subject(langage_oriente_objet).
subject(syst_exploitation).




%matiere GM4%
%

%s7%
subject(mnedp1).
subject(edp).
subject(opti_lineaire).


subject(automatique).
subject(markov).
subject(statistiques2).

subject(java).
subject(algo_structure_donnees).

%s9%
subject(mnedp2).
subject(b_spline).

subject(signal2).
subject(opti_combinatoire).

subject(technoweb).
subject(c++).
subject(base_de_donnee).




%matiere GM5%
%

%s10%
subject(regression_non_lineaire).
subject(had).
subject(hamilton_jacobi).
subject(auto_non_lineaire).
subject(calcul_parallelle).
subject(programmation_logique_contrainte).
subject(opti_grande_dimension).

%s11%
subject(meth_iterative).
subject(machine_learning).
subject(traitement_image).
subject(calcul_sto).
subject(realite_virtuelle).
subject(finance).
subject(IA).




%huma
%
subject(anglais).
subject(gsf).
subject(sport).


%
%%
%%%
%%%%%%%%%%%%%%% PROFESSEUR INSA ROUEN GM %%%%%%%%%%%%%%%
%%%
%%
%

/**
 * prof(?Prof)
 *
 * @arg Prof     Nom de lenseignant
 **/

professor(abdulrab).
professor(beveraggi).
professor(borel).
professor(boutigny).
professor(caputo).
professor(chaignaud).
professor(ciotir).
professor(dubois).
professor(el_assoudi).
professor(el_machkouri).
professor(forcadel).
professor(fortier).
professor(fourati).
professor(knippel).
professor(kotowicz).
professor(gleyse).
professor(godichon).
professor(gout).
professor(jaumat).
professor(itmi).
professor(merieux).
professor(marx).
professor(lemonnier).
professor(le_guyader).
professor(milou).
professor(portier).
professor(rennoux).
professor(tonnoir).
professor(vercouter).
professor(zakarova).
professor(zanni_merk).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                   Plages                                     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Plage horaire

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
%                                    day                                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/**
 * month(?Idmonth).
 *
 * @arg Idmonth  Id month
 */
month(1).
month(2).
month(3).
month(4).

/**
* daysPermonth(-Nb).
*
* @arg Nb  Number of days per month
*/
daysPermonth(20).

/**
* date(?IdDay, ?Idmonth)
*
* @arg IdDay  Id day
* @arg Idmonth  Id month
*/
date(J, M) :-
    month(M),
    daysPermonth(Max),
    between(1, Max, J).

/**
 * dateBefore(+J1, +M1, +J2, +M2)
 *
 * Test if date 1 < date 2
 * @arg J1  day date 1
 *
 * @arg M1  month date 1
 * @arg J2  day date 2
 * @arg M2  month date 2
 */
dateBefore( _, M1,  _, M2) :- M1 < M2, !.
dateBefore(J1, M1, J2, M2) :- M1 = M2, J1 < J2, !.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                              Type de cours                                  %
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
%                                   ClassRoom                                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/**
 * ClassRoom(?name, ?Effectif, ?Types)
 *
 * @arg name         name of the ClassRoom
 * @arg Effectif    nomber of available seat
 * @arg Types       List de types de cours
 **/

ClassRoom(Ma-H-R1-01, 60, [cm, ds]).
ClassRoom(Ma-H-R1-03, 60, [cm, ds]).
ClassRoom(Ma-B-RC-17, 50, [td, cm]).
ClassRoom(Ma-B-RC-01, 50, [td, cm]).
ClassRoom(Ma-G-RC-01-02-03, 150, [cm, ds]).
ClassRoom(Ma-I-R1-06, 35, [td]).
ClassRoom(Ma-I-R1-03, 35, [td]).
ClassRoom(Ma-I-R1-08, 35, [td]).
ClassRoom(Ma-E-R1-06, 60, [td, cm]).
ClassRoom(Ma-E-R1-01, 60, [td, cm]).
ClassRoom(Ma-G-RC-05, 30, [td]).
ClassRoom(Ma-G-RC-07, 30, [td]).
ClassRoom(Ma-C-RC-01, 65, [cm, ds]).

ClassRoom(DU-RJ-01, 30, [td]).
ClassRoom(DU-RJ-03, 30, [td]).
ClassRoom(DU-RJ-05, 30, [td]).
ClassRoom(DU-RJ-07, 30, [td]).
ClassRoom(DU-RJ-09, 30, [td]).
ClassRoom(DU-RJ-11, 30, [td]).
ClassRoom(DU-RJ-13, 30, [td]).
ClassRoom(DU-RJ-15, 30, [td]).
ClassRoom(DU-RJ-02, 100, [cm]).
ClassRoom(DU-RJ-06, 100, [cm]).
ClassRoom(DU-RJ-12, 100, [cm]).

ClassRoom(BO-R2-03, 35, [tp]).
ClassRoom(BO-R2-05, 35, [tp]).
ClassRoom(BO-R2-07, 35, [tp]).



/**
 * ClassRoom(?name, ?Effectif)
 *
 * @arg name         name de la ClassRoom
 * @arg Effectif    namebre de place disponibles
 **/

ClassRoom(S, N) :- ClassRoom(S, N, _). % TODO add tests


/**
 * accueille(+ClassRoom, ?TypeCours)
 *
 * @arg ClassRoom       name dune ClassRoom
 * @arg TypeCours   Type de cours que la ClassRoom accueille
 */

accueille(S, T) :-
    ClassRoom(S, _, L),
    member(T, L).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                  Sessions                                     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/*
 * Sessions(?name, ?Mat, ?Prof, ?Type, ?group, ?Ids).
 *
 * Définition de plusieurs séances à la volée
 *
 * @arg name     name des séances
 * @arg Mat     Id Matière
 * @arg Prof    Id Prof
 * @arg Type    Type de cours
 * @arg group  Id group
 * @arg Ids     Liste d'atomes servant d'ids pour ces séances
 */



% GM4 %


%% MNEDP1 %%

 Sessions('CM mnedp1', mnedp1, gout , cm, GM4, [
     cm_mnedp1_1, cm_mnedp1_2, cm_mnedp1_3, cm_mnedp1_4,
     cm_mnedp1_5
 ]).

 Sessions('TD mnedp1_groupe1', mnedp1, gout, td, GM4_1, [
     td_mnedp1_1_1, td_mnedp1_1_2, td_mnedp1_1_3, td_mnedp1_1_4,
     td_mnedp1_1_5
 ]).

 Sessions('TD mnedp1_groupe2', mnedp1, gout, td, GM4_2, [
     td_mnedp1_2_1, td_mnedp1_2_2, td_mnedp1_2_3, td_mnedp1_2_4,
     td_mnedp1_2_5
 ]).

 Sessions('DS mnedp1', mnedp1, gout, ds, GM4, [
     ds_mnedp1
 ]).

%% EDP %%

 Sessions('CM edp', edp, le_guyader , cm, GM4, [
     cm_edp_1, cm_edp_2, cm_edp_3, cm_edp_4,
     cm_edp_5
 ]).

 Sessions('TD edp_groupe1', edp, le_guyader, td, GM4_1, [
     td_edp_1_1, td_edp_1_2, td_edp_1_3, td_edp_1_4,
     td_edp_1_5
 ]).

 Sessions('TD edp_groupe2', edp, le_guyader, td, GM4_2, [
     td_edp_2_1, td_edp_2_2, td_edp_2_3, td_edp_2_4,
     td_edp_2_5
 ]).

 Sessions('DS edp', edp, le_guyader, ds, GM4, [
     ds_edp
 ]).

% OPTIMISATION_LINEAIRE %

Sessions('CM opti_lineaire', opti_lineaire, forcadel , cm, GM4, [
    cm_opti_lineaire_1, cm_opti_lineaire_2, cm_opti_lineaire_3, cm_opti_lineaire_4,
    cm_opti_lineaire_5
]).

Sessions('TD opti_lineaire_groupe1', opti_lineaire, forcadel, td, GM4_1, [
    td_opti_lineaire_1_1, td_opti_lineaire_1_2, td_opti_lineaire_1_3, td_opti_lineaire_1_4,
    td_opti_lineaire_1_5
]).

Sessions('TD opti_lineaire_groupe2', opti_lineaire, forcadel, td, GM4_2, [
    td_opti_lineaire_2_1, td_opti_lineaire_2_2, td_opti_lineaire_2_3, td_opti_lineaire_2_4,
    td_opti_lineaire_2_5
]).

Sessions('DS opti_lineaire', opti_lineaire, forcadel, ds, GM4, [
    ds_opti_lineaire
]).

% AUTOMATIQUE %

Sessions('CM automatique', automatique,el_assoudil , cm, GM4, [
    cm_automatique_1, cm_automatique_2, cm_automatique_3, cm_automatique_4,
    cm_automatique_5
]).

Sessions('TD automatique_groupe1', automatique, el_assoudi, td, GM4_1, [
    td_automatique_1_1, td_automatique_1_2, td_automatique_1_3, td_automatique_1_4,
    td_automatique_1_5
]).

Sessions('TD automatique_groupe2', automatique, el_assoudi, td, GM4_2, [
    td_automatique_2_1, td_automatique_2_2, td_automatique_2_3, td_automatique_2_4,
    td_automatique_2_5
]).

Sessions('DS automatique', automatique, el_assoudi, ds, GM4, [
    ds_automatique
]).




% GM3 %

% Analyse numérique 1 %

Sessions('CM Analyse numérique 1', analyse_numerique_1, zakarova, cm, GM3, [
    cm_ananum1_1, cm_ananum1_2, cm_ananum1_3, cm_ananum1_4, cm_ananum1_5
]).

Sessions('TD Analyse numérique 1 Groupe 1', analyse_numerique_1, zakarova, td, GM3_1, [
    td_ananum1_1_1, td_ananum1_1_2, td_ananum1_1_3, td_ananum1_1_4, td_ananum1_1_5
]).

Sessions('TD Analyse numérique 1 Groupe 2', analyse_numerique_1, zakarova, td, GM3_2, [
    td_ananum1_2_1, td_ananum1_2_2, td_ananum1_2_3, td_ananum1_2_4, td_ananum1_2_5
]).

Sessions('DS Analyse numérique 1', analyse_numerique_1, zakarova, ds, GM3, [
    ds_ananum1
]).


% Mesure et distribution %

Sessions('CM Mesure et distribution', mesure_distribution, el_assoudi, cm, GM3, [
    cm_mesure_1, cm_mesure_2, cm_mesure_3, cm_mesure_4, cm_mesure_5
]).

Sessions('TD Mesure et distribution Groupe 1', mesure_distribution, el_assoudi, td, GM3_1, [
    td_mesure_1_1, td_mesure_1_2, td_mesure_1_3, td_mesure_1_4, td_mesure_1_5
]).

Sessions('TD Mesure et distribution Groupe 2', mesure_distribution, el_assoudi, td, GM3_2, [
    td_mesure_2_1, td_mesure_2_2, td_mesure_2_3, td_mesure_2_4, td_mesure_2_5
]).

Sessions('DS Mesure et distribution', mesure_distribution, el_assoudi, ds, GM3, [
    ds_mesure
]).


% Fortran %

Sessions('CM Fortran', mesure_distribution, caputo, cm, GM3, [
    cm_fortran_1, cm_fortran_2, cm_fortran_3, cm_fortran_4, cm_fortran_5
]).

Sessions('TD Fortran Groupe 1', mesure_distribution, caputo, td, GM3_1, [
    td_fortran_1_1, td_fortran_1_2, td_fortran_1_3, td_fortran_1_4, td_fortran_1_5
]).

Sessions('TD Fortran Groupe 2', mesure_distribution, caputo, td, GM3_2, [
    td_fortran_2_1, td_fortran_2_2, td_fortran_2_3, td_fortran_2_4, td_fortran_2_5
]).

Sessions('DS Fortran', mesure_distribution, caputo, ds, GM3, [
    ds_fortran
]).


% Probabilité %

Sessions('CM Probabilité', probabilite, ciotir, cm, GM3, [
    cm_proba_1, cm_proba_2, cm_proba_3, cm_proba_4, cm_proba_5
]).

Sessions('TD Probabilité Groupe 1', probabilite, ciotir, td, GM3_1, [
    td_proba_1_1, td_proba_1_2, td_proba_1_3, td_proba_1_4, td_proba_1_5
]).

Sessions('TD Probabilité Groupe 2', probabilite, ciotir, td, GM3_2, [
    td_proba_2_1, td_proba_2_2, td_proba_2_3, td_proba_2_4, td_proba_2_5
]).

Sessions('DS Probabilité', probabilite, ciotir, ds, GM3, [
    ds_proba
]).



% Optimisation discrète %

Sessions('CM Optimisation discrète', optimisation_discrete, beveraggi, cm, GM3, [
    cm_opti_discrete_1, cm_opti_discrete_2, cm_opti_discrete_3, cm_opti_discrete_4, cm_opti_discrete_5
]).

Sessions('TD Optimisation discrète Groupe 1', optimisation_discrete, beveraggi, td, GM3_1, [
    td_opti_discrete_1_1, td_opti_discrete_1_2, td_opti_discrete_1_3, td_opti_discrete_1_4, td_opti_discrete_1_5
]).

Sessions('TD Optimisation discrète Groupe 2', optimisation_discrete, beveraggi, td, GM3_2, [
    td_opti_discrete_2_1, td_opti_discrete_2_2, td_opti_discrete_2_3, td_opti_discrete_2_4, td_opti_discrete_2_5
]).

Sessions('DS Optimisation discrète', optimisation_discrete, beveraggi, ds, GM3, [
    ds_opti_discrete
]).



% Signal 1 %

Sessions('CM Signal 1', signal_1, fortier, cm, GM3, [
    cm_signal1_1, cm_signal1_2, cm_signal1_3, cm_signal1_4, cm_signal1_5
]).

Sessions('TD Signal 1 Groupe 1', signal_1, fortier, td, GM3_1, [
    td_signal1_1_1, td_signal1_1_2, td_signal1_1_3, td_signal1_1_4, td_signal1_1_5
]).

Sessions('TD Signal 1 Groupe 2', signal_1, fortier, td, GM3_2, [
    td_signal1_2_1, td_signal1_2_2, td_signal1_2_3, td_signal1_2_4, td_signal1_2_5
]).

Sessions('TP Signal 1 Groupe 1', signal_1, fortier, tp, GM3_1, [
    tp_signal1_1_1, tp_signal1_1_2
]).

Sessions('TP Signal 1 Groupe 2', signal_1, fortier, tp, GM3_2, [
    tp_signal1_2_1, tp_signal1_2_2
]).

Sessions('DS Signal 1', signal_1, fortier, ds, GM3, [
    ds_signal1
]).


% Langage C %

Sessions('CM Langage C', C, kotowicz, cm, GM3, [
    cm_C_1, cm_C_2, cm_C_3, cm_C_4, cm_C_5
]).

Sessions('TD Langage C Groupe 1', C, kotowicz, tp, GM3_1, [
    tp_C_1_1, tp_C_1_2, tp_C_1_3, tp_C_1_4, tp_C_1_5
]).

Sessions('TD Langage C Groupe 2', C, kotowicz, tp, GM3_2, [
    tp_C_2_1, tp_C_2_2, tp_C_2_3, tp_C_2_4, tp_C_2_5
]).

Sessions('DS Langage C', C, kotowicz, ds, GM3, [
    ds_C
]).


% Algo %

Sessions('CM Algo', algo, chaignaud, cm, GM3, [
    cm_algo_1, cm_algo_2, cm_algo_3, cm_algo_4, cm_algo_5
]).

Sessions('TD Algo Groupe 1', algo, chaignaud, td, GM3_1, [
    td_algo_1_1, td_algo_1_2, td_algo_1_3, td_algo_1_4, td_algo_1_5
]).

Sessions('TD Algo Groupe 2', algo, chaignaud, td, GM3_2, [
    td_algo_2_1, td_algo_2_2, td_algo_2_3, td_algo_2_4, td_algo_2_5
]).

Sessions('DS Algo', algo, chaignaud, ds, GM3, [
    ds_algo
]).



/**

 * Session(?Id, ?TypeCours, ?subject, ?Name)

 *
 * @arg Id          Id de la séance
 * @arg TypeCours   Type de cours de la séance
 * @arg subject     subject à laquelle la séance appartient
 * @arg name         name de la séance

:- dynamic Session/4.

/**
 * groupSession(?group, ?Session)
 *
 * Définit la participation dun group à une séance
 *
 * @arg group      name du group
 * @arg Session      Id de la séance
 */
:- dynamic groupSession/2.

/**
 * profSession(?Prof, ?Session)
 *
 * Définit la participation dun enseignant à une séance
 *
 * @arg Prof        name de lenseignant
 * @arg Session      Id de la séance
 */
:- dynamic profSession/2.

/**
 * followingSession(+Session_suivante, ?Session_suivie)
 *
 * On remarque que le prédicat nous permet également dimplémenter la relation
 * de followinge entre les matière (dernière séance matière 1 - première séance
 * matière 2)
 *
 * @arg Session_suivante     Id de la séance qui following
 * @arg Session_suivie       Id de la séance suivit
 */
:- dynamic followingSession/2.
followingSession(td_bdd_id_1, cm_bdd_8).
followingSession(tp_bdd_id_1, cm_bdd_8).
followingSession(td_bdd_silr1_1, cm_bdd_8).
followingSession(tp_bdd_silr1_1, cm_bdd_8).
followingSession(td_bdd_silr2_1, cm_bdd_8).
followingSession(tp_bdd_silr2_1, cm_bdd_8).

followingSession(td_IA_silr2_1, cm_IA_6).
followingSession(td_IA_silr1_1, cm_IA_6).
followingSession(td_IA_id_1, cm_IA_6).

followingSession(tp_project_ia_silr2_1, td_IA_silr2_3).
followingSession(tp_project_ia_silr1_1, td_IA_silr1_3).
followingSession(tp_project_ia_id_1, td_IA_id_3).

followingSession(tp_multimedia_1, cm_multimedia_8).
followingSession(tp_multimedia_1, cm_multimedia_4).

followingSession(tp_c_id_1, cm_c_10).
followingSession(tp_c_silr1_1, cm_c_10).
followingSession(tp_c_silr2_1, cm_c_10).

followingSession(cm_project_c_1, tp_c_id_10).
followingSession(cm_project_c_1, tp_c_silr1_10).
followingSession(cm_project_c_1, tp_c_silr2_10).

followingSession(tp_outils_ingenierie_silr2_1, cm_outils_ingenierie_silr_2).
followingSession(tp_outils_ingenierie_silr1_1, cm_outils_ingenierie_silr_2).

followingSession(td_analyse_donnees_1, cm_analyse_donnees_7).
followingSession(tp_analyse_donnees_1, td_analyse_donnees_3).

followingSession(td_archi_parallèle_1, cm_archi_parallèle_2).

followingSession(td_crypto_silr2_1, cm_crypto_6).
followingSession(td_crypto_silr1_1, cm_crypto_6).
followingSession(td_crypto_id_1, cm_crypto_6).

followingSession(tp_reseaux_silr1_1, cm_reseaux_7).
followingSession(tp_reseaux_silr2_1, cm_reseaux_7).

followingSession(tp_traitement_image_silr2_1, cm_traitement_image_12).
followingSession(tp_traitement_image_silr1_1, cm_traitement_image_12).

followingSession(td_traitement_signal_silr1_1, cm_traitement_signal_6).
followingSession(td_traitement_signal_silr2_1, cm_traitement_signal_6).
followingSession(tp_traitement_signal_silr1_1, cm_traitement_signal_6).
followingSession(tp_traitement_signal_silr2_1, cm_traitement_signal_6).

followingSession(cm_marketing_id_2, cm_marketing_id_1).
followingSession(cm_marketing_silr_2, cm_marketing_silr_1).
followingSession(td_marketing_id_1, cm_marketing_id_2).
followingSession(td_marketing_silr_1, cm_marketing_silr_2).

followingSession(td_genie_logi_id_1, cm_genie_logi_6).
followingSession(td_genie_logi_silr1_1, cm_genie_logi_6).
followingSession(td_genie_logi_silr2_1, cm_genie_logi_6).
followingSession(tp_genie_logi_id_1, cm_genie_logi_6).
followingSession(tp_genie_logi_silr1_1, cm_genie_logi_6).
followingSession(tp_genie_logi_silr2_1, cm_genie_logi_6).

followingSession(td_patrons_id_1, cm_patrons_3).
followingSession(td_patrons_silr1_1, cm_patrons_3).
followingSession(td_patrons_silr2_1, cm_patrons_3).
followingSession(tp_patrons_id_1, td_patrons_id_2).
followingSession(tp_patrons_silr1_1, td_patrons_silr1_2).
followingSession(tp_patrons_silr2_1, td_patrons_silr2_2).

followingSession(cm_project_transversal_2, cm_project_transversal_1).
followingSession(project_transversal_id_1, cm_project_transversal_2).
followingSession(project_transversal_silr_1, cm_project_transversal_2).

/**
 * followingSession(?Session_suivante, ?Session_suivie, ?tempsMin, ?tempsMax)
 *
 * @arg Session_suivante     Id de la séance qui following
 * @arg Session_suivie       Id de la séance suivit
 * @arg tempsMin            namebre de days min avant la prochaine séance
 * @arg tempsMax            namebre de days max avant la prochaine séance
 */
followingSession(ds_bdd, tp_bdd_id_6, 7, 12).
followingSession(ds_bdd, tp_bdd_silr1_6, 7, 12).
followingSession(ds_bdd, tp_bdd_silr2_6, 7, 12).

followingSession(ds_ia, td_IA_id_3, 7, 12).
followingSession(ds_ia, td_IA_silr1_3, 7, 12).
followingSession(ds_ia, td_IA_silr2_3, 7, 12).

followingSession(ds_multimedia, tp_multimedia_6, 7, 12).

followingSession(ds_meta_heuristique, cm_meta_heuristique_7, 7, 12).

followingSession(ds_c, tp_c_id_10, 7, 12).
followingSession(ds_c, tp_c_silr2_10, 7, 12).
followingSession(ds_c, tp_c_silr1_10, 7, 12).

followingSession(ds_outils_ingenierie, tp_outils_ingenierie_silr2_6, 7, 12).
followingSession(ds_outils_ingenierie, tp_outils_ingenierie_silr1_6, 7, 12).

followingSession(ds_analyse_donnees, tp_analyse_donnees_6, 7, 12).

followingSession(ds_archi_parallèle, td_archi_parallèle_2, 7, 12).

followingSession(ds_compta, td_compta_7, 7, 12).

followingSession(ds_crypto, td_crypto_id_4, 7, 12).
followingSession(ds_crypto, td_crypto_silr1_4, 7, 12).
followingSession(ds_crypto, td_crypto_silr2_4, 7, 12).

followingSession(ds_reseaux, tp_reseaux_silr1_8, 7, 12).
followingSession(ds_reseaux, tp_reseaux_silr2_8, 7, 12).

followingSession(ds_traitement_image, tp_traitement_image_silr1_7, 7, 12).
followingSession(ds_traitement_image, tp_traitement_image_silr2_7, 7, 12).

followingSession(ds_traitement_signal, tp_traitement_signal_silr1_6, 7, 12).
followingSession(ds_traitement_signal, tp_traitement_signal_silr2_6, 7, 12).

followingSession(ds_marketing, td_marketing_id_7, 7, 12).
followingSession(ds_marketing, td_marketing_silr_7, 7, 12).

followingSession(ds_genie_logi, td_genie_logi_id_3, 5, 20).
followingSession(ds_genie_logi, td_genie_logi_silr1_3, 5, 20).
followingSession(ds_genie_logi, td_genie_logi_silr2_3, 5, 20).
followingSession(ds_genie_logi, tp_genie_logi_id_1, 5, 20).
followingSession(ds_genie_logi, tp_genie_logi_silr1_1, 5, 20).
followingSession(ds_genie_logi, tp_genie_logi_silr2_1, 5, 20).

followingSession(ds_patrons, tp_patrons_id_2, 7, 12).
followingSession(ds_patrons, tp_patrons_silr1_2, 7, 12).
followingSession(ds_patrons, tp_patrons_silr2_2, 7, 12).


followingSession(cm_project_c_2, cm_project_c_1, 7, 12).

% Écriture dynamique de la base de donnée -------------------------------------

/**
 * computeProfSession(+P, +Session)
 *
 * assert profSession
 *
 * @arg P       Un enseignant ou une liste d'enseignants
 * @arg Session  Une séance
 */
computeProfSession(P, Session) :-
    \+ is_list(P),
    assertz(profSession(P, Session)).
computeProfSession([], _).
computeProfSession([P|Profs], Session) :- % si plusieurs profs par séance
    computeProfSession(P, Session),
    computeProfSession(Profs, Session).

/**
 * computeSession(+name, +Mat, +Profs, +Type, +group, +S)
 *
 * @arg name     name de la séance
 * @arg Mat     Matière
 * @arg Profs   Enseignant ou liste d'enseignants
 * @arg Type    Type de cours
 * @arg group
 * @arg Ss      Listes d'id de séances
 */
computeSession(name, Mat, Profs, Type, group, [X]) :-
    computeProfSession(Profs, X),
    assertz(groupSession(group, X)),
    assertz(Session(X, Type, Mat, name)).
computeSession(name, Mat, Profs, Type, group, [X, Y|S]) :-
    (followingSession(Y, X, _, _); assertz(followingSession(Y, X))),
    computeSession(name, Mat, Profs, Type, group, [X]),
    computeSession(name, Mat, Profs, Type, group, [Y|S]).

% On génère la base de donnée dynamique des séances et des prédicats en lien
:- forall(
    Sessions(name, Mat, Prof, Type, group, Ids),
    (
        computeSession(name, Mat, Prof, Type, group, Ids)
    )
).
