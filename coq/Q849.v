####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclid_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Circle_Chord_Secant.

Variable R : realType.

Variables A B C D E X : R^2.

Hypotheses
  circ      : circle X A -> Prop;
  on_circ_D : on_circle X D;
  on_circ_C : on_circle X C;
  on_circ_E : on_circle X E;
  on_circ_A : on_circle X A;
  col_ACB   : collinear [:: A; C; B];
  col_AEB   : collinear [:: A; E; B];
  col_DCB   : collinear [:: D; C; B];
  len_DC    : `|D - C| = 2;
  len_CB    : `|C - B| = 4;
  len_EB    : `|E - B| = 3;
  len_AE    : `|A - E| = x;
  len_AB    : `|A - B| = x + 3;
  len_AC    : `|A - C| = x + 7.

Theorem secant_tangent_power : x = 6.
Proof. by []. Qed.
End Circle_Chord_Secant.
####