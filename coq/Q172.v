####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_FGH_FG_length_39 :
  forall (F G H : 'rV[R]_2),
    let FG := \norm(F - G) in
    let GH := \norm(G - H) in
    let FH := \norm(F - H) in
    exists x : R,
      FG = 9 * x - 6 /\
      GH = 7 * x + 4 /\
      FH = 17 /\
      FG = GH /\
      FG = 39.
Proof. Admitted.
####