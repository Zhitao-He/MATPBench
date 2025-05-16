####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Section Rectangle_Area_Triangle.

Variable A B C D E F : 'rV[R]_2.

Hypothesis rect_ABCD :
  [/\ 
    B = A + row2 0 16,
    C = A + row2 12 16,
    D = A + row2 12 0
  ].

Hypothesis CE_perp_AC : 
  exists (lambda : R), E = C + lambda * vector2 0 1 /\ 
                       ((rowm (A - C)) *m (rowm (E - C))^T = 0).

Hypothesis CE_len : `|E - C| = 15.

Hypothesis F_def :
  exists (s t : R),
    0 < s /\ 0 < t /\ F = (1 - s) *: A + s *: E /\ F = (1 - t) *: C + t *: D.

Theorem rectangle_acf_area_75 :
  area_triangle A C F = 75.
Proof. Admitted.

End Rectangle_Area_Triangle.
####