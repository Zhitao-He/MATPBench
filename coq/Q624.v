####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals angles geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem value_of_x_angle_diagram
    (A B C D : 'rV[R]_2)
    (h_collinear : collinear [:: D; C; A])
    (h_distinct : C != A /\ C != D)
    (h_angle1 : angle D C B = (3%:R * x)%:A)
    (h_angle2 : angle B C A = (5%:R * x)%:A)
    :
    x = 45%:R / 2%:R.
Proof. Admitted.
####