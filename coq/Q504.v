####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section angle_bisector_theorem.

Variable R : realType.

Variables A C D E G : 'e2d[R].
Variable x : R.

Hypotheses
  (CD : collinear [:: C; D; G]) (* Points C, D, G are collinear (vertical line). *)
  (CG : C <> G)
  (CD_dir : same_ray C D G)    (* D and G are on the same line through C *)
  (CE_ray : ~ collinear [:: C; E; G])  (* E is not on CG *)
  (CA_ray : ~ collinear [:: C; A; G])  (* A is not on CG *)
  (angle1 : angle E C G = x)           (* ∠ECG = x° *)
  (angle2 : angle G C A = x)           (* ∠GCA = x° *)
  (angle3 : angle E C A = 2 * x)       (* ∠ECA = 2x° *)
  (x_pos : 0 < x)
  (x_lt_90 : x < 90)
  .

Theorem value_of_x :
  x = 45.
Proof. Admitted.
####