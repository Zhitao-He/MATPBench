####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variables J M L K : 'rV[R]_2.
Hypotheses
  (para : is_parallelogram J M L K)
  (ML4 : dist M L = 4)
  (JK4 : dist J K = 4)
  (JL6 : exists E, foot J M L = E /\dist J E = 6)
  (KL7 : dist K L = 7).

Theorem perimeter_JMLK_22 :
  dist J M + dist M L + dist L K + dist K J = 22.
Proof.
admit.
Qed.
####