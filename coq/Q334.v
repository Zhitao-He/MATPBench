####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section RectangleTrisectPerimeter.

Variable R : realType.
Let A := (0,1).
Let B := (b,1).
Let C := (b,0).
Let D := (0,0).

Variables b p : R.
Hypotheses
  b_gt : 0 < b /\p_gt : 0 < p < b.
Definition angleADC := atan2 (D.2 - C.2) (D.1 - C.1) - atan2 (A.2 - D.2) (A.1 - D.1).
Hypothesis trisect : (* Rays DC, DB, DP trisect angle ADC *) True.

Theorem find_b_p : True.
Proof.
admit.
Qed.

End RectangleTrisectPerimeter.
####