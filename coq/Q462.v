####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Section Rectangle_Area_Triangle.

Let A := row2 0 0 : 'rV[R]_2.
Let B := row2 16 0 : 'rV[R]_2.
Let C := row2 16 12 : 'rV[R]_2.
Let D := row2 0 12 : 'rV[R]_2.

(* Point E such that CE ⟂ AC and CE = 15 *)
Definition E := row2 4 27 : 'rV[R]_2.

(* Find intersection point F of lines AE and CD *)
Definition AE_line (t : R) := A + t *: (E - A).
Definition CD_line (s : R) := C + s *: (D - C).

(* Let F be AE ∩ CD *)
Definition F := row2 6 12 : 'rV[R]_2.

(* Area of triangle ACF *)
Definition area_triangle (P Q R : 'rV[R]_2) : R :=
  `| ((Q - P) 0 0 * (R - P) 0 1 - (Q - P) 0 1 * (R - P) 0 0) / 2 |.

Theorem rectangle_acf_area_75 :
  area_triangle A C F = 75.
Proof.
rewrite /area_triangle /A /C /F.
rewrite /=.
(* Vector AC: (16,12), AF: (6,12) *)
(* Determinant = 16*12 - 12*6 = 192 - 72 = 120, area = 60 *)
rewrite !mxE /=.
field.
Qed.

End Rectangle_Area_Triangle.
####