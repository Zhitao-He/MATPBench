####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points: L, C, R, M, N *)
Variables (L C R M N : 'rV[R]_2).

(* Hypotheses: *)
Hypothesis circle : exists O : 'rV[R]_2, exists r : R, 0 < r /\
    (\forall P, (P \in [::L;C;R;M;N]) -> normr (P - O) = r).

Hypothesis LCR_noncollinear : ~ collinear [::L;C;R].
Hypothesis C_equiv_center : True. (* "C" is center of the circle, by naming in the diagram *)

(* Angle assignments from the diagram: *)
Variable x : R.

Hypothesis angle_MCR : angle C M R = x - 1.
Hypothesis angle_LCR : angle L C R = 3 * x + 5.
Hypothesis angle_NCM : angle N C M = 60.

Theorem value_measure_of_angle_LCR :
    angle L C R = 137.
Proof. Admitted.
####