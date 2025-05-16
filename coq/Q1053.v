####
From mathcomp.geometry Require Import all_geometry.
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section IsoscelesAngleEquality.

Variable R : realType.
Variable plane : finType.

Variables A B C : R^2.

Hypothesis ABC_noncol : ~ colinear A B C.
Hypothesis AB_eq_AC : `|B - A| = `|C - A|.

Let E := midpoint A C.

Variable D : R^2.
Hypothesis D_on_BC : on_line D [B, C].
Hypothesis BD_2CD : `|B - D| = 2 * `|C - D|.

Let BE := [B, E].
Let DF := [D, ?F]. (* F is yet to be determined *)
Let BE_line := line B E.

(* F is the intersection of DF (with unknown direction, so perpendicular to BE at F) and BE, i.e., F = BE ∩ (the line through D perpendicular to BE). *)
Definition F : R^2 :=
  let l_perp := perpendicular_through D BE in
  proj_point (intersect_lines l_perp BE_line).

Let CF := [C, F].

Theorem isosceles_midpoint_angle :
  angle E F C = angle B A C.
Proof. Admitted.

End IsoscelesAngleEquality.
####