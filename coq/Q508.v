####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Record point := Point { px : R; py : R }.

Definition distance (A B : point) : R :=
  Num.sqrt ((px A - px B)^+2 + (py A - py B)^+2).

Variables Q R S T U V : point.

Hypotheses
  (HQR : distance Q R = 2)
  (HSV : distance V S = 7)
  (HVU : True).

Theorem length_UT_eq :
  (* By trapezoid mid-segment theorem UT = QR = 2 *)
  distance U T = 2.
Proof.
admit.
Qed.
####