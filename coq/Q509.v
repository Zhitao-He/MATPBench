####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Circle_Angle_Problem.

Variable R : realType.

Variables A B C D : 'rV[R]_2.

Hypothesis Hcircle : on_circle B A C.
Hypothesis Hcircle2 : on_circle B A D.
Hypothesis Hcircle3 : on_circle B C D.

Hypothesis Hdistinct : [/\ A != B, B != C, C != D, D != A, A != C, B != D].

(* Angles at B between BA, BC, and BD in degrees *)
Definition angle_deg (P Q R : 'rV[R]_2) :=
  angle (Q - P) (R - P) * 180 / PI.

Hypothesis Hangles : 
  angle_deg B A C = 95 /\
  angle_deg B C D = 130 /\
  angle_deg B D A = x.

Theorem circle_angles_x_value :
  x = 135.
Proof. Admitted.

End Circle_Angle_Problem.
####