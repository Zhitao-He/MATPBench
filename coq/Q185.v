####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables A B C F G H J K E D : 'rV[R]_2.

Hypotheses
  circleC : colinear B C J and
  on_circle_D : forall P, P = B \/ P = C \/ P = J -> norm (P - D) = norm (A - D) and
  square_CHGF : colinear C H G and colinear H G F and colinear G F C and
  AD_eq_12 : norm (A - D) = 12 and
  FE_eq_18 : norm (F - E) = 18 and
  AE_tangent : forall r, (A - D) *m (E - D)^T = r *: (A - E) *m (A - E)^T.

Theorem harmonic_length_relation :
  norm (G - D) = 6.
Proof.
admit.
Qed.
####