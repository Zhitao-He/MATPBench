####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section geometry_RST_problem.

Variable R : realType.

(* Points *)
Variables O U R S T : 'rV[R]_2.

Hypothesis Hcircle : on_circle O R U /\ on_circle O R R /\ on_circle O R T.

Hypothesis Hcenter : O \neq U /\ O \neq R /\ O \neq T.

(* The circle has center O, with points U, R, T on the circle *)
(* R, S, T are collinear in this order *)
Hypothesis Hcollinear_RST : collinear R S T.

(* The points are distinct *)
Hypothesis Hdistinct : U \neq R /\ U \neq T /\ R \neq T /\ R \neq S /\ S \neq T.

(* OR is perpendicular to RS *)
Hypothesis Hortho : [<: (S - R), (O - R) :>] = 0.

(* The angle UOT = 71 degrees *)
Hypothesis HUOT_71 : angle_deg U O T = 71.

Theorem value_of_angle_RST :
  angle_deg R S T = 55.
Proof. Admitted.

End geometry_RST_problem.
####