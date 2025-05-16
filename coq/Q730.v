####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Angle_IAF_Problem.

Variable R : realType.

Variables A B C D F G I : R^2.

Hypothesis col_G_B_F_I : colinear G B F I.
Hypothesis betw_G_B_F : between G B F.
Hypothesis betw_B_F_I : between B F I.

Hypothesis on_line_BD : exists l, on_line B l /\ on_line D l.
Hypothesis on_line_DC : exists l', on_line D l' /\ on_line C l'.

Hypothesis on_line_AF : exists m, on_line A m /\ on_line F m.
Hypothesis on_line_AI : exists n, on_line A n /\ on_line I n.

Hypothesis angle_DBF_47 : angle_deg D B F = 47.
Hypothesis angle_FBD_65 : angle_deg F B D = 65.
Hypothesis angle_ICB_112 : angle_deg I C B = 112.

Theorem measure_angle_IAF_47 :
  angle_deg I A F = 47.
Proof. Admitted.

End Angle_IAF_Problem.
####