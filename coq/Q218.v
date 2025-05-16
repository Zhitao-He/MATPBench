####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points *)
Variables A B C D E : 'R^2.

Hypotheses
  (HAD : 61 < 180) (* angle at A *)
  (HBE : 73 < 180) (* angle at B *)
  (HCEB : orthogonal (B - E) (C - E)) (* E is the foot of the altitude from C to AB *)
  (HDEA : orthogonal (D - B) (C - D)) (* D is the foot of the altitude from C to AB, lying on CB *)
  (HCED : `|C - E| = 25) (* Length CE = 25 *)
  (Angle_EAB : angle A E B = 90%:R) (* Angle at E is right angle *)
  (Angle_EBA : angle B E A = 90%:R) (* E divides AB at a right angle *)
.

Theorem diagram_bd_length :
  `|B - D| = 63.
Proof. Admitted.
####