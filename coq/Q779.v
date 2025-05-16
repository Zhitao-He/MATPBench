####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals geometry trigonometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem perimeter_of_circle_S
  (S T R : 'rV[R]_2)
  (on_circle : exists O : 'rV[R]_2, exists r : R, 0 < r / (norm (S - O) = r) / (norm (T - O) = r) / (norm (R - O) = r))
  (ST_eq_8 : norm (S - T) = 8)
  (angle_RST_deg : let θ := acos (((S - T) *m (R - T)^T) / (norm (S - T) * norm (R - T))) in θ = (70%:R * (PI / 180)))
  : 2 * PI * (norm (S - T) / (2 * sin (angle_RST_deg / 2))) = 288 / 7.
Proof. Admitted.
####