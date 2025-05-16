####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit Defensive.

Local Open Scope ring_scope.

Section foot_and_angles.

Variable R : realType.
Variables E H G F D : 'rV[R]_2.
Hypotheses
  (EHGF_quad : ~~ collinear H G /\~~ collinear E F)
  (order_EHGF : E != H /\H != G /\G != F /\F != E)
  (D_on_HG : exists t0 : R, 0 <= t0 <= 1 /\D = (1 - t0) *: H + t0 *: G)
  (ED_perp_HG : '[E - D, G - H] = 0)
  (HE_len : norm (H - E) = 8.5)
  (angle_EHD : cos_angle (E - H) (D - H) = sqrt 2 / 2)
  (HG_len : norm (H - G) = 15).

Theorem G_distance_from_E :
  True.
Proof.
  (* proof omitted *)
Admitted.

End foot_and_angles.
####