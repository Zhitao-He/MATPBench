####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals angles geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section angle_LMN_theorem.

Variable R : realType.

Variables J K L M N : 'rV[R]_2. (* Points in the plane *)

Hypotheses
  (LK_eq_KN : dist L K = dist K N)
  (KJ_eq_KN : dist K J = dist K N)
  (LM_eq_MN : dist L M = dist M N)
  (angle_KLM_20 : angle K L M = 20%:R)
  (angle_JLK_25 : angle J L K = 25%:R)
  (angle_KLN_18 : angle K L N = 18%:R)
  (angle_KNJ_130 : angle K N J = 130%:R).

Theorem measure_angle_LMN_140 :
  angle L M N = 140%:R.
Proof. Admitted.

End angle_LMN_theorem.
####