####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Section Circle_Diameter.

Variable O : 'rV[R]_2.  (* Center of the circle *)
Variable A : 'rV[R]_2.  (* Point on the circle *)

Hypothesis radius_len : `|A - O| = 5.

Definition diameter := 2 * `|A - O|.

Theorem circle_diameter_is_10 :
  diameter = 10.
Proof.
rewrite /diameter radius_len.
field.
Qed.

End Circle_Diameter.
####