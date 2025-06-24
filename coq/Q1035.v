####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section QuadrilateralAngle.

Variable R : realType.
Let point := 'rV[R]_2.

Variables A B F D C E G : point.

Hypothesis quadrilateral : ~colinear A B F /\ ~colinear A D F.
Hypothesis C_on_BF : on_line C (line_through B F).
Hypothesis E_on_DF : on_line E (line_through D F).
Hypothesis angle_condition : angle B A C = angle D A E.
Hypothesis G_intersection : exists l1 l2,
    l1 = line_through B E /\
    l2 = line_through C D /\
    intersects_at l1 l2 G.

Theorem angle_equality : angle F A C = angle G A E.
Proof. Admitted.

End QuadrilateralAngle.
####