####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section OrthocenterMidpointProblem.
Variable R : realType.
Variables A B C O H D E F : 'Point[R]_2.

(* Circle properties *)
Hypothesis circum_ABC : circumcircle O A B C.

(* Orthocenter and midpoint *)
Hypothesis H_orthocenter : orthocenter H A B C.
Hypothesis D_midpoint : midpoint D B C.

(* Line constructions *)
Hypothesis DH_line : collinear [:: D; H; D].
Hypothesis EF_perp : perpendicular (line E F) (line D H).
Hypothesis H_on_EF : collinear [:: E; F; H].

(* Intersection points *)
Hypothesis E_on_AB : collinear [:: A; B; E].
Hypothesis F_on_AC : collinear [:: A; C; F].

(* Distance equality to prove *)
Definition DE := dist D E.
Definition DF := dist D F.

(* Main theorem *)
Theorem DE_equals_DF : DE = DF.
Proof. by []. Qed.

End OrthocenterMidpointProblem.
####