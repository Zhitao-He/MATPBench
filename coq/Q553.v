####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points *)
Variables A B C D Q : 'e2[R].

(* Hypotheses on the configuration *)
Hypothesis D_on_AB : colinear A D B /\ between A D B.
Hypothesis B_on_DC : colinear D B C /\ between D B C.
Hypothesis QC_eq_8 : `|Q - C| = 8.
Hypothesis QB_eq_6 : `|Q - B| = 6.
Hypothesis AB_parallel_DC : parallel (A - B) (D - C).

(* The unknown length x is |B - C| *)
Let x := `|B - C|.

Theorem geometry_QC8_AB_parallel_x_eq_2 :
  x = 2.
Proof. Admitted.
####