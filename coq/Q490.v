####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Length_BC_Theorem.

Variable R : realType.

Variables A B C D E : 'rV[R]_2.

Hypothesis colA : A != B.
Hypothesis colB : B != C.
Hypothesis colD : D != E.

(* Given: A, B, C, D, E are points in the plane *)
(* AB = 8, BE = 12, AD = 27, E in between B and D with BE:ED = AB:AD *)
Hypothesis AB8 : normr (B - A) = 8.
Hypothesis BE12 : normr (E - B) = 12.
Hypothesis AD27 : normr (D - A) = 27.
Hypothesis AEplusEB : exists t : R, 0 < t < 1 /\ E = (1 - t) *: B + t *: D.
Hypothesis parallelogram : (C - B) = (D - E).

Theorem value_length_BC : normr (C - B) = 10.
Proof. Admitted.

End Length_BC_Theorem.
####