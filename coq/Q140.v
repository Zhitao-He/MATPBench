####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section putnam_1991_a3.

Variable R : realType.

Record point := mkPoint { px : R; py : R }.

Definition area (P Q R0 : point) : R :=
  (1%:R / 2) * ((px P * py Q + px Q * py R0 + px R0 * py P)
                - (py P * px Q + py Q * px R0 + py R0 * px P)).

Let A := mkPoint 0 0.
Let B := mkPoint 4 0.
Let C := mkPoint 4 6.
Let E := mkPoint 0 8.

Definition D :=
  let: '(a1,b1,c1) := line A C in
  let: '(a2,b2,c2) := line B E in
  mkPoint ((b1*c2 - b2*c1)/(a1*b2 - a2*b1)) ((c1*a2 - c2*a1)/(a1*b2 - a2*b1)).

Theorem putnam1991_a3 : exists D, collinear A C D /\ collinear B E D /\ area A B E + area B C E = area A B C + area C A E.
Proof.
admit.
Qed.

End putnam_1991_a3.
####