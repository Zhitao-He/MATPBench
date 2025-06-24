####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem hyperbola_equation_confirmation :
  forall x y : R,
    (y^+2 / 16 - x^+2 / 25 = 1) <->
    ((y = 4 /\ x = 0) \/ (y = -4 /\ x = 0) /\
     (exists a b : R, a = 4 / 5 /\ b = -4 / 5 /\
       (forall x0, x0 <> 0 ->
         (exists yp, yp^+2 / 16 - (x0)^+2 / 25 = 1 /\ `|yp - a * x0| < 1) /\
         (exists ym, ym^+2 / 16 - (x0)^+2 / 25 = 1 /\ `|ym - b * x0| < 1))).
Proof. Admitted.
####