####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import finset fingroup.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Polygon_Construction.

Variable R : realType.

(* Define the number of sides of each polygon *)
Definition n_triangle := 3.
Definition n_square := 4.
Definition n_pentagon := 5.
Definition n_hexagon := 6.
Definition n_heptagon := 7.
Definition n_octagon := 8.

(* Each regular polygon is constructed on a non-adjacent side of the previous polygon. As each polygon shares one side with the previous polygon, the total number of new sides added is total sides minus 1 for each attachment. The triangle starts with 3 sides, and we attach 5 more polygons. So we subtract 5 shared sides. *)
Definition total_sides := n_triangle + n_square + n_pentagon + n_hexagon + n_heptagon + n_octagon - 5.

Theorem final_polygon_has_23_sides : total_sides = 23.
Proof. by []. Qed.

End Polygon_Construction.
####