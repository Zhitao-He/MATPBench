####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem circle_tangent_length
    (M K L : 'rV[R]_2)
    (x : R)
    (hK_on_circle : norm (K - M) = x)
    (hKL_tangent : [\pt K; \pt L] \perp (K - M))
    (hLK : `|L - K| = 17)
    (hLM : `|L - M| = 10) :
    x = 9.45.
Proof. Admitted.
####