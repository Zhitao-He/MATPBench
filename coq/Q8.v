####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CircleRadius.

Variable R : realType.
Variables A B C O : 'rV[R]_2.

Hypothesis AB_diameter : O = (A + B) / 2.
Hypothesis AC_8 : `|A - C| = 8.
Hypothesis BC_15 : `|B - C| = 15.

Theorem circle_radius_ABC : `|A - B| / 2 = 8.5.
Proof.
  have H : `|A - B|^2 = 8^2 + 15^2 by rewrite normv2D //; field.
  rewrite -{1}[`|A - B|^2]sqrtCK ?sqr_ge0 //. 
  by field.
Qed.

End CircleRadius.
####