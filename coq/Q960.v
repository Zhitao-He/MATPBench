####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Geometry_Theorem.

Variable R : realType.

(* Points *)
Variables A B C D E F G M O : 'rV[R]_2.

(* Hypotheses: *)

Hypothesis distinct_ABC : colinear A B C = false.
Hypothesis D_on_BC : on_line D B C.
Hypothesis D_neq_B : D != B.
Hypothesis D_neq_C : D != C.
Hypothesis DAC_eq_ABD : angle D A C = angle A B D.

Hypothesis circleO_through_BD : on_circle O B /\ on_circle O D.
Hypothesis E_on_AB : on_line E A B.
Hypothesis E_on_circleO : on_circle O E.
Hypothesis F_on_AD : on_line F A D.
Hypothesis F_on_circleO : on_circle O F.

Hypothesis E_neq_A : E != A.
Hypothesis E_neq_B : E != B.
Hypothesis E_neq_D : E != D.
Hypothesis F_neq_A : F != A.
Hypothesis F_neq_D : F != D.
Hypothesis F_neq_B : F != B.

Hypothesis G_on_BF : on_line G B F.
Hypothesis G_on_DE : on_line G D E.

Hypothesis M_midpoint_AG : M = ((A + G) / 2)%R.

(* Conclusion: CM is parallel to AO *)

Theorem triangle_circ_parallel :
  parallel C M A O.
Proof. Admitted.

End Geometry_Theorem.
####