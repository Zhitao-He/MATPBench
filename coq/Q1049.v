####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section TriangleOrthocenterMidpoint.

Variable R : realType.
Let P := 'rV[R]_2.

Variables A B C : P.
Hypothesis A_neq_B : A != B.
Hypothesis B_neq_C : B != C.
Hypothesis C_neq_A : C != A.
Hypothesis noncollinear_ABC : ~ colinear [:: A; B; C].

(* D is the midpoint of BC *)
Definition D : P := ((B + C) / 2)%R.

(* H is the orthocenter of triangle ABC *)
Definition H : P := orthocenter A B C.

(* The line DH *)
Definition line_DH := line_through D H.

(* EF is the line through H perpendicular to DH, meeting AB at E and AC at F *)
Definition EF : 'seq P := 
  let l := perpendicular_line_through H line_DH in
  let E := intersection_point l (line_through A B) in
  let F := intersection_point l (line_through A C) in
  [:: E; F].

Definition E : P := nth H EF 0.
Definition F : P := nth H EF 1.

Theorem triangle_orthocenter_midpoint
  : midpoint R E F = H.
Proof. Admitted.

End TriangleOrthocenterMidpoint.
####