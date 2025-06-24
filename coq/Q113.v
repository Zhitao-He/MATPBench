####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import finset fingraph.
Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.
Local Open Scope ring_scope.

Section IcosahedronPaths.

(* Define the vertex type and edge relation *)
Variable V : finType.
Variable E : rel V.

(* Hypothesis: The icosahedron structure *)
Hypothesis icosahedron_structure : 
  exists (top bottom : V) (upper lower : 'I_5 -> V),
    [/
      (* Upper and lower pentagons are distinct from top/bottom *)
      (forall i, upper i != top) /
      (forall i, lower i != bottom),
      (* Top is connected to upper pentagon, lower pentagon is connected to bottom *)
      (forall i, E top (upper i)) /
      (forall i, E (lower i) bottom),
      (* Upper pentagon is cyclic (connected in a cycle) *)
      (forall i, E (upper i) (upper (inord ((i.+1) %% 5)))),
      (* Lower pentagon is cyclic (connected in a cycle) *)
      (forall i, E (lower i) (lower (inord ((i.+1) %% 5)))),
      (* Upper pentagon is connected to lower pentagon (each upper vertex to corresponding lower vertex and its opposite) *)
      (forall i, E (upper i) (lower i)) /
      (forall i, E (upper i) (lower (inord ((i.+4) %% 5))))
    ].

(* Define a path as a sequence of vertices where consecutive vertices are connected by an edge *)
Definition path (s : seq V) : Prop := 
  (forall i, i < (size s).-1 -> E (nth top s i) (nth top s i.+1)) /
  (s != [::]).

(* Define a valid path from top to bottom (no repeated vertices) *)
Definition valid_path (s : seq V) : Prop := 
  path s /\ 
  (head top s = top) /\ 
  (last bottom s = bottom) /\ 
  (uniq s).

(* Theorem: The number of valid paths from top to bottom is 810 *)
Theorem count_valid_paths : 
  #| { s : seq V | valid_path s } | = 810.
Proof.
  (* This is a placeholder proof; the actual proof would involve combinatorial reasoning *)
  Admitted.

End IcosahedronPaths.
####