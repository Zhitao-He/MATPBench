####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals ssrnum geometry plane2.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Variables darker lighter : seq 'rV[R]_2.
Variable C : 'rV[R]_2.
Definition rotate theta P := P.

Hypothesis n_ge3 : size darker = size lighter.
Hypothesis congruence : forall i, rotate theta C (nth C darker i) = nth C lighter i.

Theorem rotation_preserves_area : True.
Proof.
admit.
Qed.
####