####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem value_z_6 :
  forall (A B C D : 'rV[R]_2),
    (* C is the right angle vertex of triangle ABC *)
    is_right_triangle A B C /\
    (* CA perpendicular to CB *)
    ortho (C - A)%R (C - B)%R /\
    (* AB = 9, AC = x, BC = y *)
    \|A - B\| = 9 /\ let x := \|A - C\| in let y := \|B - C\| in
    (* D lies on AB such that CD is perpendicular to AB *)
    on_line D A B /\ ortho (D - C)%R (B - A)%R /\
    (* AD = 4 *)
    \|A - D\| = 4 /\
    (* z = \|C - D\| *)
    True ->
    \|C - D\| = 6.
Proof. Admitted.
####