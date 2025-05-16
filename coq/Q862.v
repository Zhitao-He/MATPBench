####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem value_x_36_5 :
  forall (A B C D E : 'cV[R]_2),
    (* AB = 15 *)
    norm (B - A) = 15 /\

    (* AD = 9 *)
    norm (D - A) = 9 /\

    (* BD = 12 *)
    norm (D - B) = 12 /\

    (* E is the foot of the perpendicular from D to AB *)
    (exists k : R, E = (1 - k) *: A + k *: B) /\
    vect_orthogonal (E - D) (B - A) /\

    (* angle EDB = 90 degrees *)
    vect_orthogonal (B - D) (E - D) ->

    (* x = length(DC) = 36/5 *)
    norm (C - D) = 36 / 5.
Proof. Admitted.
####