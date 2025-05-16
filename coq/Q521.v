####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry euclidean.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Parallelogram_Angles.

Variable R : realType.

Variables E F M A Y Q : 'Point[R]_2.

Hypothesis parallelogram_EFMA : is_parallelogram E F M A.
Hypothesis Y_on_EM : on_line Y (Line E M).
Hypothesis Q_on_FA : on_line Q (Line F A).
Hypothesis YQ_parallel_EF : parallel (Line Y Q) (Line E F).
Hypothesis YQ_parallel_MA : parallel (Line Y Q) (Line M A).

Variables x y : R.

(* Angle measure in degrees *)
Hypothesis angle_Y : angle_deg (M, Y, Q) = 3 * y + 1.
Hypothesis angle_Q : angle_deg (Y, Q, A) = 4 * x - 5.
Hypothesis angle_A : angle_deg (Q, A, M) = 3 * x + 11.

Theorem value_of_y_eq_40 : y = 40.
Proof. Admitted.

End Parallelogram_Angles.
####