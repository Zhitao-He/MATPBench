####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Geometry_PS_Length.

Variable R : realType.

Record point2d := Point2d { px : R; py : R }.

Definition dist (A B : point2d) : R :=
  sqrt ((px B - px A)^2 + (py B - py A)^2).

Variables P Q R S T : point2d.

Hypotheses
  (HPQ : px P = 0 /\ py P = 0 /\ px Q = 0 /\ py Q = 24)
  (HPQ' : dist P Q = 24)
  (HTR : px R = 0 /\ py R = 16)
  (HTR' : dist H P R = 16)
  (HST : py S = 0 /\ px S = 9)
  (Hcollinear_PTQS : px P = px T = px S = 0 /\ py P = py T = py S = 0)
  (HQT_perp : px Q = px P /\ py Q > py P).

Lemma compute_PS : dist P S = 9.
Proof. by []. Qed.

End Geometry_PS_Length.
####