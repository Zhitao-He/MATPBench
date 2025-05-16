####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variables F A N D W B C : 'rV[R]_2.
Hypotheses
  HFA        : norm (A - F) = 10;
  HW_on_FA   : exists x, 0 < x /\norm (W - F) = x /\norm (A - W) = 4 /\x + 4 = 10;
  HNFAD_conv : is_convex_quad N F A D;
  H_similar  : is_quadrilateral B F W C /\
               similar_quadrilaterals (mkQuad B F W C) (mkQuad N F A D);
  Hdistinct  : uniq [:: N; F; A; D; B; W; C].

Theorem solve_FW : norm (W - F) = 6.
Proof. by []. Qed.
####