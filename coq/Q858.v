####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variables A B C F G I J K L M : 'rV[R]_2.
Variables omega1 omega2 omega3 : circle.

Hypotheses
  Homega1 : forall P, P \\in omega1 <-> P = A \/ P = F \/ P = I \/ P = J;
  Homega2 : forall P, P \\in omega2 <-> P = F \/ P = B \/ P = I \/ P = K \/ P = L \/ P = M;
  Homega3 : forall P, P \\in omega3 <-> P = K \/ P = L \/ P = G \/ P = C.

Theorem three_circle_chain : G = C.
Proof. by []. Qed.
####