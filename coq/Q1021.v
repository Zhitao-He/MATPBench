####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section ParallelQuadrilateralConcurrentCircles.

Variable R : realType.

(* Define the Euclidean plane *)
Variable plane : euclidean_plane R.

(* Points *)
Variables A B C D E F S T : plane.

Hypotheses
  (h_quad : quadrilateral A B C D)
  (h_AD : col A D)
  (h_BC : col B C)
  (h_E_on_AD : on_line E (Line A D))
  (h_F_on_BC : on_line F (Line B C))
  (h_AE_ED_eq_BF_FC : (dist A E / dist E D) = (dist B F / dist F C))
  (h_T_def : T <> D /\ T <> C /\ col D C /\ col E F /\ intersection_point T (Line C D) (Line E F))
  (h_S_def : S <> B /\ S <> A /\ col B A /\ col E F /\ intersection_point S (Line B A) (Line E F))
.

(* Define triangles for the circumcircles *)
Definition triangle_AES := (A, E, S).
Definition triangle_BFS := (B, F, S).
Definition triangle_CFT := (C, F, T).
Definition triangle_DET := (D, E, T).

(* The circumcircles *)
Definition circumcircle_AES := circumcircle A E S.
Definition circumcircle_BFS := circumcircle B F S.
Definition circumcircle_CFT := circumcircle C F T.
Definition circumcircle_DET := circumcircle D E T.

Theorem parallel_quadrilateral_circles_concurrent :
  exists P : plane,
    on_circle P circumcircle_AES /\
    on_circle P circumcircle_BFS /\
    on_circle P circumcircle_CFT /\
    on_circle P circumcircle_DET.
Proof. Admitted.

End ParallelQuadrilateralConcurrentCircles.
####