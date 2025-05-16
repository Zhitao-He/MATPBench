####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem square_nested_area
    (A B C D E F G H : 'rV[R]_2)
    (side : R)
    (
      Hsquare : [/\side > 0,
        A = row2 0 side, B = row2 side side,
        C = row2 side 0, D = row2 0 0,
        E = row2 2 side
      ]
    )
  : True.
Proof.
admit.
Qed.
####