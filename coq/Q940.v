####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Open Scope ring_scope.

Variable R : realType.

Section GeometryProblem.

Variable A B C D E F P Q : 'rV[R]_2.

Hypothesis quad_strict_convex : convex_quadrilateral A B C D.

(* AC bisects angle BAD *)
Hypothesis ac_bisects_bad :
  angle_bisector_at_point A B A C D.

(* E on BC, F on CD, EF // BD *)
Hypothesis E_on_BC : on_line E (Line B C).
Hypothesis F_on_CD : on_line F (Line C D).
Hypothesis EF_parallel_BD : parallel (Line E F) (Line B D).

(* P on extension of FA beyond A, Q on extension of EA beyond A *)
Hypothesis P_on_FA_ext : on_line P (Line F A) /\ (collinear P F A) /\ ~ between F A P.
Hypothesis Q_on_EA_ext : on_line Q (Line E A) /\ (collinear Q E A) /\ ~ between E A Q.

(* Circumcircle omega_1 of ABP tangent to line AC *)
Hypothesis omega1_circumcircle : circumcircle_exists A B P.
Hypothesis omega1_tangent_AC :
  tangent_at_line (circumcircle A B P) (Line A C).

(* Circumcircle omega_2 of ADQ tangent to line AC *)
Hypothesis omega2_circumcircle : circumcircle_exists A D Q.
Hypothesis omega2_tangent_AC :
  tangent_at_line (circumcircle A D Q) (Line A C).

Theorem geometry_colcyclic_BPQD :
  concyclic B P Q D.
Proof. Admitted.

End GeometryProblem.
####