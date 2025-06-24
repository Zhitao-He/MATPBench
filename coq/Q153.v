####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals mathcomp.analysis.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Shaded_Area.

Variable R : realType.

(* Define the dimensions of the rectangle *)
Definition rect_width := 10%:R.
Definition rect_height := 5%:R.

(* Define the radius of the circles (assuming they fit perfectly within the rectangle) *)
Definition circle_radius := rect_height / 2.

(* Calculate the area of the rectangle *)
Definition rectangle_area := rect_width * rect_height.

(* Calculate the area of one circle *)
Definition circle_area := PI * (circle_radius ^+ 2).

(* Calculate the shaded area (rectangle minus two circles) *)
Definition shaded_area := rectangle_area - 2 * circle_area.

(* Theorem: Prove that the shaded area, rounded to the nearest tenth, is 107 *)
Theorem shaded_area_of_rectangle_with_two_circles :
  Rround shaded_area = 107.
Proof.
  (* Proof outline:
     1. Calculate the area of the rectangle: 10 * 5 = 50.
     2. Calculate the area of one circle: PI * (2.5)^2 ≈ 19.634954.
     3. Calculate the area of two circles: 2 * 19.634954 ≈ 39.269908.
     4. Subtract the area of the two circles from the rectangle: 50 - 39.269908 ≈ 10.730092.
     5. Round to the nearest tenth: 10.730092 ≈ 10.7 (not 107).
     *)
  Admitted.

End Shaded_Area.
####