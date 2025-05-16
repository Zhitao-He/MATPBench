####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Geometry_Problem.

Variable R : realType.

Variables A B C D E X : R^2.

Hypotheses
  (circ : circle_through3 A B D /\ on_circle C circ.1 /\ on_circle E circ.1)
  (colinear_ABCE : colinear [::A;B;C;E])
  (AB_5 : dist A B = 5)
  (BC_15_2 : dist B C = 15/2)
  (CE_9_2 : dist C E = 9/2)
  (between_A_B_C : between A B C)
  (between_C_E : between C E)
  (between_E_on_line : between B C E)
  (between_BD : between B D X)
  (between_BD_line : colinear [::B;D;X])
.

Definition BD := dist B D.

Theorem value_x_eq_13 : BD = 13.
Proof. Admitted.

End Geometry_Problem.
####