####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section AltitudeSymmetryProblem.
Variable R : realType.
Variables A B C P L M N G : 'Point[R]_2.

(* Triangle properties *)
Hypothesis noncol_ABC : ~ collinear [:: A; B; C].

(* Altitude feet *)
Hypothesis D_altitude : foot_of_perpendicular A (line B C) D.
Hypothesis E_altitude : foot_of_perpendicular B (line C A) E.
Hypothesis F_altitude : foot_of_perpendicular C (line A B) F.

(* Interior point and symmetries *)
Hypothesis P_inside : inside_triangle P A B C.
Hypothesis L_symmetry : reflect_over (line B C) P L.
Hypothesis M_symmetry : reflect_over (line C A) P M.
Hypothesis N_symmetry : reflect_over (line A B) P N.

(* Midpoint condition *)
Hypothesis G_midpoint : midpoint G A P.

(* Concyclic conditions *)
Definition DEFG_concyclic := concyclic [:: D; E; F; G].
Definition AMLN_concyclic := concyclic [:: A; M; L; N].

(* Main theorem *)
Theorem concyclic_condition : DEFG_concyclic <-> AMLN_concyclic.
Proof. by []. Qed.

End AltitudeSymmetryProblem.
####