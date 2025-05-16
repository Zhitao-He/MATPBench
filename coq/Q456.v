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

Definition barycentric (A B C : point) (u v w : R) : point :=
  Point (u * px A + v * px B + w * px C)
        (u * py A + v * py B + w * py C).

Definition dot (u v : R * R) : R :=
  let (ux, uy) := u in let (vx, vy) := v in ux * vx + uy * vy.

Definition norm2 (u : R * R) : R :=
  let (ux, uy) := u in ux ^+ 2 + uy ^+ 2.

Definition angle_cos (P Q R : point) : R :=
  let u := vec Q P in
  let v := vec Q R in
  dot u v / (Num.sqrt (norm2 u) * Num.sqrt (
####