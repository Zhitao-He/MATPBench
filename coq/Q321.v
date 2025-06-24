####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section TriangleArea.

Variable R : realType.

Variables A B C D E : 'rV[R]_2.

Hypothesis AB_parallel_DE : parallel (line A B) (line D E).
Hypothesis BD_4BC : norm (D - B) = 4 * norm (C - B).
Hypothesis area_ABC : triangle_area A B C = 6.
Hypothesis collinear_BCD : colinear B C D.
Hypothesis between_B_C_D : between B C D.

Theorem area_CDE : triangle_area C D E = 54.
Proof. Admitted.

End TriangleArea.
####