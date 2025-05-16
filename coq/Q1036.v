####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals geometry euclidean.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Putnam_Geometry_Incircle.

Variable R : realType.
Let point := 'rV[R]_2.

Variables A B C K : point.

Hypothesis H_non_collinear : ~ colinear [:: A; B; C].
Hypothesis H_K_in_triangle : in_interior_triangle K A B C.

(* Incircle I of triangle ABC tangent to BC at D, CA at E, AB at F *)
Variables I D E F : point.
Hypothesis H_incircle_ABC :
  incircle_touch_points A B C I D E F.

(* Incircle J of triangle KBC tangent to BC at D, to KB at M, and to KC at N *)
Variables J M N : point.
Hypothesis H_incircle_KBC :
  incircle_touch_points K B C J D N M.

Theorem putnam_2024_geometry_cyclicity :
  concyclic E F M N.
Proof. Admitted.

End Putnam_Geometry_Incircle.
####