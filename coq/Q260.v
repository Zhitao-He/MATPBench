####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.
Require Import Reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Variable R : realType.

Variables A B C D V W : 'rV[R]_3.

Hypotheses
  dist_VA : norm (V - A) = 23 /\dist_BC : norm (B - C) = 12 /\n  W_on_AB : exists z, 0 < z < norm (B - A) /\W = A + z *: ((B - A)/ norm (B - A)) /
  D_on_base : exists α β γ, 0 < α /\0 < β /\0 < γ /\α+β+γ = 1 /\D = α*A+β*B+γ*C.

Theorem pyramid_side_face_area :
  exists S, S = 0.5 * norm (V - D) * 12.
Proof.
admit.
Qed.
####