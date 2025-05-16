####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section ParallelogramTheorem.

Variable R : realType.

(* Points in the plane *)
Variables A B C D E F G O : 'e2[R].

Hypotheses
  (* ABCD is a parallelogram *)
  (parallelogram_ABCD : parallelogram A B C D)
  (* AC and BD intersect at O *)
  (O_def : [intersect_lt AC BD] O)
  (* E is foot of perpendicular from C to line ED (with E between D and E) *)
  (E_on_ED : colinear E D C)
  (E_perp_ED : perpendicular (line_through C E) (line_through E D))
  (* F is foot of perpendicular from D to line AC *)
  (F_on_AC : on_line F (line_through A C))
  (F_perp_AC : perpendicular (line_through D F) (line_through A C))
  (* FE meets extension of BA at G *)
  (G_on_FE : exists t : R, G = E + t *: (F - E))
  (G_on_extBA : exists s : R, G = A + s *: (A - B))
  (* G is the intersection point of FE and the extension of BA *)
  (G_is_intersection : exists t s : R,
      G = E + t *: (F - E) /\ G = A + s *: (A - B))
  .

Theorem GO_perp_AD :
  perpendicular (line_through G O) (line_through A D).
Proof. Admitted.

End ParallelogramTheorem.
####