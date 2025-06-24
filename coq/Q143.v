####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section LinkedRingsDistance.

Variable R : realType.

(* Given parameters *)
Let thickness := 1%:R.
Let D_top := 20%:R.
Let D_bottom := 3%:R.

(* Number of rings: (D_top - D_bottom) / (decrease per ring) + 1 *)
Let n := ((D_top - D_bottom) / 1%:R + 1)%nat.

(* Function to compute the outside diameter of the k-th ring from the top (0-indexed) *)
Definition diam (k : nat) := D_top - k%:R.

(* Compute the total distance from the top of the top ring to the bottom of the bottom ring *)
Definition total_distance :=
  (* Sum of the vertical distances between the centers of consecutive rings *)
  let center_distances :=
    \sum_(k < n.-1)
      let r1 := diam k / 2%:R in (* outer radius of the k-th ring *)
      let r2 := diam (k.+1) / 2%:R in (* outer radius of the (k+1)-th ring *)
      (r1 + r2) - thickness (* distance between centers of consecutive rings *)
  in
  center_distances + thickness. (* Add the thickness of the bottom ring to reach its bottom *)

(* Theorem: The total distance is 82 cm *)
Theorem linked_rings_distance : total_distance = 82%:R.
Proof.
  (* Proof steps would involve:
     1. Calculating the number of rings `n`.
     2. Summing the vertical distances between the centers of consecutive rings.
     3. Adding the thickness of the bottom ring to get the total distance.
     4. Verifying that the total distance equals 82 cm.
  *)
  Admitted.

End LinkedRingsDistance.
####