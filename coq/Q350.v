####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryProblem.

Variable R : realType.
Variables A B C D : R^2.
Variables x y : R.
Hypotheses
  nondeg : ~~ colinear A B C.
Hypotheses
  D_on_BC : exists t, 0 < t < 1 /\ D = (1 - t)*:B + t *:C.
Hypotheses
  median : norm (B - D) = norm (C - D).
Hypotheses
  angle_BAD : angle (B - A) (D - A) = x * PI / 180.
Hypotheses
  angle_DAC : angle (D - A) (C - A) = 104%:R * PI / 180.
Hypotheses
  angle_CAD : angle (C - A) (D - A) = y * PI / 180.

Theorem find_angles : True.
Proof.
admit.
Qed.

End GeometryProblem.
####