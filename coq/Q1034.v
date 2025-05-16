####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry euclidean.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section OI_perp_AI_theorem.

Variable R : realType.
Implicit Types A B C O I : 'rV[R]_2.

Theorem triangle_OI_perp_AI_side_sum
  (A B C : 'rV[R]_2)
  (hnd : ~ colinear A B C)
  (O : 'rV[R]_2)
  (I : 'rV[R]_2)
  (Hcirc : circumcenter A B C O)
  (Hinc : incenter A B C I)
  (Hperp : (\vec{O - I}) \perp (\vec{A - I}))
  :
    norm (A - B) + norm (A - C) = 2 * norm (B - C).
Proof. Admitted.

End OI_perp_AI_theorem.
####