####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables D H F : 'I_3 -> R.  (* points in the plane *)
Hypothesis D_neq_H : D != H.
Hypothesis H_neq_F : H != F.
Hypothesis F_neq_D : F != D.

Variable C : {pos R * 'I_3 -> R}.   (* circle center and points on the circle *)

Hypothesis D_on_C : on_circle (fst C) (snd C) D.
Hypothesis H_on_C : on_circle (fst C) (snd C) H.
Hypothesis F_on_C : on_circle (fst C) (snd C) F.

Hypothesis FHD81 : angle F H D = 81%:R.

Theorem angle_D_H_162 :
    angle D H F = 162%:R.
Proof. Admitted.
####