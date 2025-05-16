####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Section AreaQuadrilateral.

Variables A B C D E : 'rV[R]_2.

Hypotheses
  (Hperp : [<: (E - A) , (E - B) :>] = 0)
  (HAE : `|E - A| = 12)
  (HBE : `|E - B| = 12)
  (HCE : `|E - C| = 17)
  (HDE : `|E - D| = 17)
  (Hconv : convex_quad A D B C).

Definition area_quadrilateral (P Q R S : 'rV[R]_2) : R :=
  let area (X Y Z : 'rV[R]_2) := 0.5 * `| (Y - X) \det_2 (Z - X) | in
  area P Q R + area P R S.

Theorem area_ADBC_408 :
  area_quadrilateral A D B C = 408.
Proof. Admitted.

End AreaQuadrilateral.
####