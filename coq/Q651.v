####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables A B C D : 'hpoint_R.

Hypothesis parallelogram_ABCD : parallelogram A B C D.
Hypothesis AB_eq_18 : dist A B = 18%:R.
Hypothesis DC_eq_12 : dist D C = 12%:R.
Hypothesis angle_BAD_115 : angle_deg (angle_at A B D) = 115.

Theorem measure_angle_ADC_is_65 :
  angle_deg (angle_at D A C) = 65.
Proof. Admitted.
####