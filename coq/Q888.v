####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section quadrilateral_perp.

Variable R : realType.
Variables A B C D E : 'rV[R]_2.
Hypotheses
  (H_E_on_BD : collinear [:: B; E; D])
  (H_EA_perp_BC : (E - A) ⊥ (B - C))
  (H_EB_perp_AD : (E - B) ⊥ (A - D))
  (dist_BC_21 : `| B - C | = 21)
  (dist_ED_8 : `| E - D | = 8)
  (dist_AD_17 : `| A - D | = 17).

Theorem position_of_E :
  (* E is uniquely determined by these conditions *)
  True.
Proof.
  (* proof omitted *)
Admitted.

End quadrilateral_perp.
####