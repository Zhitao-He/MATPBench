####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryProblem.

Variable Point : Type.

Variables J K L M N : Point.

Variable angle : Point -> Point -> Point -> R.

Hypothesis angle_range : forall A B C : Point, 0 <= angle A B C <= 180.

Hypothesis isosceles_KLN : exists X, X <> L /\ X <> N /\ angle K L X = angle K N X.
Hypothesis isosceles_LMN : exists Y, Y <> M /\ Y <> N /\ angle L M Y = angle L N Y.

Hypothesis angle_J_K_N : angle J K N = 130.
Hypothesis angle_J_L_K : angle J L K = 25.
Hypothesis angle_K_L_N : angle K L N = 18.
Hypothesis angle_N_L_M : angle N L M = 20.

Theorem angle_L_K_N_81 :
    angle L K N = 81.
Proof. Admitted.

End GeometryProblem.
####