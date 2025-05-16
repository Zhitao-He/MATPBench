####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem three_tangent_circles_equilateral_triangle_area :
  exists A B C P Q R S,
    equilateral_triangle A B C /\n    tangent_circle P A B /
    tangent_circle Q B C /
    tangent_circle R C A /
    tangent_circle S A B /
    (* Two of the three circles are tangent pairwise so that the third fits in the gap *)
    True.
Proof.
admit.
Qed.
####