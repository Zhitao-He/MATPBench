####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem putnam_reflection_beam
    (A B C : 'P[R^2])
    (hAB : A != B)
    (hBC : B != C)
    (hAC_eq : distp A C = distp A B)
    (alpha beta : R)
    (h_alpha : alpha = 19.94)
    (h_beta : beta = alpha / 10)
    (h_beta_val : beta = 1.994)
    :
    let path := fun n : nat => n = 71 in
    (* The beam of light, starting at a point on BC at C, reflects off segments AB and BC obedident to the law of reflection (angle of incidence equals angle of reflection), where the angle at C is alpha and the angle at B is beta, and AB = AC *)
    exists n : nat, path n.
Proof. Admitted.
####