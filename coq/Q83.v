####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Triangle_Area_Problem.

Variable R : realType.

Variables A B C P : 'rV[R]_2.

Hypothesis P_interior : inside_triangle A B C P.

Let line_parallel (Q1 Q2 : 'rV[R]_2) (through : 'rV[R]_2) : {l : 'rV[R]_2 -> bool | forall t : R, l (through + t *: (Q2 - Q1)) }.
Admitted.

(* Let t1, t2, t3 be the areas of the three smaller triangles in the figure, formed by drawing lines through P parallel to the sides of ABC,
   where each ti is opposite to vertex i. Let t1 = 4, t2 = 9, t3 = 49. Prove that the area S = area(A,B,C) = 144. *)

Variable t1 t2 t3 S : R.

Hypothesis t1_pos : t1 = 4.
Hypothesis t2_pos : t2 = 9.
Hypothesis t3_pos : t3 = 49.

Hypothesis partitioning :
  exists tA tB tC,
    tA > 0 /\ tB > 0
####