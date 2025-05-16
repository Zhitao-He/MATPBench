####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals normedtype trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem trigonometric_tangent_graph_identity :
  exists f : R -> R,
    (forall x : R, f x = sin x / cos x) /\
    (forall k : int, forall x : R,
        f (x + k * PI) = f x) /\
    (forall n : int, f (PI/2 + n * PI) =+oo) /\
    (forall x : R, filterlim f (x \near (PI/2)) p_infty).
Proof. Admitted.
####