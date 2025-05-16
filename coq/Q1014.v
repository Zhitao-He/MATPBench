####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry euclidean.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Triangle_Midpoint_Theorem.

Variable R : realType.

Variables A B C : 'rV[R]_2.

Hypothesis triangle_ABC_non_collinear : ~ colinear A B C.

Let circumscribed_circle := circumcircle A B C.
Let O := center circumscribed_circle.
Let H := orthocenter A B C.

(* D: foot of the altitude from B to AC *)
Definition D : 'rV[R]_2 :=
  foot (vec B) (vec A) (vec C).

(* E: foot of the altitude from C to AB *)
Definition E : 'rV[R]_2 :=
  foot (vec C) (vec A) (vec B).

(* G: intersection of AG with BC, where AG is perpendicular to OH *)
Definition G : 'rV[R]_2.
Proof.
pose OH_line := Line (vec O) (vec H).
pose AG_dir := rot90 (vec H - vec O). (* rotated OH to get perpendicular direction *)
pose AG_line := Line (vec A) AG_dir.
exact: (@line_intersection R _ (Line (vec A) AG_dir) (Line (vec B) (vec C - vec B))).
Defined.

(* F: intersection of DE and AG *)
Definition F : 'rV[R]_2.
Proof.
pose DE_line := Line (D) (E - D).
pose AG_dir := rot90 (vec H - vec O).
pose AG_line := Line (vec A) AG_dir.
exact: (@line_intersection R _ DE_line AG_line).
Defined.

Theorem triangle_F_midpoint_AG :
  F = (A + G) / 2.
Proof. Admitted.

End Triangle_Midpoint_Theorem.
####