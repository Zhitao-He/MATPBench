####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section IsoscelesTriangleAngle.

Variable R : realType.
Let point := 'rV[R]_2.

Variables A B C E D F : point.

Hypothesis ABC_isosceles : dist A B = dist A C.
Hypothesis ABC_noncolinear : ~colinear A B C.
Hypothesis E_midpoint : E = midpoint A C.
Hypothesis D_on_BC : on_line D B C.
Hypothesis BD_ratio : dist B D = 2 * dist C D.

(* DF perpendicular to BE at F *)
Hypothesis DF_perp_BE : perpendicular (seg D F) (seg B E).
Hypothesis F_on_BE : on_line F B E.

Theorem angle_equality : angle E F C = angle A B C.
Proof. Admitted.

End IsoscelesTriangleAngle.
####