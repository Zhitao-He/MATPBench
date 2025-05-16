####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section TriangleDBE_Perimeter.

Variable R : realType.

Variables A B C D E : 'e2_(R).

Hypothesis AC_eq_BC : `|C - A| = `|C - B|.

Hypothesis C_angle_right : angle B A C = pi/2.

Hypothesis AD_bisects_CAB : exists alpha : R, 
    0 < alpha < pi /\ angle D A B = angle C A D /\ D \is_on [A--C].

Hypothesis D_on_AC : D \is_on [A--C].

Hypothesis E_on_AB : E \is_on [A--B].

Hypothesis E_right : angle D E B = pi/2.

Hypothesis AB_length : `|B - A| = 6%:R.

Theorem triangle_DBE_perimeter :
    `|D - B| + `|B - E| + `|E - D| = 6%:R.
Proof. Admitted.

End TriangleDBE_Perimeter.
####