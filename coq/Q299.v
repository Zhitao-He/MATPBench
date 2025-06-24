####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Rectangle dimensions *)
Variable width : R.
Hypothesis width_pos : 0 < width.
Definition length := 4 * width.

(* Rectangle vertices *)
Definition A := point2 0 width.
Definition B := point2 0 0.
Definition C := point2 length 0.
Definition D := point2 length width.

(* Midpoint E of BC *)
Definition E := midpoint B C.

(* Total rectangle area *)
Definition total_area := length * width.

(* Area of unshaded triangle ABE *)
Definition triangle_area := (1/2) * (distance A B) * (distance B E).

(* Shaded area percentage *)
Definition shaded_percent := 100 * (total_area - triangle_area) / total_area.

Theorem shaded_area_75_percent : shaded_percent = 75.
Proof. Admitted.
####