####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section TriangleMidline.

Variable R : realType.
Variables A B C D E : 'rV[R]_2.

(* Hypotheses *)
Hypothesis H_D_midpoint : D = (A + B) / 2%:R.
Hypothesis H_E_midpoint : E = (A + C) / 2%:R.
Hypothesis H_BC_length : norm (B - C) = 6%:R.

(* Theorem to prove DE = 3 *)
Theorem midline_length : 
  norm (D - E) = 3%:R.
Proof. Admitted.

End TriangleMidline.
####