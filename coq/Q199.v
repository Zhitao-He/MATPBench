####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section ParallelLinesAngle.

Variable R : realType.

Variables A B C D : 'point[R].
Hypothesis h_collinear1 : ~ collinear A B C.
Hypothesis h_collinear2 : ~ collinear A D C.
Hypothesis h_parallel : parallel A D B C.

(* Angle at C between BC and AC is 42°, label as angle1 *)
Hypothesis h_angle1 : angle_rad B C A = (42%:R * (PI / 180%:R)).
(* Angle at A between lines AB and AD is 78°, label as angle2 *)
Hypothesis h_angle2 : angle_rad B A D = (78%:R * (PI / 180%:R)).

Theorem angle_at_A_parallel_AD_BC :
  angle_rad D A B = (60%:R * (PI / 180%:R)).
Proof. Admitted.

End ParallelLinesAngle.
####