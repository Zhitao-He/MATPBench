####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CircleArcProblem.

Variable R : realType.

Record point := Point { px : R; py : R }.
Variables A B R S T : point.
Variable circle : point -> R -> Prop.
Hypothesis HA_center : forall r, circle A r.
Variable r : R.
Hypothesis Hr0 : 0 < r.

Hypothesis HB_on_circle : circle B r.
Hypothesis HR_on_circle : circle R r.
Hypothesis HS_on_circle : circle S r.

Hypothesis H_B_A_T : exists f, T = Point (A.px + r) A.py.
Hypothesis HS_between_RT : exists λ, 0 < λ < 1 /\ S = Point (λ*R.px + (1-λ)*T.px) (λ*R.py + (1-λ)*T.py).

Theorem inscribed_angle : angle R S T = angle R A T.
Proof.
admit.
Qed.

End CircleArcProblem.
####