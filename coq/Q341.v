####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points A, B, C, D in the plane, forming quadrilateral ABCD as per the diagram. *)
Variables A B C D : 'rV[R]_2.

Hypotheses
  (* AB is horizontal, BC is vertical, all triangles in the diagram are isosceles right triangles. *)
  (AB_right : (\angle_ABC A B C = pi/2))
  (DA_right : (\angle_ABC D A B = pi/2))
  (DC_right : (\angle_ABC D C B = pi/2))
  (isos_ABA : normr (A - B) = normr (B - A))
  (isos_BCA : normr (B - C) = normr (C - A))
  (isos_DAB : normr (D - A) = normr (A - B))
  (isos_DCB : normr (D - C) = normr (C - B))
  (* BC has length 2 *)
  (BC_2 : normr (B - C) = 2)
  (* The figure has vertices positioned as pictured; all triangle marking squares indicate isosceles right triangles with legs on AB
####