####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section triangle_area_ratio.

Variable R : realType.

Variables A B C D : 'rV[R]_2.

Hypotheses
  (right_C : [/\ colinear [:: B; C; A] = false,
                `[< angle B C A = pi/2 >] ])
  (right_D : `[< angle B D C = pi/2 >] )
  (right_ADC : `[< angle A D C = pi/2 >] )
  (angle_A : `[< angle C A B = pi/6 >] )
  (between_D : on_line D (line B A))
  (between_D_C : on_line D (line A C)).

Definition area (P Q R : 'rV[R]_2) : R :=
  (1%:R/2) * `| (Q - P) ** (R - P) |.

Theorem triangle_BDC_ADC_area_ratio :
  area B D C / area A D C = 1 / 3.
Proof. Admitted.

End triangle_area_ratio.
####