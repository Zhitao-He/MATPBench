####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CircleTangentProblem.
Variable R : realType.
Variables R S T U A B C D J : 'Point[R]_2.

Hypotheses
  RD_length : dist R D = 3;
  SA_length : dist S A = 3;
  TA_length : dist T A = x;
  UC_length : dist U C = x;
  perimeter_TSRU : perimeter [:: T; S; R; U] = 18;
  circle_center_J : forall P, (P = R \/ P = S \/ P = T \/ P = U) -> dist J P = dist J R;
  tangent_RC : tangent (line R C) (circle J (dist J R));
  tangent_RD : tangent (line R D) (circle J (dist J R));
  tangent_SA : tangent (line S A) (circle J (dist J R));
  tangent_SD : tangent (line S D) (circle J (dist J R));
  tangent_TA : tangent (line T A) (circle J (dist J R));
  tangent_TB : tangent (line T B) (circle J (dist J R));
  tangent_UB : tangent (line U B) (circle J (dist J R));
  tangent_UC : tangent (line U C) (circle J (dist J R));
  collinear_RDC : collinear [:: R; D; C];
  collinear_SAD : collinear [:: S; A; D];
  collinear_TAB : collinear [:: T; A; B];
  collinear_UCB : collinear [:: U; C; B].

Definition x_value := x.

Theorem x_value_3_2 : x_value = 3 / 2.
Proof. by []. Qed.

End CircleTangentProblem.
####