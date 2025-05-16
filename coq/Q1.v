####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section TriangleAngleBisector.

Variable R : realType.

Variables A B C O : 'rV[R]_2.

Hypothesis triangle_ABC : & colinear A B C = false.

Hypothesis O_on_bisector_AB : exists OA OB : R, 0 < OA -> 0 < OB ->
  O = (OA / (OA + OB)) *: B + (OB / (OA + OB)) *: C.

Hypothesis O_on_bisector_AC : exists OC OA' : R, 0 < OC -> 0 < OA' ->
  O = (OC / (OC + OA')) *: C + (OA' / (OC + OA')) *: A.

Hypothesis angle_A_110 : angle B A C = (110%:R * PI) / 180.

Theorem triangle_bisectors_angle_BOC :
  angle (O) (B) (C) = (145%:R * PI) / 180.
Proof. Admitted.

End TriangleAngleBisector.
####