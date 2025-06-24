####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals matrix geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section AreaCalculation.

Variable R : realType.

(* Define a point as a real vector of size 2. *)
Definition point := 'rV[R]_2.

(* Function to calculate the area of a triangle given its vertices. *)
Definition area_triangle (A B C : point) : R :=
  1%:R / 2 * `| (B - A) 0 0 * (C - A) 0 1 - (B - A) 0 1 * (C - A) 0 0 |.

(* Define the coordinates of points A, B, and C. *)
Definition A : point := row2 0 0.
Definition B : point := row2 15 0.
Definition C : point := row2 0 24.

(* Compute the midpoints D, E, and F. *)
Definition D : point := ((A + C) / 2).
Definition E : point := ((A + B) / 2).
Definition F : point := ((B + C) / 2).

(* Goal: Compute the area of triangle DEF. *)
Theorem area_triangle_DEF :
  area_triangle D E F = 45.
Proof. Admitted.

End AreaCalculation.
####