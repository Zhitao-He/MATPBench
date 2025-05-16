####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Incircle_Midpoint_Theorem.

Variable R : realType.

Variables A B C : 'rV[R]_2.
Hypothesis non_collinear_ABC : ~ colinear A B C.

(* Definition of incenter I and incircle ω *)
Variable I : 'rV[R]_2.
Variable r : R.
Hypothesis incircle_def : incircle A B C I r.

(* D: point where the incircle is tangent to BC *)
Variable D : 'rV[R]_2.
Hypothesis D_on_BC : on_line D B C.
Hypothesis D_on_inc : on_circle D I r.
Hypothesis incircle_tangent_D : tangent_point I r B C D.

(* AD is cevian from A through D *)
(* IE is parallel to AD, passes through I, and meets BC at E *)
Variable E : 'rV[R]_2.
Hypothesis E_on_BC : on_line E B C.
Hypothesis IE_parallel_AD : parallel (line_through I E) (line_through A D).
Hypothesis I_neq_E : I != E.

(* Tangent to ω at E meets AB at F and AC at G *)
Variable F : 'rV[R]_2.
Variable G : 'rV[R]_2.
Hypothesis E_on_inc : on_circle E I r.
Hypothesis tangent_E : tangent_at_point I r E (line_through F G).
Hypothesis F_on_AB : on_line F A B.
Hypothesis G_on_AC : on_line G A C.
Hypothesis tangent_line_E : tangent_point I r F G E.

Theorem incircle_midpoint_FGE :
    midpoint E F G.
Proof. Admitted.

End Incircle_Midpoint_Theorem.
####