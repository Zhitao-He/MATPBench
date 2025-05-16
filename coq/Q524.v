####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section value_a_23.

Variable R : realType.

Variables I G L M Y W E X H Z K N : R2.
Variable a : R.

Hypotheses
  (* Collinearity and parallelogram hypotheses from the diagram *)
  (HYMI : collinear [:: H; Y; M; I])
  (HGLW : collinear [:: G; L; W])
  (HENX : collinear [:: E; N; X])
  (HMZK : collinear [:: H; M; Z; K])
  (HYZW : parallelogram Y W X Z)
  (* Angles at W, X, and Z as marked (with indicated orientation) *)
  (angle_W : angle_at W Y W L = 3 * a + 40)
  (angle_X : angle_at X Y X E = 3 * a + 40)
  (angle_Z : angle_at Z Y Z K = 3 * a + 40).

Theorem value_a_23 : a = 23.
Proof. Admitted.

End value_a_23.
####