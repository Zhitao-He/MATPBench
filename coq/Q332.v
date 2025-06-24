####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Variables A B E : 'rV[R]_2.

Hypotheses
  (HA : A = [:: 0; 0 ::])
  (HB : B = [:: 4; 0 ::])
  (HE : exists k : R, E = [:: 4 * k; 4 * (1 - k) ::])
  (Hright_ABE : angle_deg A B E + angle_deg B E A = 90).

Definition triangle_area (P Q R : 'rV[R]_2) :=
  (1%:R / 2) * `| (Q - P) ** (R - P) |.

Theorem area_triangle_ABE : 
  let area := triangle_area A B E in
  area = 40%:R / 9%:R.
Proof. Admitted.
####