####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryTheorem.

Variable R : realType.

(* Points in the plane *)
Variables A B C O D E F G M N : 'rV[R]_2.

(* Hypothesis: A, B, C lie on circle O *)
Hypothesis Hcircle : on_circle O A /\ on_circle O B /\ on_circle O C.

(* Hypothesis: O is the circumcenter of triangle ABC *)
Hypothesis Hcircumcenter : is_center O [::A;B;C].

(* Hypothesis: Perpendicular bisector of BC intersects circle O at D and E, and BC at F *)
Hypothesis Hperp_bisector_BC: 
  is_midpoint F B C /\
  on_line D (perp_bisector B C) /\
  on_line E (perp_bisector B C) /\
  D <> E /\ D <> F /\ E <> F /\
  on_circle O D /\ on_circle O E.

(* Hypothesis: F is the midpoint of BC and lies on BC *)
Hypothesis HF_on_BC: on_line F (line B C).

(* Hypothesis: FG is parallel to AD *)
Hypothesis HFG_parallel_AD: are_parallel (line F G) (line A D).

(* Hypothesis: G is distinct from E *)
Hypothesis HEG: G <> E.

(* Hypothesis: Line MN passes through G, is perpendicular to EG, and intersects AB at M and AC at N *)
Hypothesis H_MN_through_G : on_line G (line M N).
Hypothesis H_M_on_AB : on_line M (line A B).
Hypothesis H_N_on_AC : on_line N (line A C).
Hypothesis H_MN_perp_EG : perpendicular (line M N) (line E G).

(* Theorem: GM = GN *)
Theorem triangle_perp_bisector_equidistant :
  \norm (G - M) = \norm (G - N).
Proof. Admitted.

End GeometryTheorem.
####