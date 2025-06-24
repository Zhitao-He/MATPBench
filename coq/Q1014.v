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
Definition D : 'rV[R]_2 := foot (vec B) (vec A) (vec C).

(* E: foot of the altitude from C to AB *)
Definition E : 'rV[R]_2 := foot (vec C) (vec A) (vec B).

(* OH: line through O and H *)
Definition OH_line := Line (vec O) (vec H).

(* AG_dir: direction perpendicular to OH (rotated by 90 degrees) *)
Definition AG_dir := rot90 (vec H - vec O).

(* AG_line: line through A with direction AG_dir *)
Definition AG_line := Line (vec A) AG_dir.

(* G: intersection of AG with BC *)
Definition G := line_intersection AG_line (Line (vec B) (vec C - vec B)).

(* DE_line: line through D and E *)
Definition DE_line := Line D (E - D).

(* F: intersection of DE and AG *)
Definition F := line_intersection DE_line AG_line.

Theorem triangle_F_midpoint_AG :
  F = (A + G) / 2.
Proof. Admitted.

End Triangle_Midpoint_Theorem.
####