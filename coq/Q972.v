####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry euclidean.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Tangent_Circle_Geometry.

Variable R : realFieldType.

(* Points *)
Variables A B C D E F O P : 'rV[R]_2.

(* Circle definition *)
Variable r : R.
Hypothesis circleO : forall X : 'rV[R]_2, (norm (X - O) = r) <-> (X = A \/ X = B \/ X = C \/ X = D \/ X = E).

(* A and B are diametrically opposite *)
Hypothesis diam_AB : (O = (A + B) / 2)%R /\ (norm (A - O) = r) /\ (norm (B - O) = r).

(* PB meets the circle again at C, with P ≠ B and C ≠ B *)
Hypothesis C_on_PB : colinear P B C /\ C <> B /\ B <> P /\ C <> P /\ (norm (C - O) = r).

(* PE and PF are tangents to circle O (E and F are points of tangency) *)
Hypothesis E_tangent : norm (E - O) = r /\ [< P; E >] /\ (forall Q, (norm (Q - O) = r) -> colinear P Q E -> Q = E).
Hypothesis F_tangent : norm (F - O) = r /\ [< P; F >] /\ (forall Q, (norm (Q - O) = r) -> colinear P Q F -> Q = F).

(* AF and BE intersect at D *)
Hypothesis D_def : exists d1 d2 : R, 0 < d1 /\ 0 < d2 /\ D = (A + d1 * (F - A))%R /\ D = (B + d2 * (E - B))%R.

(* E is on circle O *)
Hypothesis E_on_circle : norm (E - O) = r.

(* B and E are distinct *)
Hypothesis BE_distinct : B <> E.

(* F is on circle O *)
Hypothesis F_on_circle : norm (F - O) = r.

(* A and F are distinct *)
Hypothesis AF_distinct : A <> F.

(* C is on the circle *)
Hypothesis C_on_circle : norm (C - O) = r.

(* Definition of angle (directed angle modulo pi) between (X, Y, Z) at Y *)
Definition angle (X Y Z : 'rV[R]_2) : R :=
  let u := X - Y in
  let v := Z - Y in
  let theta := acos ((u *m v') / (norm u * norm v)) in
  if ((u 0 0) * (v 0 1) - (u 0 1) * (v 0 0)) < 0 then -theta else theta.

Theorem angle_PCD_eq_PCE :
  angle P C D = angle P C E.
Proof. Admitted.

End Tangent_Circle_Geometry.
####