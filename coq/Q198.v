####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section AngleBisectorTheorem.

Variable R : realType.

Variables A B C D E F : 'rV[R]_2.

Hypothesis triangle_ABC : ~~ colinear A B C.
Hypothesis D_on_AC : colinear A D C.
Hypothesis E_on_BC : colinear B E C.
Hypothesis F_on_DE : colinear D F E.
Hypothesis angle_B : angle C B A = 35%:R * PI / 180.
Hypothesis angle_C : angle B C A = 50%:R * PI / 180.
Hypothesis BD_bisects_ABC : is_angle_bisector B A C B D.
Hypothesis F_on_perp_AD : (D - F) `*` (A - D) = 0.
Hypothesis points_distinct : [/\A != B, B != C, A != C, D != A, D != C, E != B, E != C & F != D].

Theorem angle_CDE_is_45_degrees : angle C D E = 45%:R * PI / 180.
Proof.
admit.
Qed.

End AngleBisectorTheorem.
####