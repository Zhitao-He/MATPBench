####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem isosceles_trapezoid_semi_circle_area :
  let O := (0,0) in let r := 1 : R in
  let semicircle := [pred P : R * R | (P.1)^+2 + (P.2)^+2 = r^+2 /\ P.2 >= 0] in
  exists A B C D : R * R,
    A \in semicircle /\ B \in semicircle /\ C \in semicircle /\ D \in semicircle /\
    D.2 = 0 /\ C.2 = 0 /\ A.2 > 0 /\ B.2 > 0 /\
    A.1 + B.1 = 0 /\ D.1 < A.1 < B.1 < C.1.
Proof.
admit.
Qed.
####