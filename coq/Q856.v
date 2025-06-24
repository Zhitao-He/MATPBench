####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section AngleProblem.
Variable R : realType.
Variables A B C E G H : 'Point[R]_2.

Hypotheses
  angle_EAH : angle_deg (E,A,H) = 38;
  angle_GEB : angle_deg (G,E,B) = 52;
  AH_perp_EH : perpendicular (line A H) (line E H);
  collinear_CHA : collinear [:: C; H; A].

Definition angle_CHA := angle_deg (C,H,A).

Theorem angle_CHA_90 : angle_CHA = 90.
Proof. by []. Qed.

End AngleProblem.
####