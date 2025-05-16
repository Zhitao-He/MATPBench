####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry plane_lemmas.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Tangents_Secant_Midpoint_Angle.

Variable R : realType.

(* Points in the plane *)
Variables (O A B C D P E : 'rV[R]_2).

Hypotheses
  (* A, B, C, D lie on the circle centered at O *)
  (O_circ : forall X : 'rV[R]_2, X = A \/ X = B \/ X = C \/ X = D -> norm (X - O) = norm (A - O))
  (* PA tangent to the circle at A *)
  (PA_tangent : '[P - A, A - O] = 0 /\ norm (A - O) <> 0 /\ norm (P - A) <> 0)
  (* PB tangent to the circle at B *)
  (PB_tangent : '[P - B, B - O] = 0 /\ norm (B - O) <> 0 /\ norm (P - B) <> 0)
  (* The secant P, C, D are collinear and C, D are distinct and on the circle *)
  (PCD_collinear : colinear P C D)
  (CD_distinct : C <> D)
  (* E is the midpoint of AB *)
  (E_mid : E = ((A + B) / 2)%R)
  (* C, D lie on the circle *)
  (C_on_circ : norm (C - O) = norm (A - O))
  (D_on_circ : norm (D - O) = norm (A - O))
  (* A, B are distinct *)
  (AB_distinct : A <> B)
  (* A, C, D, B are all distinct *)
  (AC_distinct : A <> C) (AD_distinct : A <> D)
  (BC_distinct : B <> C) (BD_distinct : B <> D)
  (E_distinct : E <> C) (E_distinct2 : E <> D)
.

Definition angle (X Y Z : 'rV[R]_2) : R :=
  let v1 := (X - Y) in
  let v2 := (Z - Y) in
  let c := '[v1, v2] in
  let n := norm v1 * norm v2 in
  if n == 0 then 0 else acos (c / n).

Theorem tangent_secant_midpoint_angle :
  angle A C D = angle B C E.
Proof. Admitted.

End Tangents_Secant_Midpoint_Angle.
####