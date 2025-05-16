####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit Defensive.

Section rectangle_tangent_circle.

Variable R : realType.
Variables E D B C : 'rV[R]_2.
Variable x : R.
Hypotheses
  E_neq_D : E != D,
  D_neq_B : D != B,
  B_neq_C : B != C,
  C_neq_E : C != E,
  perp_ED_DC : (E - D) ⊥ (C - D),
  perp_EB_DC : (E - B) ⊥ (C - B),
  len_CD_7 : `|C - D| = 7,
  len_EB_7 : `|E - B| = 7,
  len_ED_x : `|E - D| = x,
  len_BC_x : `|B - C| = x.

Theorem square_tangent_circle_problem :
  x = 7.
Proof.
  (* proof omitted *)
Admitted.

End rectangle_tangent_circle.
####