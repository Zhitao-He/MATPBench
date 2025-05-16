####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Circle_Angle.

Variable R : realType.
Variables O G N P A : 'rV[R]_2.
Hypothesis Hdistinct: O <> G /\O <> N /\O <> P /\O <> A /\G <> N /\G <> P /\G <> A /\N <> P /\N <> A /\P <> A.
Hypothesis Hcircle: forall X, norm (X - O) = norm (G - O) -> X = G \/ X = N \/ X = P \/ X = A.
Hypothesis Hdiam_PN: colinear [:: O; P; N] /\norm (P - O) = norm (N - O).
Hypothesis Hdiam_GA: colinear [:: O; G; A] /\norm (G - O) = norm (A - O).

Definition angle U V W := acos (((U - V) *d (W - V)) / (norm (U - V) * norm (W - V))).

Theorem cyclic_quadrilateral_inscribed_angle :
  angle R P N = angle R A G + angle N A G.
Proof.
admit.
Qed.

End Circle_Angle.
####