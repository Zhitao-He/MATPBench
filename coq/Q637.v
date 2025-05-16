####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section AngleDiagram.

Variable R : realType.

Variables A B C D E F G : 'rV[R]_2.

Hypothesis collinear_A_D_F_G_E_B : collinear [:: A; D; F; G; E; B].
Hypothesis D_between_A_F : between D A F.
Hypothesis F_between_D_G : between F D G.
Hypothesis G_between_F_E : between G F E.
Hypothesis E_between_G_B : between E G B.

Hypothesis C_not_collinear_AB : ~ collinear [:: A; B; C].

(* Angles at C between consecutive points on base *)
Hypothesis angle_ACD_eq_42 : angle C D A = 42%:R.
Hypothesis angle_FCE_eq_77 : angle C F A = 77%:R.

(* Points D, F, G, E lie on segment AB between A and B in order, per diagram. *)

Theorem angle_GCF_eq_26 :
  angle G C F = 26%:R.
Proof. Admitted.

End AngleDiagram.
####