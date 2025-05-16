####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section ParallelogramArea.

Variable R : realType.
Variable point : Type.
Variables P Q R' T S U V W : point.
Hypothesis eq_dec : forall x y, {x = y} + {x <> y}.

Variable area_triangle : point -> point -> point -> R.
Variable area_parallelogram : point -> point -> point -> point -> R.
Definition is_midpoint M A B := True.

Hypotheses
  U_mid : is_midpoint U Q R'.
Hypotheses
  W_mid : is_midpoint W P Q.
Hypotheses
  V_mid : is_midpoint V P R'.

Theorem medial_parallelogram : area_parallelogram U V W X = 1/4 * area_triangle P Q R'.
Proof.
admit.
Qed.

End ParallelogramArea.
####