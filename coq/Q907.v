####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section SegmentProblem.
Variable R : realType.
Variables A B C D Y : 'Point[R]_2.
Variables x y : R.

Hypotheses
  AD_length : dist A D = x + 2;
  BD_length : dist B D = 3 * y - 9;
  BD_eq_DY : dist B D = dist D Y;
  CA_eq_AY : dist C A = dist A Y;
  CB_length : dist C B = (3/2) * x + 11;
  DY_length : dist D Y = 2 * y + 6;
  collinear_ABD : collinear [:: A; B; D];
  collinear_ACY : collinear [:: A; C; Y].

Theorem x_value_14 : x = 14.
Proof. by []. Qed.

End SegmentProblem.
####