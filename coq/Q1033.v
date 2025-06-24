####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section TangentSecantAngle.

Variable R : realType.
Let point := 'rV[R]_2.

Variables O A B C D P E : point.

Hypothesis O_circle : on_circle O A /\ on_circle O B /\ on_circle O C /\ on_circle O D.
Hypothesis PA_tangent : is_tangent P A O.
Hypothesis PB_tangent : is_tangent P B O.
Hypothesis PCD_secant : colinear P C D /\ C <> D.
Hypothesis E_midpoint : E = midpoint A B.

Theorem angle_equality : angle A C D = angle B C E.
Proof. Admitted.

End TangentSecantAngle.
####