####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section geometry_problem.

Variable R : realType.

Variable L K M N Q P R : 'e2[R].

Hypothesis collinear_LNKR : collinear [:: L; N; K; R].
Hypothesis collinear_LMR : collinear [:: L; M; R].
Hypothesis collinear_KMP : collinear [:: K; M; P].

Hypothesis NQ_perp_LK : perpendicular (N - Q) (K - L).
Hypothesis NQ_vertical : N.2 > Q.2.
Hypothesis Q_between_RP : between R Q P.

Hypothesis Q_on_NM : between N Q M.
Hypothesis Q_on_RP : between R Q P.

Hypothesis length_LR_10 : `|R - L| = 10.

Theorem line_RM_length_20 : `|R - M| = 20.
Proof. Admitted.

End geometry_problem.
####