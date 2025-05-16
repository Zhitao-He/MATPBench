####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Angle_HGB_Theorem.

Variable R : realType.

Variables A B F G H J : 'rV[R]_2.
Hypothesis Hdistinct : [/\ A != B, B != F, F != G, G != H, H != J & J != A].

Variable O : 'rV[R]_2. (* Center of the circle *)
Variable r : R.          (* Radius of the circle *)
Hypothesis circle_def :
  (distance O F = r) /\
  (distance O G = r) /\
  (distance O H = r) /\
  (distance O J = r) /\
  (distance O B = r).

Hypothesis B_between_GJ : colinear G B J /\ (between B G J).
Hypothesis F_B_H_colinear : colinear F B H.
Hypothesis angle_ABF_right : angle A B F = pi / 2.

Hypothesis angle_GHJ_78 : angle G H J = 78%:R.

Theorem value_of_angle_HGB :
  angle H G B = 51%:R.
Proof. Admitted.

End Angle_HGB_Theorem.
####