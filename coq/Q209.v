####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry euclidean.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Quadrilateral_Similarity.

Variable R : realType.

Variables O A B C D A' B' C' D' : 'rV[R]_2.

Hypothesis h_similarity : similar_quadrilateral A B C D A' B' C' D'.
Hypothesis h_colinear_OA_A_A' : colinear O A A'.
Hypothesis h_ratio_OA_A_A' : dist O A' / dist A' A = 20 / 10.
Hypothesis h_area_A_B_C_D_prime : area_quadrilateral A' B' C' D' = 120 ^ 2.

Theorem area_ABCD : area_quadrilateral A B C D = 27%:R.
Proof. Admitted.

End Quadrilateral_Similarity.
####