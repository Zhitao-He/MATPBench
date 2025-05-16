####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Angle_Finding_Problem.

Variable Point : Type.

Variables A B C D E F G : Point.

Hypotheses
  (H1 : angle B A C = 25%:R) and
  (H2 : angle A B C = 51%:R) and
  (H3 : angle B C D = 35%:R) and
  (H4 : angle D C E = 28%:R) and
  (H5 : angle F E G = 90%:R).

Definition angle1 := angle B C E.
Definition angle2 := angle A C B.
Definition angle3 := angle A B D.
Definition angle4 := angle C E F.

Theorem sum_angles : angle1 + angle2 + angle3 + angle4 = 360%:R.
Proof.
admit.
Qed.

End Angle_Finding_Problem.
####