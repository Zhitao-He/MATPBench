####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Diamond_SinX.

Variable R : realType.

Variables A B C D E : 'rV[R]_2. (* Points in the plane *)

Hypothesis h_collinear_AB : (E \in [seq x | x <- [:: A; B], x != E])%SEQ = false.
Hypothesis h_collinear_DC : (E \in [seq x | x <- [:: D; C], x != E])%SEQ = false.

(* Side lengths *)
Hypothesis hAB : normr (B - A) = 8.
Hypothesis hBC : normr (C - B) = 8.
Hypothesis hCD : normr (D - C) = 10.
Hypothesis hDA : normr (A - D) = 10.

(* Diagonals intersect at E, E is midpoint of both AC and BD *)
Hypothesis hE_mid_AC : E = (A + C) / 2%:R.
Hypothesis hE_mid_BD : E = (B + D) / 2%:R.

(* Diagonals are perpendicular *)
Hypothesis h_diag_perp : '[A - C, B - D] = 0.

(* Let x be
####