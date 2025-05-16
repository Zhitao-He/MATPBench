####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angtype.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Variable point : Type.

Variables A B C D E : point.

Hypothesis parallelogram_ABCD : is_parallelogram A B C D.
Hypothesis parallelogram_BCDE : is_parallelogram B C D E.
Hypothesis angle_ADE_43 : angle_at A D E = 43.

Theorem measure_angle_ABC_137 :
  angle_at B A C = 137.
Proof. Admitted.
####