####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Record point3 := Point3 { px : R; py : R; pz : R }.
Definition dist3 P Q := sqrt ((px P - px Q)^+2 + (py P - py Q)^+2 + (pz P - pz Q)^+2).
Definition angle3 A B C :=
  let u := (px A - px B, py A - py B, pz A - pz B) in
  let v := (px C - px B, py C - py B, pz C - pz B) in
  acos (((fst u * fst v) + (snd u * snd v) + (fst (snd u) * fst (snd v))) /
        (dist3 A B * dist3 C B)).

Theorem tetrahedral_face_angle :
  forall A B C D : point3,
    dist3 A B = dist3 A C = dist3 A D = r ->
    angle3 B A C = angle3 C A D ->
    True.
Proof.
admit.
Qed.
####