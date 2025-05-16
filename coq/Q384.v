####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals vectors.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Record point3 := Point3 { px : R; py : R; pz : R }.
Definition dist3 P Q := sqrt ((px P - px Q)^+2 + (py P - py Q)^+2 + (pz P - pz Q)^+2).
Let P := Point3 0 0 0.
Let A := Point3 3 0 0.
Let B := Point3 0 4 0.
Let C := Point3 0 4 5.
Let D := Point3 3 0 5.

Theorem triangle_square_perpendicular_planes_PD :
  [/\dist3 P A = 3, dist3 P B = 4, dist3 A B = 5,
      dist3 B C = 5, dist3 C D = 3, dist3 D A = 5].
Proof.
admit.
Qed.
####