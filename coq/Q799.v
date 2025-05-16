####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem value_cos_angle_NMP :
  forall (M N P : 'rV[R]_2),
    (* Points M, N, P in the plane *)
    normr (N - M) = 39 ->
    normr (P - M) = 36 ->
    normr (N - P) = 15 ->
    (* Triangle MNP is right at P *)
    [angle N P M] = Num.pi / 2 ->
    cos ([angle N M P]) = 12 / 13.
Proof. Admitted.
####