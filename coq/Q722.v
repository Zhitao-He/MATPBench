####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section parallelogram_problem.

Variable R : realType.

Variables N D F W Q C B : 'rV[R]_2.

(* Assume parallelogram NDFC *)
Hypothesis Hpar1 : parallelogram N D F C.

(* Points W and Q are collinear with F and C, with F-W-Q-C in order, and W between F and Q *)
Hypothesis Hcol1 : colinear F W Q.
Hypothesis Horder_F_W_Q_C : between F W Q /\ between W Q C.

(* BW perpendicular to FW *)
Hypothesis Hperp_BW_FW : perpendicular (B - W)%R (F - W)%R.

(* Distance assignments *)
Hypothesis HF_W : `|F - W| = 10.
Hypothesis HW_Q : `|W - Q| = 4.

(* x is length of segment DF *)
Let x := `|D - F|.

Theorem parallelogram_problem_value_x :
  x = 6.
Proof. Admitted.

End parallelogram_problem.
####