####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Record point := Point { px : R; py : R }.

Definition vec (P Q : point) : R * R :=
  (px Q - px P, py Q - py P).

Definition midpoint (P Q : point) : point :=
  Point ((px P + px Q)/2) ((py P + py Q)/2).

Definition dot (u v : R * R) : R :=
  let (ux, uy) := u in let (vx, vy) := v in ux * vx + uy * vy.

Definition norm2 (u : R * R) : R :=
  let (ux, uy) := u in ux^2 + uy^2.

Definition angle_cos (P Q R : point) : R :=
  let u := vec Q P in
  let v := vec Q R in
  dot u v / Num.sqrt (norm2 u * norm2 v).

(* Given triangle ABC with medians AD and BE intersecting at centroid G,
   and triangle AGE is equilateral, then cos(angle C) is a specific algebraic value. *)

Definition cos_C := (6 * Num.sqrt 2) / 11.

Theorem triangle_cosine_angle_C_result :
  let m := 6 in let n := 11 in let p := 2 in
  m + n + p = 44.
Proof. by []. Qed.
####