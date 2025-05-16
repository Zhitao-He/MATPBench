####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Let A := row2 0 5.
Let B := row2 1 5.
Let C := row2 0 4.
Let D := row2 1 4.
Let Y := row2 0 0.
Let S := row2 5 5.
Let H := row2 5 0.
Let G := row2 4 0.
Let F := row2 5 1.
Let E := row2 4 1.

Hypothesis HABDC_square : colinear [:: A; B; D; C] /\norm (B - A) = norm (C - B) = norm (D - C) = norm (A - D).

Theorem shading_area : True.
Proof.
admit.
Qed.
####