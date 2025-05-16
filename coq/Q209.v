####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry euclidean.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points O, A, B, C, D, A', B', C', D' in the plane *)
Variables (O A B C D A' B' C' D' : 'rV[R]_2).

Hypotheses
  (* The quadrilaterals are similar as shown in the figure *)
  (simil_ABCD_ApBpCpDp : similar_quadrilateral A B C D A' B' C' D')
  (* O is the intersection of diagonals (we let this generic and focus on ratios and areas as needed) *)
  (OA'_AA' : colinear O A' A)
  (* OA' : A'A = 20 : 10 *)
  (h_ratio : dist O A' / dist A' A = 20 / 10)
  (* The area of quadrilateral A'B'C'D' is 120^2 *)
  (h_area_small : area_quadrilateral A' B' C' D' = 120 ^+ 2)
  .

Theorem area_ABCD_27cm2 :
  area_quadrilateral A B C D = 27.
Proof. Admitted.
####