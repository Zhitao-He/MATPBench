####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.
Local Open Scope ring_scope.

Section TableHeight.

Variable R : realType.

(* Triangle ABC with side lengths *)
Variable A B C : 'rV[R]_2.
Hypothesis H_ABC_ncol : ~ colinear A B C.
Hypothesis H_AB : distmx A B = 30%:R.
Hypothesis H_BC : distmx B C = 23%:R.
Hypothesis H_CA : distmx C A = 27%:R.

(* Points V, W on AC, X, Y on BC, Z, U on AB *)
Variable V W : 'rV[R]_2.
Hypothesis H_V_on_AC : on_line V A C.
Hypothesis H_W_on_AC : on_line W A C.
Hypothesis H_V_between_AW : between V A W.

Variable X Y : 'rV[R]_2.
Hypothesis H_X_on_BC : on_line X B C.
Hypothesis H_Y_on_BC : on_line Y B C.
Hypothesis H_X_between_CY : between X C Y.

Variable Z U : 'rV[R]_2.
Hypothesis H_Z_on_AB : on_line Z A B.
Hypothesis H_U_on_AB : on_line U A B.
Hypothesis H_Z_between_BU : between Z B U.

(* Parallelism conditions *)
Hypothesis H_UV_parallel_BC : parallel UV BC.
Hypothesis H_WX_parallel_AB : parallel WX AB.
Hypothesis H_YZ_parallel_CA : parallel YZ CA.

(* Right angle folds along UV, WX, YZ *)
Hypothesis H_folds_right_angles : right_angle_fold UV /\ right_angle_fold WX /\ right_angle_fold YZ.

(* The resulting tabletop is parallel to the floor *)
Hypothesis H_tabletop_parallel : parallel (midpoint UV WX YZ) floor.

(* The maximum height h of the table *)
Variable h : R.
Hypothesis H_max_height : is_max_height h UV WX YZ.

(* The height h can be written in the form (k * sqrt(m)) / n *)
Variable k m n : nat.
Hypothesis H_height_form : h = (k%:R * sqrt m%:R) / n%:R.
Hypothesis H_coprime : coprime k n.
Hypothesis H_square_free : square_free m.

(* Theorem: The sum k + m + n is 318 *)
Theorem height_sum_condition : k + m + n = 318.
Proof. Admitted.

End TableHeight.
####