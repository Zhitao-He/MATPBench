####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry euclidean.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope R_scope.

Variable R : realType.
Variables A B C : 'rV[R]_2.
Variables P Q R' S : 'rV[R]_2.
Hypothesis noncol : ~~ colinear A B C.
Hypotheses
  HP : norm (P - A) = 2 /\norm (P - B) = 2 /\norm (P - C) = 2.
Hypotheses
  HQ : norm (Q - A) = 2 /\norm (Q - B) = 2 /\norm (Q - C) = 2.
Hypotheses
  HR : norm (R' - A) = 2 /\norm (R' - B) = 2 /\norm (R' - C) = 2.
Hypotheses
  HS : norm (S - A) = 2 /\norm (S - B) = 2 /\norm (S - C) = 2.

Theorem four_circle_concurrence : exists X, True.
Proof.
admit.
Qed.
####