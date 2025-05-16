####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Variable R : realType.

Record point3 := Point3 { px : R; py : R; pz : R }.
Definition vec3_sub P Q := Point3 (px P - px Q) (py P - py Q) (pz P - pz Q).
Definition dot3 u v := px u * px v + py u * py v + pz u * pz v.
Definition norm3 u := sqrt (dot3 u u).
Definition angle3 A O B := acos (dot3 (vec3_sub A O) (vec3_sub B O) / (norm3 (vec3_sub A O) * norm3 (vec3_sub B O))).

Theorem angle_in_3d_example :
  exists α, Rabs (α - (angle3 (Point3 0 0 3) (Point3 0 0 0) (Point3 10 10 3) * 180 / PI)) < 0.01.
Proof.
admit.
Qed.
####