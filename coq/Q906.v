####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit Defensive.

Section RectangleAngleProblem.

Variable R : realType.
Variables A B C D E F : 'rV[R]_2.
Hypotheses
  (rect_DABC : colinear B C D /\colinear D A B /\colinear A B C /\n               perpendicular (A - B) (C - B) /\perpendicular (D - E) (E - B))
  (E_on_DB : colinear D E B)
  (E_between: between [seg D & B] E)
  (angle_EBA_35 : angle B E A = 35%:R * PI / 180)
  (F_on_AE : colinear A F E)
  (F_on_CB : colinear C F B)
  (angle_AEF_70 : angle E F A = 70%:R * PI / 180).

Theorem value_angle_FEB :
  angle F E B = 75%:R * PI / 180.
Proof.
  (* proof omitted *)
Admitted.

End RectangleAngleProblem.
####