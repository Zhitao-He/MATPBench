####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Record point := Point { px : R; py : R }.

Variable G C D E K F : point.
Variable O : point. (* center of the circle *)

Hypothesis circle_GCDEK : forall P, (P = G \/ P = C \/ P = D \/ P = E \/ P = K) -> ((px P - px O)^2 + (py P - py O)^2 = (px G - px O)^2 + (py G - py O)^2).

Hypothesis G_E_K_F_collinear : exists a : R, exists b : R, exists c : R,
  forall P, (P = G \/ P = E \/ P = K \/ P = F) -> a * px P + b * py P + c = 0.

Hypothesis angle_GCE : angle G C E = 45%:R.
Hypothesis angle_ECD : angle E C D = 130%:R.

(* x is the angle KDF *)
Variable x : R.

Hypothesis angle_KDF_x : angle K D F = x.

Theorem value_of_x :
  x = 20%:R.
Proof. Admitted.
####