####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables J K L M N A : 'rV[R]_2.

Hypothesis H_JK : `|J - K| = 12`.
Hypothesis H_LK : `|L - K| = 2`.
Hypothesis H_MN : `|M - N| = 6`.
Hypothesis H_circle_A : forall P, P = J / P = K / P = M / P = N -> on_circle A P.

Definition x := `|M - L|`.

Theorem value_of_x : x = -3 + sqrt 37.
Proof.
  (* Using power of a point theorem *)
  have H_power : `|L - K| * `|L - J| = `|M - K| * `|M - N| by apply: circle_property_circular_power_segment_and_segment_line.
  rewrite H_JK H_LK in H_power.
  (* Express |M - K| in terms of x *)
  have H_MK : `|M - K| = `|M - L| + `|L - K|` by admit.
  rewrite H_MK in H_power.
  (* Solve for x *)
  have H_eq : x * (x + 2) = 72 - 24 by field.
  by move: H_eq => /eqP ->; field.
Qed.
####