####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import finset fingroup.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Polygon_Construction.

Variable n_tri : nat. (* Number of sides of triangle *)
Variable n_sqr : nat. (* Number of sides of square *)
Variable n_pent : nat. (* Number of sides of pentagon *)
Variable n_hex : nat. (* Number of sides of hexagon *)
Variable n_hept : nat. (* Number of sides of heptagon *)
Variable n_oct : nat. (* Number of sides of octagon *)

Hypothesis Htri : n_tri = 3.
Hypothesis Hsqr : n_sqr = 4.
Hypothesis Hpent : n_pent = 5.
Hypothesis Hhex : n_hex = 6.
Hypothesis Hhept : n_hept = 7.
Hypothesis Hoct : n_oct = 8.

(* Each new regular polygon is constructed on a non-adjacent side of the previous polygon. The resulting polygon after attaching square, pentagon, hexagon, heptagon, and octagon in this fashion to the sides of an initial equilateral triangle will have 23 sides. *)

Theorem polygon_number_of_sides :
  let final_sides := n_tri + n_sqr + n_pent + n_hex + n_hept + n_oct - 2 * 5 in
####