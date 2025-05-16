####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section AngleEBC.

Variable R : realType.
Variables A B C D E F G : 'e2[R].

Hypothesis col_BEGA : colinear R [::B; E; G; A].
Hypothesis between_E_BG : between R B E G.
Hypothesis between_A_G_E : between R A G E.

(* ∠FBE = 63°, ∠FE B = 69°, ∠BED = 47°, ∠DAG = 136° *)
Hypothesis angle_FBE_63 : angle B F B E = 63%:R.
Hypothesis angle_FEB_69 : angle F E B = 69%:R.
Hypothesis angle_BED_47 : angle B E D = 47%:R.
Hypothesis angle_DAG_136 : angle D A G = 136%:R.

Theorem measure_angle_EBC_32 :
  angle E B C = 32%:R.
Proof. Admitted.

End AngleEBC.
####