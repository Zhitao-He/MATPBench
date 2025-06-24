####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section OrthocenterMidpoint.

Variable R : realType.
Let point := 'rV[R]_2.

Variables A B C H D E F : point.

Hypothesis ABC_triangle : ~colinear A B C.
Hypothesis H_orthocenter : is_orthocenter H A B C.
Hypothesis D_midpoint : D = midpoint B C.

(* EF is line through H perpendicular to DH *)
Hypothesis EF_line : on_line E H F /\ perpendicular (seg E F) (seg D H).
Hypothesis E_on_AB : on_line E A B.
Hypothesis F_on_AC : on_line F A C.

Theorem H_is_midpoint : is_midpoint H E F.
Proof. Admitted.

End OrthocenterMidpoint.
####