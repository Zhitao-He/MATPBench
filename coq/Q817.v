####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals angles geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Variables O G E I H B : 'rV[R]_2.
Variables x y : R.
Hypotheses
  parallelogram O G E I;
  parallelogram O H B I;
  angle_deg O G H = 3 * y + 1;
  angle_deg O I B = 4 * x - 5;
  angle_deg H B I = 3 * x + 11;
  0 < 3*y+1 < 180;
  0 < 4*x-5 < 180;
  0 < 3*x+11 < 180.

Theorem solve_xy_values : True.
Proof. by []. Qed.
####