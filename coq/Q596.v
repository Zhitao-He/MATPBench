####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Record point := Point { px : R; py : R }.

Definition A : point.
Proof. Admitted.

Definition B : point.
Proof. Admitted.

Definition C : point.
Proof. Admitted.

Definition dist (P Q : point) : R :=
  sqrt ((px P - px Q)^2 + (py P - py Q)^2).

Definition angle (P Q R : point) : R :=
  let u := ((px P - px Q), (py P - py Q)) in
  let v := ((px R - px Q), (py R - py Q)) in
  let dot := fst u * fst v + snd u * snd v in
  let nu := sqrt (fst u ^ 2 + snd u ^ 2) in
  let nv := sqrt (fst v ^ 2 + snd v ^ 2) in
  let c := dot / (nu * nv) in
  acos c * 180 / PI.

Theorem triangle_angle_CBA_92 :
  (* Given: triangle ABC, AB = BC, AC = 12, angle BAC = 44 degrees *)
  dist A B = dist B C ->
  dist
####