####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryProblem.

Variable R : realType.
Let Point := 'rV[R]_2.

Variables A B C D E P : Point.

Hypotheses
  (H_ABC_acute : triangle A B C /\ angle_abc A B C < pi/2 /\ angle_abc B C A < pi/2 /\ angle_abc C A B < pi/2)
  (H_AB_lt_AC : dist A B < dist A C)
  (H_D_on_BC : on_line D B C)
  (H_E_on_BC : on_line E B C)
  (H_BD_eq_CE : dist B D = dist C E)
  (H_P_in_ABC : inside_triangle P A B C)
  (H_PD_par_AE : parallel (vect P D) (vect A E))
  (H_angle_PAB_eq_EAC : angle_abc P A B = angle_abc E A C).

Theorem geometry_triangle_putnam_style :
  angle_abc P B A = angle_abc P C A.
Proof. Admitted.

End GeometryProblem.
####