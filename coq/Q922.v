####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals geometry euclidean geometry.pt2d.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Variables (A B C D : 'rV[R]_2).

Hypotheses
  (HAB : \|A - B\| = 6)
  (HAD : \|A - D\| > 0)
  (HBD : \|B - D\| > 0)
  (HADBC_not_collinear : ~ colinear A B C)
  (HCD : \|C - D\| = 2)
  (HCA : \|C - A\| = 4)
  (Hperp : is_perpendicular (D - B) (C - D))
  (HD_on_AB : exists k : R, 0 < k < 1 /\ D = k *: B + (1 - k) *: A)
.

Theorem perimeter_CBA_value :
  \|C - B\| + \|B - A\| + \|A - C\| = 2 * sqrt (13 - 6 * sqrt 3) + 10.
Proof. Admitted.
####