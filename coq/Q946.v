####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.
Require Import Classical.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Inscribed_Quad_Reflection_Theorem.

Variable R : realType.
Implicit Types A B C D E F G K O : 'rV[R]_2.

Hypothesis A_neq_C : forall A C : 'rV[R]_2, A != C.

Variables A B C D O : 'rV[R]_2.

Hypothesis ABCD_cyclic : exists r : R, exists O : 'rV[R]_2,
  &0 < r /\ A != C /\
  norm (A - O) = r /\
  norm (B - O) = r /\
  norm (C - O) = r /\
  norm (D - O) = r /\
  ([/\ A, B, C, D are all distinct]).

Hypothesis AC_diameter : exists O : 'rV[R]_2,
  O = (A + C) / 2%:R.

Definition reflect_over (P Q R : 'rV[R]_2) : 'rV[R]_2 :=
  let v := Q - P in P + v - 2%:R * ((v *m (R - P)^T) / (norm (R - P)^+2)) * (R - P).

Definition proj_line (P Q R : 'rV[R]_2) : 'rV[R]_2 :=
  let v := Q - P in
  P + (((R - P) *m v^T) / (norm v ^+2)) * v.

Definition on_line (P Q R : 'rV[R]_2) :=
  exists k : R, R = P + k *: (Q - P).

Definition intersection_point (P Q R S : 'rV[R]_2) : 'rV[R]_2 :=
  (* Assume not parallel; this is just a notational definition for the unique intersection point *)
  let u := Q - P in
  let v := S - R in
  let w := P - R in
  let det := u^`2 * v^`2 - (u^T * v)^2 in
  let s := ((v^`2 * (w *m v^T)) - (u^T * v) * (w *m u^T)) / det in
  P + s *: u.

Let E := 2%:R * proj_line A C D - D. (* E is the reflection of D about line AC *)
Let F := 2%:R * proj_line B D C - C. (* F is the reflection of C about BD *)

Let G := intersection_point A F B D.  (* AF ∩ BD *)
Let K := intersection_point B E A C.  (* BE ∩ AC *)

Theorem kg_perp_bg :
  [<: ((K - G) *m (B - G)^T = 0) :> Prop].
Proof. Admitted.

End Inscribed_Quad_Reflection_Theorem.
####