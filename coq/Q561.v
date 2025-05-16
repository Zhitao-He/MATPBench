####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem value_of_angle_x_in_circle :
  forall (O A S R T : 'rV[R]_2),
    (* O is the center of the circle *)
    on_circle O S A /\ on_circle O S R /\ on_circle O S T /\
    (* Points R, S, T, A are concyclic (all on the circle) *)
    S <> A /\ S <> R /\ S <> T /\ R <> T /\ R <> A /\ A <> T /\
    (* |AR| = |ST| *)
    (\norm (A - R) = \norm (S - T)) /\
    (* |AT| = |SR| *)
    (\norm (A - T) = \norm (S - R)) /\
    (* angle TAS = 93° *)
    (let a_deg := 93 in angle_deg T A S = a_deg) ->
    (* value of x, where x is the angle R S A *)
    angle_deg R S A = 93.
Proof. Admitted.
####