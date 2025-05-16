####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem geometry_right_triangle_b_value :
  forall (A C D E : 'rV[R]_2) (b : R),
    (* Points D, A, E are collinear, with D between E and A *)
    colinear E D A /\
    (0 < b) /\
    (D = (b *: (row 1%:M))%R) /\
    (A = ((b + (b - \|E - D\|%R)) *: (row 1%:M))%R) /\
    (* CD is perpendicular to EA, and CD = b+5 *)
    is_orthogonal (C - D) (A - E) /\
    (\|C - D\| = b + 5) /\
    (* DE = b *)
    (\|D - E\| = b) ->
    b = 8.
Proof. Admitted.
####