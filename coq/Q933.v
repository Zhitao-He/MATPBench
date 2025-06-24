####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CircleTangentProblem.
Variable R : realType.
Variables C E D B : 'Point[R]_2.

Hypotheses
  CE_length : dist C E = 7;
  circle_center_C : forall P, (P = E \/ P = B) -> dist C P = dist C E;
  DB_tangent : tangent (line D B) (circle C (dist C E));
  DE_tangent : tangent (line D E) (circle C (dist C E));
  CE_perp_DE : perpendicular (line C E) (line D E);
  DB_perp_CB : perpendicular (line D B) (line C B);
  ED_perp_BD : perpendicular (line E D) (line B D);
  collinear_EDB : collinear [:: E; D; B].

Definition x := dist E D.

Theorem x_value_7 : x = 7.
Proof. by []. Qed.

End CircleTangentProblem.
####