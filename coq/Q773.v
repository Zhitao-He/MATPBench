####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Geometry_Problem.

Variable R : realType.

Record point := mkPoint { px : R; py : R }.

Variables K J L M P H : point.

Hypothesis KJL_collinear : collinear [:: K; J; L].
Hypothesis PKM_collinear : collinear [:: P; K; M].
Hypothesis PHJ_collinear : collinear [:: P; H; J].
Hypothesis MHL_collinear : collinear [:: M; H; L].

Hypothesis parallelogram_PKJH :
  parallelogram P K J H.

Hypothesis parallelogram_PJHM :
  parallelogram P J H M.

Hypothesis ML_eq_3 :
  dist M L = 3.

Variable x : R.
Hypothesis x_eq_PJ : dist P J = x.

Theorem value_of_x :
  x = 3/2.
Proof. Admitted.

End Geometry_Problem.
####