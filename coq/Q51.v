####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section ParallelogramArea.

Variable R : realType.

Variables A B C D E : 'rV[R]_2.

Hypothesis parallelogram : parallelogram A B C D.
Hypothesis E_interior : inside_quadrilateral E A B C D.
Hypothesis area_ABCD : area_quad A B C D = 6.

(* The shaded area in the diagram corresponds to the sum of triangles BCE and CDE.
   The result claims their total area is 3, regardless of E's position inside ABCD. *)
Theorem shaded_area_half :
  area_triangle B C E + area_triangle C D E = 3.
Proof. Admitted.

End ParallelogramArea.
####