####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import euclidean_geometry planar_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Angle_MDF_eq_NDE.

Variable R : realType.
Variable Point : Type.
Variable Line : Type.
Variable Circle : Type.

Variables A B C O E F H D L M N : Point.
Variable circO : Circle.

Hypotheses
  (non_collinear_ABC : ~ colinear A B C)
  (circleO_def : circle circO O)
  (A_on_circO : on A circO)
  (B_on_circO : on B circO)
  (C_on_circO : on C circO)
  (E_on_AC : on E (Line_through A C))
  (F_on_AB : on F (Line_through A B))
  (BE_perp_AC : perpendicular (Line_through B E) (Line_through A C))
  (CF_perp_AB : perpendicular (Line_through C F) (Line_through A B))
  (H_BE_CF : intersection_point (Line_through B E) (Line_through C F) H)
  (D_on_AH_circO : (on D circO) /\ D <> A /\ colinear A H D)
  (L_mid_AH : midpoint L A H)
  (L_on_MN : on L (Line_through M N))
  (MN_parallel_EF : parallel (Line_through M N) (Line_through E F))
  (M_on_AB : on M (Line_through A B))
  (N_on_AC : on N (Line_through A C))
  .

Theorem triangle_parallel_chord_angles :
  angle (M, D, F) = angle (N, D, E).
Proof. Admitted.

End Angle_MDF_eq_NDE.
####