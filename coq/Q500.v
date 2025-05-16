####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CircleArcHKL.

Variable R : realType.

Variables J H K L M P : 'rV[R]_2.

Hypothesis circ : on_circle J H K L M.
Hypothesis collinear_JHK : collinear [:: J; H; K].
Hypothesis betweenness_JHK : between J H K.
Hypothesis perpendiculars : perpendicular (K - P) (L - M).
Hypothesis on_line_KP : exists a : R, P = K + a * (L - M).
Hypothesis LM_eq_12 : `|L - M| = 12.
Hypothesis angle_HML_84 : angle_rad H M L = (84%:R * pi) / 180%:R.

(* The theorem: the measure of arc HKL (minor arc H-K-L) is 42 degrees *)
Theorem value_measure_of_arc_HKL :
  arc_measure H K L = 42%:R.
Proof. Admitted.

End CircleArcHKL.
####