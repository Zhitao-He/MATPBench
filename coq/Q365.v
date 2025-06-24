####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section TriangleAreaCalculation.

Variable R : realType.

(* Points *)
Variables Q R S P : 'rV[R]_2.

(* Given conditions *)
Hypothesis QR_length : norm (Q - R) = 8%:R.
Hypothesis PR_length : norm (P - R) = 12%:R.
Hypothesis angle_PRQ : angle (P - R) (Q - R) = 2%:R * PI / 3%:R.
Hypothesis angle_RPS : angle (S - R) (P - R) = PI / 2%:R.

(* Theorem to prove *)
Theorem area_QPS_is_96sqrt3 :
  let QS := fun t => R + t *: (S - R) in
  exists t, 0 < t /\ norm (P - QS t) = norm (S - QS t) /\n  let area := 0.5 * norm (Q - P) * norm (S - P) * sin (angle (Q - P) (S - P)) in
  area = 96%:R * sqrt 3%:R.
Proof. Admitted.

End TriangleAreaCalculation.
####