####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section RectangleInTriangle.

Variable R : realType.

Variables A B C W X Y Z : 'rV[R]_2.

Hypothesis H_ABC_noncollinear : ~ colinear A B C.

(* Hypotheses for points on segments *)
Hypothesis H_W_on_AB : on_line W (seg B A).
Hypothesis H_X_on_AC : on_line X (seg A C).
Hypothesis H_Y_on_BC : on_line Y (seg B C).
Hypothesis H_Z_on_BC : on_line Z (seg B C).

(* Rectangle hypothesis *)
Hypothesis H_rectangle_WXYZ :
  W != X /\ X != Y /\ Y != Z /\ Z != W /\
  orthogonal (X - W) (Z - W) /\
  X - W = Y - Z /\                (* vectors WX parallel to YZ, equal in length *)
  orthogonal (Y - X) (W - X) /\
  Y - X = Z - W.                  (* vectors XY parallel to ZW, equal in length *)

(* Given angles *)
Hypothesis H_angle_BWZ : angle_at B W Z = (26%:R *%PI / 180).
Hypothesis H_angle_CXY : angle_at C X Y = (
####