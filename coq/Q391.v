####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals angles geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope R_scope.

Section Circle_Angle_Theorem.

Variable R2 : realType.
Variables O R S T B : 'rV[R2]_2.
Hypothesis on_circle : forall P, P = R \/ P = S \/ P = B -> norm (P - O) = norm (R - O).
Hypothesis O_center : O <> R.
Hypothesis distinct_RS_B : R <> S /\S <> B /\B <> R.
Hypothesis T_outside : norm (T - O) > norm (R - O).

Definition angle_RTB := angle (R - T) (B - T).
Definition angle_ROB := angle (R - O) (B - O).
Definition angle_SOT := angle (S - O) (T - O).

Theorem external_angle_circle :
  angle_RTB = angle_ROB + angle_SOT.
Proof.
admit.
Qed.

End Circle_Angle_Theorem.
####