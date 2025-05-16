####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points in the plane *)
Variables A B C D : 'rV[R]_2.

Hypotheses
  (* The points are distinct as necessary *)
  (hcollinear : colinear C D A)
  (horder : forall l : R, 0 < l < 1 -> D = (1 - l) *: C + l *: A)
  (* Angles given in degrees as per standard notation *)
  (angle_C : angleR B C A = (70%:R * pi) / 180%:R)
  (angle_A : angleR B A C = (40%:R * pi) / 180%:R)
  (angle_BDA : angleR B D A = (45%:R * pi) / 180%:R).

Theorem measure_of_angle_DBC :
  angleR D B C = (25%:R * pi) / 180%:R.
Proof. Admitted.
####