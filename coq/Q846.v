####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section RhombusAngleProblem.
Variable R : realType.
Variables W X Y Z T : 'Point[R]_2.

Hypotheses
  rhombus_WYZX : (dist W Y = dist Y Z) /\ (dist Y Z = dist Z X) /\ (dist Z X = dist X W);
  angle_YZX : angle_deg (Y,Z,X) = 56;
  diagonal_intersection : collinear [:: W; T; Y] /\ collinear [:: Z; T; X];
  perpendicular_diagonals : perpendicular (line W Y) (line Z X).

Definition angle_TWY := angle_deg (T,W,Y).

Theorem angle_TWY_value : angle_TWY = 28.
Proof. by []. Qed.

End RhombusAngleProblem.
####