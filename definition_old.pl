group(GM3, 65).
group(GM3_1, 32).
group(GM3_2, 33).
group(GM4, 50).
group(GM4_1, 25).
group(GM4_2, 25).
group(GM5, 30).
group(GM5_1, 15).
group(GM5_2, 15).



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


incompatibles(X, X) :- !.

% symétrique
incompatibles(X, Y) :- incomp(X, Y), !.
incompatibles(X, Y) :- incomp(Y, X), !.




%matiere GM3%

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
subject(cplusplus).
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





subject(anglais).
subject(gsf).
subject(sport).



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
professor(respondek).
professor(tonnoir).
professor(vercouter).
professor(zakarova).
professor(zanni_merk).



plage(1, '08h00', '09h30').
plage(2, '09h45', '11h15').
plage(3, '11h30', '13h00').
plage(4, '14h00', '15h30').
plage(5, '15h45', '17h15').
plage(6, '17h30', '19h00').


month(1).
month(2).
month(3).
month(4).


daysPermonth(20).


date(J, M) :-
    month(M),
    daysPermonth(Max),
    between(1, Max, J).


dateBefore( _, M1,  _, M2) :- M1 < M2, !.
dateBefore(J1, M1, J2, M2) :- M1 = M2, J1 < J2, !.


typeCours(cm).
typeCours(td).
typeCours(tp).
typeCours(ds).



classRoom(Ma_H_R1_01, 60, [cm, ds]).
classRoom(Ma_H_R1_03, 60, [cm, ds]).
classRoom(Ma_B_RC_17, 50, [td, cm]).
classRoom(Ma_B_RC_01, 50, [td, cm]).
classRoom(Ma_G_RC_01-02-03, 150, [cm, ds]).
classRoom(Ma_I_R1_06, 35, [td]).
classRoom(Ma_I_R1_03, 35, [td]).
classRoom(Ma_I_R1_08, 35, [td]).
classRoom(Ma_E_R1_06, 60, [td, cm]).
classRoom(Ma_E_R1_01, 60, [td, cm]).
classRoom(Ma_G_RC_05, 30, [td]).
classRoom(Ma_G_RC_07, 30, [td]).
classRoom(Ma_C_RC_01, 65, [cm, ds]).

classRoom(DU_RJ_01, 30, [td]).
classRoom(DU_RJ_03, 30, [td]).
classRoom(DU_RJ_05, 30, [td]).
classRoom(DU_RJ_07, 30, [td]).
classRoom(DU_RJ_09, 30, [td]).
classRoom(DU_RJ_11, 30, [td]).
classRoom(DU_RJ_13, 30, [td]).
classRoom(DU_RJ_15, 30, [td]).
classRoom(DU_RJ_02, 100, [cm]).
classRoom(DU_RJ_06, 100, [cm]).
classRoom(DU_RJ_12, 100, [cm]).

classRoom(BO_R2_03, 35, [tp]).
classRoom(BO_R2_05, 35, [tp]).
classRoom(BO_R2_07, 35, [tp]).





classRoom(S, N) :- classRoom(S, N, _). % TODO add tests




accueille(S, T) :-
    classRoom(S, _, L),
    member(T, L).









% GM3 %

% S5 %

% Analyse numérique 1 %


sessions('CM Analyse numérique 1', analyse_numerique_1, zakarova, cm, GM3, [
    cm_ananum1_1, cm_ananum1_2, cm_ananum1_3, cm_ananum1_4, cm_ananum1_5
]).

sessions('CM Analyse numérique 1', analyse_numerique_1, zakarova, cm, GM3, [
    cm_ananum1_1, cm_ananum1_2, cm_ananum1_3, cm_ananum1_4, cm_ananum1_5
]).

sessions('TD Analyse numérique 1 Groupe 1', analyse_numerique_1, zakarova, td, GM3_1, [
    td_ananum1_1_1, td_ananum1_1_2, td_ananum1_1_3, td_ananum1_1_4, td_ananum1_1_5
]).

sessions('TD Analyse numérique 1 Groupe 2', analyse_numerique_1, zakarova, td, GM3_2, [
    td_ananum1_2_1, td_ananum1_2_2, td_ananum1_2_3, td_ananum1_2_4, td_ananum1_2_5
]).

sessions('DS Analyse numérique 1', analyse_numerique_1, zakarova, ds, GM3, [
    ds_ananum1
]).


% Mesure et distribution %

sessions('CM Mesure et distribution', mesure_distribution, el_assoudi, cm, GM3, [
    cm_mesure_1, cm_mesure_2, cm_mesure_3, cm_mesure_4, cm_mesure_5
]).

sessions('TD Mesure et distribution Groupe 1', mesure_distribution, el_assoudi, td, GM3_1, [
    td_mesure_1_1, td_mesure_1_2, td_mesure_1_3, td_mesure_1_4, td_mesure_1_5
]).

sessions('TD Mesure et distribution Groupe 2', mesure_distribution, el_assoudi, td, GM3_2, [
    td_mesure_2_1, td_mesure_2_2, td_mesure_2_3, td_mesure_2_4, td_mesure_2_5
]).

sessions('DS Mesure et distribution', mesure_distribution, el_assoudi, ds, GM3, [
    ds_mesure
]).


% Fortran %

sessions('CM Fortran', mesure_distribution, caputo, cm, GM3, [
    cm_fortran_1, cm_fortran_2, cm_fortran_3, cm_fortran_4, cm_fortran_5
]).

sessions('TD Fortran Groupe 1', mesure_distribution, caputo, td, GM3_1, [
    td_fortran_1_1, td_fortran_1_2, td_fortran_1_3, td_fortran_1_4, td_fortran_1_5
]).

sessions('TD Fortran Groupe 2', mesure_distribution, caputo, td, GM3_2, [
    td_fortran_2_1, td_fortran_2_2, td_fortran_2_3, td_fortran_2_4, td_fortran_2_5
]).

sessions('DS Fortran', mesure_distribution, caputo, ds, GM3, [
    ds_fortran
]).


% Probabilité %

sessions('CM Probabilité', probabilite, ciotir, cm, GM3, [
    cm_proba_1, cm_proba_2, cm_proba_3, cm_proba_4, cm_proba_5
]).

sessions('TD Probabilité Groupe 1', probabilite, ciotir, td, GM3_1, [
    td_proba_1_1, td_proba_1_2, td_proba_1_3, td_proba_1_4, td_proba_1_5
]).

sessions('TD Probabilité Groupe 2', probabilite, ciotir, td, GM3_2, [
    td_proba_2_1, td_proba_2_2, td_proba_2_3, td_proba_2_4, td_proba_2_5
]).

sessions('DS Probabilité', probabilite, ciotir, ds, GM3, [
    ds_proba
]).



% Optimisation discrète %

sessions('CM Optimisation discrète', optimisation_discrete, beveraggi, cm, GM3, [
    cm_opti_discrete_1, cm_opti_discrete_2, cm_opti_discrete_3, cm_opti_discrete_4, cm_opti_discrete_5
]).

sessions('TD Optimisation discrète Groupe 1', optimisation_discrete, beveraggi, td, GM3_1, [
    td_opti_discrete_1_1, td_opti_discrete_1_2, td_opti_discrete_1_3, td_opti_discrete_1_4, td_opti_discrete_1_5
]).

sessions('TD Optimisation discrète Groupe 2', optimisation_discrete, beveraggi, td, GM3_2, [
    td_opti_discrete_2_1, td_opti_discrete_2_2, td_opti_discrete_2_3, td_opti_discrete_2_4, td_opti_discrete_2_5
]).

sessions('DS Optimisation discrète', optimisation_discrete, beveraggi, ds, GM3, [
    ds_opti_discrete
]).



% Signal 1 %

sessions('CM Signal 1', signal_1, fortier, cm, GM3, [
    cm_signal1_1, cm_signal1_2, cm_signal1_3, cm_signal1_4, cm_signal1_5
]).

sessions('TD Signal 1 Groupe 1', signal_1, fortier, td, GM3_1, [
    td_signal1_1_1, td_signal1_1_2, td_signal1_1_3, td_signal1_1_4, td_signal1_1_5
]).

sessions('TD Signal 1 Groupe 2', signal_1, fortier, td, GM3_2, [
    td_signal1_2_1, td_signal1_2_2, td_signal1_2_3, td_signal1_2_4, td_signal1_2_5
]).

sessions('TP Signal 1 Groupe 1', signal_1, fortier, tp, GM3_1, [
    tp_signal1_1_1, tp_signal1_1_2
]).

sessions('TP Signal 1 Groupe 2', signal_1, fortier, tp, GM3_2, [
    tp_signal1_2_1, tp_signal1_2_2
]).

sessions('DS Signal 1', signal_1, fortier, ds, GM3, [
    ds_signal1
]).


% Langage C %

sessions('CM Langage C', C, kotowicz, cm, GM3, [
    cm_C_1, cm_C_2, cm_C_3, cm_C_4, cm_C_5
]).

sessions('TD Langage C Groupe 1', C, kotowicz, tp, GM3_1, [
    tp_C_1_1, tp_C_1_2, tp_C_1_3, tp_C_1_4, tp_C_1_5
]).

sessions('TD Langage C Groupe 2', C, kotowicz, tp, GM3_2, [
    tp_C_2_1, tp_C_2_2, tp_C_2_3, tp_C_2_4, tp_C_2_5
]).

sessions('DS Langage C', C, kotowicz, ds, GM3, [
    ds_C
]).


% Algo %

sessions('CM Algo', algo, chaignaud, cm, GM3, [
    cm_algo_1, cm_algo_2, cm_algo_3, cm_algo_4, cm_algo_5
]).

sessions('TD Algo Groupe 1', algo, chaignaud, td, GM3_1, [
    td_algo_1_1, td_algo_1_2, td_algo_1_3, td_algo_1_4, td_algo_1_5
]).

sessions('TD Algo Groupe 2', algo, chaignaud, td, GM3_2, [
    td_algo_2_1, td_algo_2_2, td_algo_2_3, td_algo_2_4, td_algo_2_5
]).

sessions('DS Algo', algo, chaignaud, ds, GM3, [
    ds_algo
]).


% Anglais %

sessions('CM Anglais', anglais, milou, cm, GM3, [
    cm_anglais1_1, cm_anglais1_2, cm_anglais1_3, cm_anglais1_4, cm_anglais1_5
]).

sessions('TD Anglais Groupe 1', anglais, milou, td, GM3_1, [
    td_anglais1_1_1, td_anglais1_1_2, td_anglais1_1_3, td_anglais1_1_4, td_anglais1_1_5
]).

sessions('TD Anglais Groupe 2', anglais, milou, td, GM3_2, [
    td_anglais1_2_1, td_anglais1_2_2, td_anglais1_2_3, td_anglais1_2_4, td_anglais1_2_5
]).

sessions('DS Anglais', anglais, milou, ds, GM3, [
    ds_anglais1
]).


% GSF %

sessions('TD GSF Groupe 1', gsf, borel, td, GM3_1, [
    td_gsf1_1_1, td_gsf1_1_2, td_gsf1_1_3, td_gsf1_1_4, td_gsf1_1_5
]).

sessions('TD GSF Groupe 2', gsf, borel, td, GM3_2, [
    td_gsf1_2_1, td_gsf1_2_2, td_gsf1_2_3, td_gsf1_2_4, td_gsf1_2_5
]).

sessions('DS GSF', gsf, borel, ds, GM3, [
    ds_gsf1
]).


% Sport %

sessions('CM Sport', sport, dubois, cm, GM3, [
    cm_sport1_1, cm_sport1_2, cm_sport1_3, cm_sport1_4, cm_sport1_5
]).




% S6 %

% Analyse numérique 2 %

sessions('CM Analyse numérique 2', analyse_numerique_2, forcadel, cm, GM3, [
    cm_ananum2_1, cm_ananum2_2, cm_ananum2_3, cm_ananum2_4, cm_ananum2_5
]).

sessions('CM Analyse numérique 2', analyse_numerique_2, forcadel, cm, GM3, [
    cm_ananum2_1, cm_ananum2_2, cm_ananum2_3, cm_ananum2_4, cm_ananum2_5
]).

sessions('TD Analyse numérique 2 Groupe 1', analyse_numerique_2, forcadel, td, GM3_1, [
    td_ananum2_1_1, td_ananum2_1_2, td_ananum2_1_3, td_ananum2_1_4, td_ananum2_1_5
]).

sessions('TD Analyse numérique 2 Groupe 2', analyse_numerique_2, forcadel, td, GM3_2, [
    td_ananum2_2_1, td_ananum2_2_2, td_ananum2_2_3, td_ananum2_2_4, td_ananum2_2_5
]).

sessions('TP Analyse numérique 2 Groupe 1', analyse_numerique_2, forcadel, tp, GM3_1, [
    tp_ananum2_1_1, tp_ananum2_1_2
]).

sessions('TP Analyse numérique 2 Groupe 2', analyse_numerique_2, forcadel, tp, GM3_2, [
    tp_ananum2_2_1, tp_ananum2_2_2
]).

sessions('DS Analyse numérique 2', analyse_numerique_2, forcadel, ds, GM3, [
    ds_ananum2
]).


% Analyse fonctionnelle %

sessions('CM Analyse fonctionnelle', analyse_fonctionnelle, zakarova, cm, GM3, [
    cm_anafonc_1, cm_anafonc_2, cm_anafonc_3, cm_anafonc_4, cm_anafonc_5
]).

sessions('TD Analyse fonctionnelle Groupe 1', analyse_fonctionnelle, zakarova, td, GM3_1, [
    td_anafonc_1_1, td_anafonc_1_2, td_anafonc_1_3, td_anafonc_1_4, td_anafonc_1_5
]).

sessions('TD Analyse fonctionnelle Groupe 2', analyse_fonctionnelle, zakarova, td, GM3_2, [
    td_anafonc_2_1, td_anafonc_2_2, td_anafonc_2_3, td_anafonc_2_4, td_anafonc_2_5
]).

sessions('DS Analyse fonctionnelle', analyse_fonctionnelle, zakarova, ds, GM3, [
    ds_anafonc
]).

% Algorithmique numérique et arithmétique %

sessions('CM Algorithmique numérique et arithmétique', algo_num_arith, gleyse, cm, GM3, [
    cm_algo_num_arith_1, cm_algo_num_arith_2, cm_algo_num_arith_3, cm_algo_num_arith_4, cm_algo_num_arith_5
]).

sessions('TD Algorithmique numérique et arithmétique Groupe 1', algo_num_arith, gleyse, td, GM3_1, [
    td_algo_num_arith_1_1, td_algo_num_arith_1_2, td_algo_num_arith_1_3, td_algo_num_arith_1_4, td_algo_num_arith_1_5
]).

sessions('TD Algorithmique numérique et arithmétique Groupe 2', algo_num_arith, gleyse, td, GM3_2, [
    td_algo_num_arith_2_1, td_algo_num_arith_2_2, td_algo_num_arith_2_3, td_algo_num_arith_2_4, td_algo_num_arith_2_5
]).

sessions('DS Algorithmique numérique et arithmétique', algo_num_arith, gleyse, ds, GM3, [
    ds_algo_num_arith
]).


% Statistiques 1 %

sessions('CM Statistiques 1', statistiques1, el_machkouri, cm, GM3, [
    cm_stat1_1, cm_stat1_2, cm_stat1_3, cm_stat1_4, cm_stat1_5
]).

sessions('TD Statistiques 1 Groupe 1', statistiques1, el_machkouri, td, GM3_1, [
    td_stat1_1_1, td_stat1_1_2, td_stat1_1_3, td_stat1_1_4, td_stat1_1_5
]).

sessions('TD Statistiques 1 Groupe 2', statistiques1, el_machkouri, td, GM3_2, [
    td_stat1_2_1, td_stat1_2_2, td_stat1_2_3, td_stat1_2_4, td_stat1_2_5
]).

sessions('DS Statistiques 1', statistiques1, el_machkouri, ds, GM3, [
    ds_stat1
]).


% Analyse de données %

sessions('CM Analyse de données', analyse_donnees, beveraggi, cm, GM3, [
    cm_anadon_1, cm_anadon_2, cm_anadon_3, cm_anadon_4, cm_anadon_5
]).

sessions('TD Analyse de données Groupe 1', analyse_donnees, beveraggi, td, GM3_1, [
    td_anadon_1_1, td_anadon_1_2, td_anadon_1_3, td_anadon_1_4, td_anadon_1_5
]).

sessions('TD Analyse de données Groupe 2', analyse_donnees, beveraggi, td, GM3_2, [
    td_anadon_2_1, td_anadon_2_2, td_anadon_2_3, td_anadon_2_4, td_anadon_2_5
]).

sessions('DS Analyse de données', analyse_donnees, beveraggi, ds, GM3, [
    ds_anadon
]).


% Equation différentiel %

sessions('CM Equation différentiel', equa_diff, respondek, cm, GM3, [
    cm_equadiff_1, cm_equadiff_2, cm_equadiff_3, cm_equadiff_4, cm_equadiff_5
]).

sessions('TD Equation différentiel Groupe 1', equa_diff, respondek, td, GM3_1, [
    td_equadiff_1_1, td_equadiff_1_2, td_equadiff_1_3, td_equadiff_1_4, td_equadiff_1_5
]).

sessions('TD Equation différentiel Groupe 2', equa_diff, respondek, td, GM3_2, [
    td_equadiff_2_1, td_equadiff_2_2, td_equadiff_2_3, td_equadiff_2_4, td_equadiff_2_5
]).

sessions('DS Equation différentiel', equa_diff, respondek, ds, GM3, [
    ds_equadiff
]).



% Langage orienté objet %

sessions('CM Langage orienté objet', langage_oriente_objet, itmi, cm, GM3, [
    cm_lanorientobjet_1, cm_lanorientobjet_2, cm_lanorientobjet_3, cm_lanorientobjet_4, cm_lanorientobjet_5
]).

sessions('TD Langage orienté objet Groupe 1', langage_oriente_objet, itmi, td, GM3_1, [
    td_lanorientobjet_1_1, td_lanorientobjet_1_2, td_lanorientobjet_1_3, td_lanorientobjet_1_4, td_lanorientobjet_1_5
]).

sessions('TD Langage orienté objet Groupe 2', langage_oriente_objet, itmi, td, GM3_2, [
    td_lanorientobjet_2_1, td_lanorientobjet_2_2, td_lanorientobjet_2_3, td_lanorientobjet_2_4, td_lanorientobjet_2_5
]).

sessions('DS Langage orienté objet', langage_oriente_objet, itmi, ds, GM3, [
    ds_lanorientobjet
]).




% Système dexploitation %

sessions('CM Système dexploitation', syst_exploitation, jaumat, cm, GM3, [
    cm_systexploit_1, cm_systexploit_2, cm_systexploit_3, cm_systexploit_4, cm_systexploit_5
]).

sessions('TP Système dexploitation Groupe 1', syst_exploitation, jaumat, td, GM3_1, [
    tp_systexploit_1_1, tp_systexploit_1_2, tp_systexploit_1_3, tp_systexploit_1_4, tp_systexploit_1_5
]).

sessions('TP Système dexploitation Groupe 2', syst_exploitation, jaumat, td, GM3_2, [
    tp_systexploit_2_1, tp_systexploit_2_2, tp_systexploit_2_3, tp_systexploit_2_4, tp_systexploit_2_5
]).

sessions('DS Système dexploitation objet', syst_exploitation, jaumat, ds, GM3, [
    ds_systexploit
]).




% Anglais %

sessions('CM Anglais', anglais, milou, cm, GM3, [
    cm_anglais2_2, cm_anglais2_2, cm_anglais2_3, cm_anglais2_4, cm_anglais2_5
]).

sessions('TD Anglais Groupe 1', anglais, milou, td, GM3_1, [
    td_anglais2_1_1, td_anglais2_1_2, td_anglais2_1_3, td_anglais2_1_4, td_anglais2_1_5
]).

sessions('TD Anglais Groupe 2', anglais, milou, td, GM3_2, [
    td_anglais2_2_1, td_anglais2_2_2, td_anglais2_2_3, td_anglais2_2_4, td_anglais2_2_5
]).

sessions('DS Anglais', anglais, milou, ds, GM3, [
    ds_anglais2
]).


% GSF %

sessions('TD GSF Groupe 1', gsf, borel, td, GM3_1, [
    td_gsf2_1_1, td_gsf2_1_2, td_gsf2_1_3, td_gsf2_1_4, td_gsf2_1_5
]).

sessions('TD GSF Groupe 2', gsf, borel, td, GM3_2, [
    td_gsf2_2_1, td_gsf2_2_2, td_gsf2_2_3, td_gsf2_2_4, td_gsf2_2_5
]).

sessions('DS GSF', gsf, borel, ds, GM3, [
    ds_gsf2
]).


% Sport %

sessions('CM Sport', sport, dubois, cm, GM3, [
    cm_sport2_1, cm_sport2_2, cm_sport2_3, cm_sport2_4, cm_sport2_5
]).


% GM4 %


% S7 %

%% MNEDP1 %%

 sessions('CM mnedp1', mnedp1, gout , cm, GM4, [
     cm_mnedp1_1, cm_mnedp1_2, cm_mnedp1_3, cm_mnedp1_4,
     cm_mnedp1_5
 ]).

 sessions('TD mnedp1_groupe1', mnedp1, gout, td, GM4_1, [
     td_mnedp1_1_1, td_mnedp1_1_2, td_mnedp1_1_3, td_mnedp1_1_4,
     td_mnedp1_1_5
 ]).

 sessions('TD mnedp1_groupe2', mnedp1, gout, td, GM4_2, [
     td_mnedp1_2_1, td_mnedp1_2_2, td_mnedp1_2_3, td_mnedp1_2_4,
     td_mnedp1_2_5
 ]).

 sessions('DS mnedp1', mnedp1, gout, ds, GM4, [
     ds_mnedp1
 ]).

%% EDP %%

 sessions('CM edp', edp, le_guyader , cm, GM4, [
     cm_edp_1, cm_edp_2, cm_edp_3, cm_edp_4,
     cm_edp_5
 ]).

 sessions('TD edp_groupe1', edp, le_guyader, td, GM4_1, [
     td_edp_1_1, td_edp_1_2, td_edp_1_3, td_edp_1_4,
     td_edp_1_5
 ]).

 sessions('TD edp_groupe2', edp, le_guyader, td, GM4_2, [
     td_edp_2_1, td_edp_2_2, td_edp_2_3, td_edp_2_4,
     td_edp_2_5
 ]).

 sessions('DS edp', edp, le_guyader, ds, GM4, [
     ds_edp
 ]).

% OPTIMISATION_LINEAIRE %

sessions('CM opti lineaire', opti_lineaire, forcadel , cm, GM4, [
    cm_opti_lineaire_1, cm_opti_lineaire_2, cm_opti_lineaire_3, cm_opti_lineaire_4,
    cm_opti_lineaire_5
]).

sessions('TD opti lineaire groupe1', opti_lineaire, forcadel, td, GM4_1, [
    td_opti_lineaire_1_1, td_opti_lineaire_1_2, td_opti_lineaire_1_3, td_opti_lineaire_1_4,
    td_opti_lineaire_1_5
]).

sessions('TD opti lineaire groupe2', opti_lineaire, forcadel, td, GM4_2, [
    td_opti_lineaire_2_1, td_opti_lineaire_2_2, td_opti_lineaire_2_3, td_opti_lineaire_2_4,
    td_opti_lineaire_2_5
]).

sessions('DS opti lineaire', opti_lineaire, forcadel, ds, GM4, [
    ds_opti_lineaire
]).

% AUTOMATIQUE %

sessions('CM automatique', automatique,el_assoudil , cm, GM4, [
    cm_automatique_1, cm_automatique_2, cm_automatique_3, cm_automatique_4,
    cm_automatique_5
]).

sessions('TD automatique groupe1', automatique, el_assoudi, td, GM4_1, [
    td_automatique_1_1, td_automatique_1_2, td_automatique_1_3, td_automatique_1_4,
    td_automatique_1_5
]).

sessions('TD automatique groupe2', automatique, el_assoudi, td, GM4_2, [
    td_automatique_2_1, td_automatique_2_2, td_automatique_2_3, td_automatique_2_4,
    td_automatique_2_5
]).

sessions('DS automatique', automatique, el_assoudi, ds, GM4, [
    ds_automatique
]).



% MARKOV %

sessions('CM markov', markov, fourati , cm, GM4, [
    cm_markov_1, cm_markov_2, cm_markov_3, cm_markov_4,
    cm_markov_5
]).

sessions('TD markov groupe1', markov, fourati, td, GM4_1, [
    td_markov_1_1, td_markov_1_2, td_markov_1_3, td_markov_1_4,
    td_markov_1_5
]).

sessions('TD markov groupe2', markov, fourati, td, GM4_2, [
    td_markov_2_1, td_markov_2_2, td_markov_2_3, td_markov_2_4,
    td_markov_2_5
]).

sessions('DS markov', markov, fourati, ds, GM4, [
    ds_markov
]).


% STATISTIQUES 2 %

sessions('CM statistiques 2', statistiques2, godichon , cm, GM4, [
    cm_statistiques2_1, cm_statistiques2_2, cm_statistiques2_3, cm_statistiques2_4,
    cm_statistiques2_5
]).

sessions('TD statistiques 2 groupe1', statistiques2, godichon, td, GM4_1, [
    td_statistiques2_1_1, td_statistiques2_1_2, td_statistiques2_1_3, td_statistiques2_1_4,
    td_statistiques2_1_5
]).

sessions('TD statistiques 2 groupe2', statistiques2, godichon, td, GM4_2, [
    td_statistiques2_2_1, td_statistiques2_2_2, td_statistiques2_2_3, td_statistiques2_2_4,
    td_statistiques2_2_5
]).

sessions('DS statistiques 2', statistiques2, godichon, ds, GM4, [
    ds_statistiques2
]).


% JAVA %

sessions('CM java', java, vercouter , cm, GM4, [
    cm_java_1, cm_java_2, cm_java_3, cm_java_4,
    cm_java_5
]).

sessions('TP java groupe1', java, vercouter, tp, GM4_1, [
    tp_java_1_1, tp_java_1_2, tp_java_1_3, tp_java_1_4,
    tp_java_1_5
]).

sessions('TP java groupe2', java, vercouter, td, GM4_2, [
    tp_java_2_1, tp_java_2_2, tp_java_2_3, tp_java_2_4,
    tp_java_2_5
]).

sessions('DS java', java, vercouter, ds, GM4, [
    ds_java
]).

% ALGORITHME STRUCTURE DONNEES %

sessions('CM algo structure de données', algo_structure_donne, abdulrab , cm, GM4, [
    cm_algo_structure_donne_1, cm_algo_structure_donne_2, cm_algo_structure_donne_3, cm_algo_structure_donne_4,
    cm_algo_structure_donne_5
]).

sessions('TD algo structure de données groupe 1', algo_structure_donne, abdulrab, td, GM4_1, [
    td_algo_structure_donne_1_1, td_algo_structure_donne_1_2, td_algo_structure_donne_1_3, td_algo_structure_donne_1_4,
    td_algo_structure_donne_1_5
]).

sessions('TD algo structure de données groupe 2', algo_structure_donne, abdulrab, td, GM4_2, [
    td_algo_structure_donne_2_1, td_algo_structure_donne_2_2, td_algo_structure_donne_2_3, td_algo_structure_donne_2_4,
    td_algo_structure_donne_2_5
]).

sessions('DS algo structure de données', algo_structure_donne, abdulrab, ds, GM4, [
    ds_algo_structure_donne
]).


% Anglais %

sessions('CM Anglais', anglais, milou, cm, GM4, [
    cm_anglais3_2, cm_anglais3_2, cm_anglais3_3, cm_anglais3_4, cm_anglais3_5
]).

sessions('TD Anglais Groupe 1', anglais, milou, td, GM4_1, [
    td_anglais3_1_1, td_anglais3_1_2, td_anglais3_1_3, td_anglais3_1_4, td_anglais3_1_5
]).

sessions('TD Anglais Groupe 2', anglais, milou, td, GM4_2, [
    td_anglais3_2_1, td_anglais3_2_2, td_anglais3_2_3, td_anglais3_2_4, td_anglais3_2_5
]).

sessions('DS Anglais', anglais, milou, ds, GM4, [
    ds_anglais3
]).


% GSF %

sessions('TD GSF Groupe 1', gsf, borel, td, GM4_1, [
    td_gsf3_1_1, td_gsf3_1_2, td_gsf3_1_3, td_gsf3_1_4, td_gsf3_1_5
]).

sessions('TD GSF Groupe 2', gsf, borel, td, GM4_2, [
    td_gsf3_2_1, td_gsf3_2_2, td_gsf3_2_3, td_gsf3_2_4, td_gsf3_2_5
]).

sessions('DS GSF', gsf, borel, ds, GM4, [
    ds_gsf3
]).

% Sport %

sessions('CM Sport', sport, dubois, cm, GM3, [
    cm_sport3_1, cm_sport3_2, cm_sport3_3, cm_sport3_4, cm_sport3_5
]).


%s9%

% MNEDP2 %

sessions('CM mnedp2', mnedp2, gout , cm, GM4, [
    cm_mnedp2_1, cm_mnedp2_2, cm_mnedp2_3, cm_mnedp2_4,
    cm_mnedp2_5
]).

sessions('TD mnedp2 groupe1', mnedp2, gout, td, GM4_1, [
    td_mnedp2_1_1, td_mnedp2_1_2, td_mnedp2_1_3, td_mnedp2_1_4,
    td_mnedp2_1_5
]).

sessions('TD mnedp2 groupe2', mnedp2, gout, td, GM4_2, [
    td_mnedp2_2_1, td_mnedp2_2_2, td_mnedp2_2_3, td_mnedp2_2_4,
    td_mnedp2_2_5
]).

sessions('DS mnedp2', mnedp2, gout, ds, GM4, [
    ds_mnedp2
]).


% B SPLINES %

sessions('CM b_spline', b_spline, le_guyader , cm, GM4, [
    cm_b_spline_1, cm_b_spline_2, cm_b_spline_3, cm_b_spline_4,
    cm_b_spline_5
]).

sessions('TD b_spline groupe1', b_spline, le_guyader, td, GM4_1, [
    td_b_spline_1_1, td_b_spline_1_2, td_b_spline_1_3, td_b_spline_1_4,
    td_b_spline_1_5
]).

sessions('TD b_spline groupe2', b_spline, le_guyader, td, GM4_2, [
    td_b_spline_2_1, td_b_spline_2_2, td_b_spline_2_3
]).

sessions('TP b_spline groupe2', b_spline, le_guyader, tp, GM4_1, [
    tp_b_spline_1_1, tp_b_spline_1_2
]).

sessions('TP b_spline groupe2', b_spline, le_guyader, tp, GM4_2, [
    tp_b_spline_2_1, tp_b_spline_2_2
]).

sessions('DS b_spline', b_spline, le_guyader, ds, GM4, [
    ds_b_spline
]).


% SIGNAL 2 %

sessions('CM signal2', signal2, fortier , cm, GM4, [
    cm_signal2_1, cm_signal2_2, cm_signal2_3, cm_signal2_4,
    cm_signal2_5
]).

sessions('TD signal2 groupe1', signal2, fortier, td, GM4_1, [
    td_signal2_1_1, td_signal2_1_2, td_signal2_1_3, td_signal2_1_4,
    td_signal2_1_5
]).

sessions('TD signal2 groupe2', signal2, fortier, td, GM4_2, [
    td_signal2_2_1, td_signal2_2_2, td_signal2_2_3, td_signal2_2_4,
    td_signal2_2_5
]).

sessions('DS signal2', signal2, fortier, ds, GM4, [
    ds_signal2
]).


% OTPIMISATION COMBINATOIRE %

sessions('CM opti combinatoire', opti_combinatoire, knippel , cm, GM4, [
    cm_opti_combinatoire_1, cm_opti_combinatoire_2, cm_opti_combinatoire_3, cm_opti_combinatoire_4,
    cm_opti_combinatoire_5
]).

sessions('TD opti combinatoire groupe1', opti_combinatoire, knippel, td, GM4_1, [
    td_opti_combinatoire_1_1, td_opti_combinatoire_1_2, td_opti_combinatoire_1_3, td_opti_combinatoire_1_4,
    td_opti_combinatoire_1_5
]).

sessions('TD opti combinatoire groupe2', opti_combinatoire, knippel, td, GM4_2, [
    td_opti_combinatoire_2_1, td_opti_combinatoire_2_2, td_opti_combinatoire_2_3, td_opti_combinatoire_2_4,
    td_opti_combinatoire_2_5
]).

sessions('DS opti combinatoire', opti_combinatoire, knippel, ds, GM4, [
    ds_opti_combinatoire
]).


% TECHNO WEB %

sessions('CM technoweb', technoweb, zanni_merk , cm, GM4, [
    cm_technoweb_1, cm_technoweb_2, cm_technoweb_3, cm_technoweb_4,
    cm_technoweb_5
]).

sessions('TP technoweb groupe1', technoweb, zanni_merk, tp, GM4_1, [
    tp_technoweb_1_1, tp_technoweb_1_2, tp_technoweb_1_3, tp_technoweb_1_4,
    tp_technoweb_1_5
]).

sessions('TP technoweb groupe2', technoweb, zanni_merk, tp, GM4_2, [
    tp_technoweb_2_1, tp_technoweb_2_2, tp_technoweb_2_3, tp_technoweb_2_4,
    tp_technoweb_2_5
]).

sessions('DS techno web', technoweb, zanni_merk, ds, GM4, [
    ds_technoweb
]).

% C++ %

sessions('CM c++', cplusplus, kotowicz , cm, GM4, [
    cm_cplusplus_1, cm_cplusplus_2, cm_cplusplus_3, cm_cplusplus_4,
    cm_cplusplus_5
]).

sessions('TP c++ groupe1', cplusplus, kotowicz, td, GM4_1, [
    tp_cplusplus_1_1, tp_cplusplus_1_2, tp_cplusplus_1_3, tp_cplusplus_1_4,
    tp_cplusplus_1_5
]).

sessions('TP c++ groupe2', cplusplus, kotowicz, td, GM4_2, [
    tp_cplusplus_2_1, tp_cplusplus_2_2, tp_cplusplus_2_3, tp_cplusplus_2_4,
    tp_cplusplus_2_5
]).

sessions('DS c++', cplusplus, kotowicz, ds, GM4, [
    ds_cplusplus
]).


% BASE DONNEES %

sessions('CM base de donnees', base_de_donnee, chaignaud , cm, GM4, [
    cm_base_de_donnee_1, cm_base_de_donnee_2, cm_base_de_donnee_3, cm_base_de_donnee_4,
    cm_base_de_donnee_5
]).

sessions('TD base de donnees groupe1', base_de_donnee, chaignaud, td, GM4_1, [
    td_base_de_donnee_1_1, td_base_de_donnee_1_2, td_base_de_donnee_1_3, td_base_de_donnee_1_4,
    td_base_de_donnee_1_5
]).

sessions('TD base de donnees groupe2', base_de_donnee, chaignaud, td, GM4_2, [
    td_base_de_donnee_2_1, td_base_de_donnee_2_2, td_base_de_donnee_2_3, td_base_de_donnee_2_4,
    td_base_de_donnee_2_5
]).

sessions('DS base de donnees', base_de_donnee, chaignaud, ds, GM4, [
    ds_base_de_donnee
]).

% Anglais %

sessions('CM Anglais', anglais, milou, cm, GM4, [
    cm_anglais4_2, cm_anglais4_2, cm_anglais4_3, cm_anglais4_4, cm_anglais4_5
]).

sessions('TD Anglais Groupe 1', anglais, milou, td, GM4_1, [
    td_anglais4_1_1, td_anglais4_1_2, td_anglais4_1_3, td_anglais4_1_4, td_anglais4_1_5
]).

sessions('TD Anglais Groupe 2', anglais, milou, td, GM4_2, [
    td_anglais4_2_1, td_anglais4_2_2, td_anglais4_2_3, td_anglais4_2_4, td_anglais4_2_5
]).

sessions('DS Anglais', anglais, milou, ds, GM4, [
    ds_anglais4
]).


% GSF %

sessions('TD GSF Groupe 1', gsf, borel, td, GM4_1, [
    td_gsf4_1_1, td_gsf4_1_2, td_gsf4_1_3, td_gsf4_1_4, td_gsf4_1_5
]).

sessions('TD GSF Groupe 2', gsf, borel, td, GM4_2, [
    td_gsf4_2_1, td_gsf4_2_2, td_gsf4_2_3, td_gsf4_2_4, td_gsf4_2_5
]).

sessions('DS GSF', gsf, borel, ds, GM4, [
    ds_gsf4
]).


% Sport %

sessions('CM Sport', sport, dubois, cm, GM3, [
    cm_sport4_1, cm_sport4_2, cm_sport4_3, cm_sport4_4, cm_sport4_5
]).





%% REGRESSION NON LINEAIRE %%

 sessions('CM regression non linéaire', regression_non_lineaire, portier , cm, GM5, [
     cm_regression_non_lineaire_1, cm_regression_non_lineaire_2, cm_regression_non_lineaire_3, cm_regression_non_lineaire_4,
     cm_regression_non_lineaire_5
 ]).

 sessions('TP regression non linéaire groupe 1', regression_non_lineaire, portier, tp, GM5_1, [
     tp_regression_non_lineaire_1_1, tp_regression_non_lineaire_1_2, tp_regression_non_lineaire_1_3, tp_regression_non_lineaire_1_4,
     tp_regression_non_lineaire_1_5
 ]).

 sessions('TP regression non linéaire groupe 2', regression_non_lineaire, portier, tp, GM5_2, [
     tp_regression_non_lineaire_2_1, tp_regression_non_lineaire_2_2, tp_regression_non_lineaire_2_3, tp_regression_non_lineaire_2_4,
     tp_regression_non_lineaire_2_5
 ]).


 % HAD %%

  sessions('CM heuristique et aide à la décision', had, itmi , cm, GM5, [
      cm_had_1, cm_had_2, cm_had_3, cm_had_4,
      cm_had_5
  ]).

  sessions('TD heuristique et aide à la décision groupe 1', had, itmi, td, GM5_1, [
      td_had_1_1, td_had_1_2, td_had_1_3, td_had_1_4,
      td_had_1_5
  ]).

  sessions('TD heuristique et aide à la décision groupe 2', had, itmi, td, GM5_2, [
      td_had_2_1, td_had_2_2, td_had_2_3, td_had_2_4,
      td_had_2_5
  ]).



  % HAMILTON JACOBI %%

   sessions('CM Hamilton Jacobi', hamilton_jacobi, forcadel , cm, GM5, [
       cm_hamilton_jacobi_1, cm_hamilton_jacobi_2, cm_hamilton_jacobi_3, cm_hamilton_jacobi_4,
       cm_hamilton_jacobi_5
   ]).

   sessions('TD Hamilton Jacobi groupe 1', hamilton_jacobi, forcadel, td, GM5_1, [
       td_hamilton_jacobi_1_1, td_hamilton_jacobi_1_2, td_hamilton_jacobi_1_3, td_hamilton_jacobi_1_4,
       td_hamilton_jacobi_1_5
   ]).

   sessions('TD Hamilton Jacobi groupe 2', hamilton_jacobi, forcadel, td, GM5_2, [
       td_hamilton_jacobi_2_1, td_hamilton_jacobi_2_2, td_hamilton_jacobi_2_3, td_hamilton_jacobi_2_4,
       td_hamilton_jacobi_2_5
   ]).



   % AUTOMATIQUE NON LINEAIRE %%

    sessions('CM automatique non linéaire', auto_non_lineaire, el_assoudi , cm, GM5, [
        cm_auto_non_lineaire_1, cm_auto_non_lineaire_2, cm_auto_non_lineaire_3, cm_auto_non_lineaire_4,
        cm_auto_non_lineaire_5
    ]).

    sessions('TD automatique non linéaire groupe 1', auto_non_lineaire, el_assoudi, td, GM5_1, [
        td_auto_non_lineaire_1_1, td_auto_non_lineaire_1_2, td_auto_non_lineaire_1_3, td_auto_non_lineaire_1_4,
        td_auto_non_lineaire_1_5
    ]).

    sessions('TD automatique non linéaire groupe 2', auto_non_lineaire, el_assoudi, td, GM5_2, [
        td_auto_non_lineaire_2_1, td_auto_non_lineaire_2_2, td_auto_non_lineaire_2_3, td_auto_non_lineaire_2_4,
        td_auto_non_lineaire_2_5
    ]).

    sessions('DS automatique non linéaire', auto_non_lineaire, el_assoudi, ds, GM5, [
        ds_auto_non_lineaire
    ]).

    % CALCUL PARALLELLE %%

     sessions('CM calcul parallèle', calcul_parallelle, le_guyader , cm, GM5, [
         cm_calcul_parallelle_1, cm_calcul_parallelle_2, cm_calcul_parallelle_3, cm_calcul_parallelle_4,
         cm_calcul_parallelle_5
     ]).

     sessions('TD calcul parallèle groupe 1', calcul_parallelle, le_guyader, td, GM5_1, [
         td_calcul_parallelle_1_1, td_calcul_parallelle_1_2, td_calcul_parallelle_1_3, td_calcul_parallelle_1_4,
         td_calcul_parallelle_1_5
     ]).

     sessions('TD calcul parallèle groupe 2', calcul_parallelle, le_guyader, td, GM5_2, [
         td_calcul_parallelle_2_1, td_calcul_parallelle_2_2, td_calcul_parallelle_2_3, td_calcul_parallelle_2_4,
         td_calcul_parallelle_2_5
     ]).



     % PROGRAMMATION LOGIQUE CONTRAINTE %%

      sessions('CM programmation_logique_contrainte', programmation_logique_contrainte, abdulrab , cm, GM5, [
          cm_programmation_logique_contrainte_1, cm_programmation_logique_contrainte_2, cm_programmation_logique_contrainte_3, cm_programmation_logique_contrainte_4,
          cm_programmation_logique_contrainte_5
      ]).

      sessions('TD programmation_logique_contrainte groupe 1', programmation_logique_contrainte, abdulrab, td, GM5_1, [
          td_programmation_logique_contrainte_1_1, td_programmation_logique_contrainte_1_2, td_programmation_logique_contrainte_1_3, td_programmation_logique_contrainte_1_4,
          td_programmation_logique_contrainte_1_5
      ]).

      sessions('td programmation_logique_contrainte groupe 2', programmation_logique_contrainte, abdulrab, td, GM5_2, [
          td_programmation_logique_contrainte_2_1, td_programmation_logique_contrainte_2_2, td_programmation_logique_contrainte_2_3, td_programmation_logique_contrainte_2_4,
          td_programmation_logique_contrainte_2_5
      ]).

      sessions('DS programmation_logique_contrainte', programmation_logique_contrainte, abdulrab, ds, GM5, [
          ds_programmation_logique_contrainte
      ]).

% s10 %

      % MACHINE LEARNING %%

  sessions('CM machine_learning', machine_learning, zanni_merk , cm, GM5, [
      cm_machine_learning_1, cm_machine_learning_2, cm_machine_learning_3, cm_machine_learning_4,
      cm_machine_learning_5
  ]).

  sessions('TD machine learning groupe1', machine_learning, zanni_merk, td, GM5_1, [
      td_machine_learning_1_1, td_machine_learning_1_2, td_machine_learning_1_3, td_machine_learning_1_4,
      td_machine_learning_1_5
  ]).

  sessions('TD machine learning groupe2', machine_learning, zanni_merk, td, GM5_2, [
      td_machine_learning_2_1, td_machine_learning_2_2, td_machine_learning_2_3, td_machine_learning_2_4,
      td_machine_learning_2_5
  ]).

  % TRAITEMENT IMAGE %%

   sessions('CM traitement image', traitement_image, zanni_merk , cm, GM5, [
       cm_traitement_image_1, cm_traitement_image_2, cm_traitement_image_3, cm_traitement_image_4,
       cm_traitement_image_5
   ]).

   sessions('TD traitement image groupe1', traitement_image, zanni_merk, td, GM5_1, [
       td_traitement_image_1_1, td_traitement_image_1_2, td_traitement_image_1_3, td_traitement_image_1_4,
       td_traitement_image_1_5
   ]).

   sessions('TD traitement image groupe2', traitement_image, zanni_merk, td, GM5_2, [
       td_traitement_image_2_1, td_traitement_image_2_2, td_traitement_image_2_3, td_traitement_image_2_4,
       td_traitement_image_2_5
   ]).


   % CALCUL STOCHASTIQUE %%

    sessions('CM calcul sto', calcul_sto, ciotir , cm, GM5, [
        cm_calcul_sto_1, cm_calcul_sto_2, cm_calcul_sto_3, cm_calcul_sto_4,
        cm_calcul_sto_5
    ]).

    sessions('TD calcul sto groupe1', calcul_sto, ciotir, td, GM5_1, [
        td_calcul_sto_1_1, td_calcul_sto_1_2, td_calcul_sto_1_3, td_calcul_sto_1_4,
        td_calcul_sto_1_5
    ]).

    sessions('TD calcul sto groupe2', calcul_sto, ciotir, td, GM5_2, [
        td_calcul_sto_2_1, td_calcul_sto_2_2, td_calcul_sto_2_3, td_calcul_sto_2_4,
        td_calcul_sto_2_5
    ]).


    % REALITE VIRTUELLE %%

     sessions('CM realite virtuelle', realite_virtuelle, saunier , cm, GM5, [
         cm_realite_virtuelle_1, cm_realite_virtuelle_2, cm_realite_virtuelle_3, cm_realite_virtuelle_4,
         cm_realite_virtuelle_5
     ]).

     sessions('TD realite virtuelle groupe1', realite_virtuelle, saunier, td, GM5_1, [
         td_realite_virtuelle_1_1, td_realite_virtuelle_1_2, td_realite_virtuelle_1_3, td_realite_virtuelle_1_4,
         td_realite_virtuelle_1_5
     ]).

     sessions('TD realite virtuelle groupe2', realite_virtuelle, saunier, td, GM5_2, [
         td_realite_virtuelle_2_1, td_realite_virtuelle_2_2, td_realite_virtuelle_2_3, td_realite_virtuelle_2_4,
         td_realite_virtuelle_2_5
     ]).






:- dynamic session/4.


:- dynamic groupSession/2.


:- dynamic profesorSession/2.




:- dynamic followingSession/2.


followingSession(td_signal1_1_5, cm_signal1_5).
followingSession(td_signal1_2_5, cm_signal1_5).







followingSession(ds_ananum1, td_ananum1_2_5, 5, 15).
followingSession(ds_ananum2, td_ananum2_2_5, 5, 15).
followingSession(ds_mesure, td_mesure_2_5, 5, 15).
followingSession(ds_fortran, td_fortran_2_5, 5, 15).
followingSession(ds_proba, td_proba_2_5, 5, 15).
followingSession(ds_opti_discrete, td_opti_discrete_2_5, 5, 15).
followingSession(ds_signal1, td_signal1_2_5, 5, 15).
followingSession(ds_signal2, td_signal2_2_5, 5, 15).
followingSession(ds_C, td_C_2_5, 5, 15).






computeProfesorSession(P, Session) :-
    \+ is_list(P),
    assertz(profesorSession(P, Session)).
computeProfesorSession([], _).
computeProfesorSession([P|Profesors], Session) :- % si plusieurs profs par séance
    computeProfesorSession(P, Session),
    computeProfesorSession(Profesors, Session).


computeSession(name, Mat, Profesors, Type, group, [X]) :-
    computeProfesorSession(Profesors, X),
    assertz(groupSession(group, X)),
    assertz(session(X, Type, Mat, name)).
computeSession(name, Mat, Profesors, Type, group, [X, Y|S]) :-
    (followingSession(Y, X, _, _); assertz(followingSession(Y, X))),
    computeSession(name, Mat, Profesors, Type, group, [X]),
    computeSession(name, Mat, Profesors, Type, group, [Y|S]).



:- forall(
    sessions(name, Mat, Profesor, Type, group, Ids),
    (
        computeSession(name, Mat, Profesor, Type, group, Ids)
    )
).
