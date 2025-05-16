####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Open Scope ring_scope.

Variable R : realType.

Theorem geometry_circle_angle_problem :
  forall (A H J K L G : R^2)
         (O : R^2)
         (C : {ps_circle R})
         (Honc : on_circle H C)
         (Jonc : on_circle J C)
         (Konc : on_circle K C)
         (Lonc : on_circle L C)
         (O_center : center C = O)
         (OG_eq : in_interior G C)
         (AHJ : collinear A H J = false)
         (arc_HJ : angle H O J = 47)
         (arc_LK : angle L O K = 116)
         (HGJ : is_angle_at_point G H J)
         (angle_x : angle H G K = x)
         ,
    x = 163 / 2.
Proof. Admitted.
####