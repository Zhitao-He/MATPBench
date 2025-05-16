####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryProblem.

Variable R : realType.

Variables A B C F E : 'rV[R]_2.

Hypothesis BE_collinear : colinear [:: B; E].
Hypothesis BE_length : `|E - B| = 15.
Hypothesis BC_length : `|C - B| = 12.
Hypothesis circle : exists O : 'rV[R]_2, exists r : R, 0 < r /\
                      on_circle O r A /\
                      on_circle O r C /\
                      on_circle O r F.
Hypothesis F_between_BA : between F B A.
Hypothesis C_on_BC : between C B E.
Hypothesis F_on_AC : colinear [:: A; C; F].
Hypothesis CA_length : `|A - C| = x.

Theorem value_of_x : x = 9.
Proof. Admitted.

End GeometryProblem.
####