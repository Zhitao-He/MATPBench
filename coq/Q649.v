####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Angle_FCD_17.

Variable R : realType.

Variable A B C D E F G : 'point R.

Hypotheses
  (col_AB : colinear [:: A; D; F; G; E; B])
  (h_distinct : A <> D /\ D <> F /\ F <> G /\ G <> E /\ E <> B /\ C <> A /\ C <> B)
  (angle_CAD : angle C A D = 42)
  (angle_CFB : angle C F B = 77)
  (all_C_on_other_side : 
    (C \notin [set A; D; F; G; E; B]) /\
    (forall X, X \in [set A; D; F; G; E; B] -> ~ colinear [::C;X;B])).

Theorem measure_angle_FCD_is_17 :
  angle F C D = 17.
Proof. Admitted.

End Angle_FCD_17.
####