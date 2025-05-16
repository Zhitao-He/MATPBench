####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition hyperbola_equation x y := ((x + 3)^+2)/25 - ((y + 3)^+2)/25.
Theorem hyperbola_properties :
  let C := (-3, -3) in let V1 := (-8, -3) in let V2 := (2, -3) in
  let F1 := (-3 - 5*sqrt 2, -3) in let F2 := (-3 + 5*sqrt 2, -3) in
  hyperbola_equation (fst C) (snd C) = -1 /\
  hyperbola_equation (fst V1) (snd V1) = 1 /\ hyperbola_equation (fst V2) (snd V2) = 1 /\
  dist (fst F1, snd F1) C = 5 * sqrt 2 /\ dist (fst F2, snd F2) C = 5 * sqrt 2.
Proof.
admit.
Qed.
####