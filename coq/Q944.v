####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryProblem.

Variable R : realType.

(* Points in the plane *)
Variables A B C D E F G O : 'rV[R]_2.

Hypotheses
  (* O is the center of the circle *)
  (HO_center : midpoint O A B)
  (* A and B are distinct *)
  (HAB : A <> B)
  (* Points C and D lie on the circle O with diameter AB and are on the same side of AB *)
  (HC_on : dist O C = dist O A)
  (HD_on : dist O D = dist O A)
  (HC_side : 0 < (det2 (B - A) (C - A)) )
  (HD_side : 0 < (det2 (B - A) (D - A)) )
  (* E is the intersection of the tangents to the circle at C and D *)
  (HE_tangentC : colinear (E - C) (C - O))
  (HE_tangentD : colinear (E - D) (D - O))
  (* F is the intersection of lines BC and AD *)
  (HF_BC_AD : exists l1 l2 : R, F = B + l1 *: (C - B) /\ F = A + l2 *: (D - A))
  (* G is the second intersection (other than B) of line BB with the circle *)
  (HBG : exists l : R, l <> 0 /\ G = B + l *: (B - A) /\ dist O G = dist O A /\ G <> B)
  .

(* Notation for the angle between three points *)
Definition angle (P Q R : 'rV[R]_2) : R :=
  let u := (P - Q) in
  let v := (R - Q) in
  let theta := acos ((u *m v^T) 0 0 / (norm u * norm v)) in
  theta.

Theorem geometry_circle_tangent_angle :
  angle C E F = 2 * angle A G F.
Proof. Admitted.

End GeometryProblem.
####