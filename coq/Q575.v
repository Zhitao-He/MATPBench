####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem measure_of_angle_LKJ_31 :
  forall (J K L A : R^2),
    (* J, K, L are noncollinear points *)
    ~~ colinear [:: J; K; L] ->
    (* Points J, L, A are collinear, with L between J and A *)
    colinear [:: J; L; A] /\
    (norm (L - J) < norm (A - J)) /\
    (* Angle at KJL = (2x+27) deg, at JKL = (2x-11) deg, at JLA = 100 deg *)
    exists x : R,
      angle K J L = (2 * x + 27)%:R / 180 * PI /\
      angle J K L = (2 * x - 11)%:R / 180 * PI /\
      angle J L A = (100)%:R / 180 * PI ->
    (* Then the value of angle LKJ is 31 deg *)
      angle L K J = (31)%:R / 180 * PI.
Proof. Admitted.
####