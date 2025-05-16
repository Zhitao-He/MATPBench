####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope R_scope.

Variable R : realType.

Theorem angle_ABC_is_30_degrees
  (A B C D : R^2)
  (O : R^2)
  (r : R)
  (Hcirc : norm (A - O) = r /\ norm (B - O) = r /\ norm (C - O) = r)
  (Hbetw : \angle D A C = /#180 * PI) (* D is inside triangle *)
  (Hcenter : norm (D - O) < r)
  (Hangle_ADC_60 : angle D A C = (PI / 3))
  (Hbetween : between_angle B D C)
  : angle B A C = (PI / 6).
Proof. Admitted.
####