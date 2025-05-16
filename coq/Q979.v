####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section triangle_circles_angles.

Variable R : realType.
Let Point := 'rV[R]_2.

Variables A B C D E F G : Point.

Hypotheses
  (hABC : ~ colinear A B C)
  (hD_AB : on_line D A B)
  (hE_AC : on_line E A C)
  (hDE_parallel_BC : parallel (Line D E) (Line B C))
  (hF : inter_pt F (Line B E) (Line C D))
  (hO : circumcircle B D F)
  (hP : circumcircle C E F)
  (hG : (G \neq F) /\ on_circle G hO /\ on_circle G hP).

Theorem triangle_circles_angles_equality :
  angle B A F = angle C A G.
Proof. Admitted.

End triangle_circles_angles.
####