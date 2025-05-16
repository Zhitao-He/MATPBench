####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CirclesIntersection.

Variable R : realType.

Variables F G H J K L : 'rV[R]_2.
Variables rG rJ rK : R.

Hypotheses
  hGJ : rG > 0 and hJJ : rJ > 0 and hKK : rK > 0 and
  HG_on_G : norm (H - G) = rG and FG_on_G : norm (F - G) = rG and LG_on_G : norm (L - G) = rG and
  LJ_on_J : norm (L - J) = rJ and LK_on_K : norm (L - K) = rK and
  colin_GJ : colinear [:: G; J; K; L] and
  GH_def : norm (G - H) = 10.

Theorem three_circle_intersection : exists X Y Z,
  X = circle_inter G rG ∩ circle_inter J rJ /
  Y = circle_inter J rJ ∩ circle_inter K rK /
  Z = circle_inter K rK ∩ circle_inter G rG.
Proof.
admit.
Qed.

End CirclesIntersection.
####