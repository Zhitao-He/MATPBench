####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables D E F : 'rV[R]_2.

Hypothesis side_FE : `|E - F| = 14.
Hypothesis side_ED : forall x : R, x = `|E - D| ->  (0 < x).
Hypothesis side_DF : forall x : R, x = `|D - F| ->  (0 < x).

Theorem perimeter_triangle_DFE :
  exists x y : R, 
    x = `|E - D| /\ y = `|D - F| /\ x + y + `|E - F| = 42.
Proof. Admitted.
####