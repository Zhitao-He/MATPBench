####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points *)
Variables X Y Z V B C : 'rV[R]_2.

(* Variables for unknowns *)
Variables x y : R.

(* Definitions of right angles *)
Hypotheses
  (HXYZ_right : angle Z Y X = /2%:R * PI)      (* ∠XYZ = 90° *)
  (HBCV_right : angle C B V = /2%:R * PI).     (* ∠CBV = 90° *)

(* Given angle measures *)
Hypotheses
  (HVCB : angle V C B = (6 * x + 14 * y) * PI / 180)
  (HZXY : angle Z X Y = (15 * x - 8 * y) * PI / 180)
  (HVBC : angle V B C = 52 * PI / 180).

Theorem value_y_1 : y = 1.
Proof. Admitted.
####