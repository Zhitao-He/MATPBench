####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Record point := mkPoint { px : R; py : R }.
Definition dist P Q := sqrt ((px P - px Q)^2 + (py P - py Q)^2).

Theorem geometry_circle_AB_60 :
  exists (O A B C D E F : point),
    dist A B = 2 * dist O A /\
    dist D E = dist E C = 24 /\
    dist A E = 12 /\
    dist E B = dist E F /\
    dist E B = x /\
    A <> B.
Proof. by []. Qed.
####