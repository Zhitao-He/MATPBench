####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals mathcomp.analysis.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition rect_width := 10%:R.
Definition rect_height := 5%:R.
Definition circle_radius := 2.5.
Definition circle_area := PI * (circle_radius ^+ 2).
Definition rectangle_area := rect_width * rect_height.
Definition shaded_area := rectangle_area - 2 * circle_area.

Theorem shaded_area_of_rectangle_with_two_circles :
    Rround shaded_area = 107.
Proof. Admitted.
####