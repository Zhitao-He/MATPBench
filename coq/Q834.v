####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry euclidean.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Perimeter_Quadrilateral.

Variable R : realType.

Variables A B C D E : 'rV[R]_2.

Hypothesis colAEB : colinear [:: A ; E ; B].
Hypothesis right_angle_BEA : angle_r E B A = PI/2.

Hypothesis on_ray_EB : on_ray E B A.
Hypothesis on_ray_ED : on_ray E D A.

(* Given lengths from diagram *)
Hypothesis BE_len : `| B - E | = 5.
Hypothesis EB_perp_AD : orthogonal (B - E) (D - E).

Hypothesis angle_DEB_45 : abs (angle_r D E B) = PI/4.

Hypothesis CB_len : `| C - B | = 23.

(* The quadrilateral is C-A-D-B
   with consecutive vertices C, A, D, B *)

Definition perimeter_CADB :=
    `|C - A| + `|A - D| + `|D - B| + `|B - C|.

Theorem perimeter_quadrilateral_CADB :
    perimeter_CADB = 10 * sqrt 2 + 46.
Proof. Admitted.

End Perimeter_Quadrilateral.
####