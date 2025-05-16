####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem value_x_6 :
  forall (E F G H : 'point[R]) (x : R),
    (* EFG is a triangle, EH is perpendicular to FG at H between F and G *)
    colinear F H G /\
    E != F /\ E != G /\ EH_perp : perpendicular (E - H) (G - F) /\
    between F H G /\
    angle F H E = 15 * x%:R%:degrees /\
    angle G H E = 15 * x%:R%:degrees /\
    (E - H) != 0 /\ (F - H) != 0 /\ (G - H) != 0
    ->
    x = 6.
Proof. Admitted.
####