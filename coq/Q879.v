####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section geometry_problem.

Variable R : realType.

Variables A B C D E : 'e2_(R).
Variable t : R.

Hypotheses
  (H_CA : dist C A = 10)
  (H_CD : exists k1 : R, 0 < k1 < 1 /\D = C + k1 *: (A - C) /\dist C D = 2)
  (H_CB : exists k2 : R, 0 < k2 < 1 /\B = C + k2 *: (A - C))
  (H_CE : exists l1 : R, 0 < l1 < 1 /\E = C + l1 *: (B - C) /\dist C E = t - 2)
  (H_CB_length : dist C B = t + 1)
  (H_DE_parallel_AB : exists k3 : R, (E - D) = k3 *: (B - A)).

Theorem value_of_t : t = 3.
Proof.
  (* proof omitted *)
Admitted.

End geometry_problem.
####