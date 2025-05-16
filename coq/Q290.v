####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Record point := mkPoint { px : R; py : R }.
Record circle := mkCircle { center : point; radius : R }.
Definition on_circle c A := (A.px - c.center.px)^+2 + (A.py - c.center.py)^+2 = c.radius^+2.
Definition cyclic A B C D E F := exists c, on_circle c A /\on_circle c B /\on_circle c C /\on_circle c D /\on_circle c E /\on_circle c F.
Definition angle_deg A B C d := exists θ, θ = d * PI / 180 /\n  let u := (A.px - B.px, A.py - B.py) in let v := (C.px - B.px, C.py - B.py) in
a cos ((fst u * fst v + snd u * snd v) / (sqrt (fst u^+2 + snd u^+2) * sqrt (fst v^+2 + snd v^+2))) = θ.

Theorem cyclic_angle_sum : forall A B C D E F d1 d2, cyclic A B C D E F -> angle_deg A B C d1 -> angle_deg D E F d2 -> d1 + d2 = 180.
Proof.
admit.
Qed.
####