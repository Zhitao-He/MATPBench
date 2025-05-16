####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryTheorem.

Variable R : realType.
Variable plane : euclidean_planeType R.

Variables A B C : plane.

Hypothesis A_neq_B : A <> B.
Hypothesis B_neq_C : B <> C.
Hypothesis C_neq_A : C <> A.
Hypothesis non_collinear_ABC : ~ colinear A B C.

(* D, E, F are midpoints of BC, CA, AB respectively *)
Let D := midpoint B C.
Let E := midpoint C A.
Let F := midpoint A B.

(* Line AD *)
Let lineAD := Line A D (A_neq_B :> A <> D).

(* Draw through E a line EI parallel to AC, meeting AD at M *)
Let lineAC := Line A C A_neq_B.

Let EI := Line_through_point_parallel E lineAC.
Let M := intersection_line_line EI lineAD.

(* Draw through F a line FI parallel to AB, meeting AD at N *)
Let lineAB := Line A B A_neq_B.

Let FI := Line_through_point_parallel F lineAB.
Let N := intersection_line_line FI lineAD.

(* EM intersects FN at O *)
Let EM := Line E M (E <> M).
Let FN := Line F N (F <> N).
Let O := intersection_line_line EM FN.

(* CM intersects BN at K *)
Let CM := Line C M (C <> M).
Let BN := Line B N (B <> N).
Let K := intersection_line_line CM BN.

(* Statement: OK is perpendicular to AK *)
Theorem triangle_midpoint_parallel_perpendicular :
  is_perpendicular (Line O K (O <> K)) (Line A K (A <> K)).
Proof. Admitted.

End GeometryTheorem.
####