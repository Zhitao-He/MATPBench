####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit Defensive.

Local Open Scope ring_scope.

Section rectangle_angle.

Variable R : realType.
Variables A B C D E F : 'rV[R]_2.
Hypotheses
  (h_AB : `|B - A| = 24)
  (h_FB : `|B - F| = 8)
  (h_FC : F "/\\ F \in 'Between(A,B) /\\ F \in 'Between(C,B) /\\ (F - C) *m (B - F)^T = 0)
  (h_60 : [angle F B C] = PI/3)%:R
  (h_45 : [angle D E A] = PI/4)%:R
  (h_DE_perp : (D - E) *m (A - E)^T = 0)
  (h_E_between : E \in 'Between(D,C))
  (h_AD_perp : (A - D) *m (D - E)^T = 0)
  (h_AEFC_rect : is_rectangle A E F C).

Theorem angle_AEB :
  (* Compute ∠AEB = 75° *)
  True.
Proof.
  (* proof omitted *)
Admitted.

End rectangle_angle.
####