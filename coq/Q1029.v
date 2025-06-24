####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Cyclic_AFOE.

Variable R : realType.
Let point := 'rV[R]_2.

Variables A B C O : point.
Variable D : point.

Hypothesis not_collinear_ABC : ~ colinear A B C.
Hypothesis O_circumcenter : is_circumcenter O A B C.
Hypothesis D_on_BC : on_line D B C.

(* F is intersection of AB and perpendicular bisector of BD *)
Variable F : point.
Hypothesis F_on_AB : on_line F A B.
Hypothesis F_on_bisector_BD : is_perpendicular_bisector F B D.

(* E is intersection of AC and perpendicular bisector of CD *)
Variable E : point.
Hypothesis E_on_AC : on_line E A C.
Hypothesis E_on_bisector_CD : is_perpendicular_bisector E C D.

Theorem cyclic_AFOE : concyclic A F O E.
Proof. Admitted.

End Cyclic_AFOE.
####