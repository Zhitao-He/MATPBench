####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Let X, Y, Z, W be distinct points in the plane. Z lies below W; X and Y are such that ∠XZW = ∠YZW = 90°. *)
Variables X Y Z W : 'rV[R]_2.

Hypothesis XZ_perp_ZW : [seg X, Z] \is_perpendicular [seg Z, W].
Hypothesis YZ_perp_ZW : [seg Y, Z] \is_perpendicular [seg Z, W].
Hypothesis XZ_pos : X != Z.
Hypothesis YZ_pos : Y != Z.
Hypothesis ZW_pos : Z != W.

Variable x : R.

(* The diagram gives |XZ| = 3x+5, |YZ| = 5x-7. *)

Hypothesis H_XZ : norm (X - Z) = 3 * x + 5.
Hypothesis H_YZ : norm (Y - Z) = 5 * x - 7.

Theorem line_XZ_length_23 : norm (X - Z) = 23.
Proof. Admitted.
####