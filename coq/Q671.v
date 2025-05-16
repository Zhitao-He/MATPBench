####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section AngleProblem.

Variable R : realType.

Variables A B C D F : R^2.
Variable x : R.

Hypothesis distinct_points : forall P Q : R^2, P <> Q.

(* The measure of angle ABD is (x + 14) degrees *)
Hypothesis angle_ABD : angle_deg A B D = x + 14.

(* The measure of angle ABF is 3x - 8 degrees *)
Hypothesis angle_ABF : angle_deg A B F = 3 * x - 8.

Theorem angle_ABD_50 :
  angle_deg A B D = 50.
Proof. Admitted.

End AngleProblem.
####