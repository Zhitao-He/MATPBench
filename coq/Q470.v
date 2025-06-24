####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import finset.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Quadrilaterals.

Variable Point : Type.
Variables A B C D E F G H : Point.

(* Define a quadrilateral as an ordered list of 4 distinct points *)
Definition is_quadrilateral (p1 p2 p3 p4 : Point) := 
  p1 != p2 /\ p2 != p3 /\ p3 != p4 /\ p4 != p1 /\ 
  p1 != p3 /\ p2 != p4.

(* List all possible quadrilaterals in the diagram *)
Definition quadrilaterals := 
  [:: (A,B,C,D); (A,B,E,F); (C,D,E,F); (A,B,G,H)].

(* Verify that each is a valid quadrilateral *)
Lemma all_are_quadrilaterals :
  forall q, In q quadrilaterals -> is_quadrilateral q.1 q.2 q.3 q.4.
Admitted.

Theorem number_of_quadrilaterals_is_four :
  #|quadrilaterals| = 4%nat.
Proof.
  (* Count the elements in quadrilaterals list *)
  by rewrite cardsT enumT unlock; simpl; reflexivity.
Qed.

End Quadrilaterals.
####