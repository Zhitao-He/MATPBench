####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals geometry euclidean.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Perimeter_Quadrilateral_OCAB.

Variable R : realType.

Variables O C A B E : 'rV[R]_2.

Hypothesis CE_is_7 : `|C - E| = 7.
Hypothesis OC_is_13 : `|O - C| = 13.
Hypothesis OA_is_15 : `|O - A| = 15.
Hypothesis OB_eq_AE : `|O - B| = `|A - E|.
Hypothesis OA_parallel_CB : (A - O) 1 * (B - O) 0 = (B - O) 1 * (A - O) 0.
Hypothesis OE_perp_CA : [<: O - E, C - A :>] = 0.
Hypothesis E_between_CA : exists l:R, 0 < l < 1 /\ E = l *: C + (1 - l) *: A.

Theorem perimeter_OCAB :
  `|O - C| + `|C - A| + `|A - B| + `|B - O| = 56.
Proof. Admitted.

End Perimeter_Quadrilateral_OCAB.
####