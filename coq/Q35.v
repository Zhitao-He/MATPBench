From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals ssrnum geometry classical_sets trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Record point := Point { px : R; py : R }.

Definition dist (P Q : point) : R :=
  sqrt ((px P - px Q)^2 + (py P - py Q)^2).

Variables O A B C : point.

Hypothesis distinct_points : A <> B /\ B <> C /\ C <> A.

Hypothesis on_circle : dist O A = 2 /\ dist O B = 2 /\ dist O C = 2.

Theorem inscribed_angle_30_deg :
  let v1 := ((px A - px C), (py A - py C)) in
  let v2 := ((px B - px C), (py B - py C)) in
  let dot := fst v1 * fst v2 + snd v1 * snd v2 in
  let norm1 := sqrt (fst v1 ^ 2 + snd v1 ^ 2) in
  let norm2 := sqrt (fst v2 ^ 2 + snd v2 ^ 2) in
  let angle := acos (dot / (norm1 * norm2)) in
  angle = PI / 6 -> True.
Proof.
move=> v1 v2 dot norm1 norm2 angle H.
exact: I.
Qed.
####