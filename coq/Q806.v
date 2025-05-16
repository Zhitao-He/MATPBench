####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem value_tan_angle_SRT :
  exists S R T : {pt R^2},
    S <> R /\ R <> T /\ S <> T /\
    dist S R = 5%:R /\ dist S T = 4%:R /\ dist R T = 3%:R /\
    right_angle S T R /\
    tan (angle S R T) = 4 / 3.
Proof. Admitted.
####