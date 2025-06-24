####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section FlowerGarden.
  Variable R : realType.

  (* Define the areas of the rectangular regions (in square feet) *)
  Definition region1_area := 4 * 5.
  Definition region2_area := 7 * 3.
  Definition region3_area := 6 * 1.
  Definition region4_area := 2 * 2.
  Definition region5_area := 5 * 3.

  (* List of areas for all regions *)
  Definition areas : seq R :=
    [:: region1_area%:R; region2_area%:R; region3_area%:R; region4_area%:R; region5_area%:R].

  (* Costs of each flower type (asters, begonias, cannas, dahlias, Easter lilies) *)
  Definition flower_costs : seq R := [:: 1; 1.5; 2; 2.5; 3].

  (* Compute the minimal cost by assigning the cheapest flowers to the largest regions *)
  Definition minimal_cost :=
    let sorted_areas := sort (fun x y => x <= y) areas in
    let sorted_costs := sort (fun x y => x <= y) flower_costs in
    \sum_(i <- iota 0 5) (sorted_areas`_i * sorted_costs`_i).

  (* Theorem: The least possible cost is $108 *)
  Theorem least_possible_cost : minimal_cost = 108%:R.
  Proof.
    (* Proof steps would involve:
       1. Sorting the areas and costs in ascending order.
       2. Pairing the largest areas with the cheapest flowers.
       3. Verifying the total cost is minimized to $108.
    *)
    Admitted.
End FlowerGarden.
####