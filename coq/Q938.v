####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope R_scope.

Variable Point : Type.

Variables A B D E F H J Y : Point.

Hypotheses
  (Horiz : collinear [:: E; H; A])
  (Horiz_ext : collinear [:: B; Y; F])
  (Vert : collinear [:: J; H; D])
  (Vert_ext : collinear [:: J; Y; D])
  (HY_between : between H Y J)
  (HX_parallel : parallel (E, A) (B, F))
  (VY_parallel : parallel (J, D) (H, Y))
  (H_orthogonal : angle E H J = pi/2)
  (Y_between : between B Y F)
  (H_between : between E H A)
  (YH_collinear : H <> Y)
  (Angle_DYF : angle D Y F = (4*y + 10)%R)
.

Variable y : R.

Theorem value_of_y :
  y = 20.
Proof. Admitted.
####