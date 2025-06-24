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

(* Angle 2 is defined as angle DAB *)
Theorem angle_at_A_parallel_AD_BC :
  angle_rad D A B = (60%:R * (PI / 180%:R)).
Proof. Admitted.

End ParallelLinesAngle.
####