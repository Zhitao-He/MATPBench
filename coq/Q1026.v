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

Hypothesis Hcircle : on_circle O A /\ on_circle O B /\ on_circle O C.
Hypothesis Hcircumcenter : is_center O [::A;B;C].

(* The perpendicular bisector of BC passes through D, E, and F (midpoint of BC) *)
Hypothesis Hperp_bisector_BC: 
  is_midpoint F B C /\
  on_line D (perp_bisector B C) /\
  on_line E (perp_bisector B C) /\
  D <> E /\ D <> F /\ E <> F /\
  on_circle O D /\ on_circle O E.

Hypothesis HF_on_BC: on_line F (line B C).

(* AD is a chord; FG is parallel to AD *)
Hypothesis HFG_parallel_AD: are_parallel (line F G) (line A D).

(* EG is a segment connecting E and G *)
Hypothesis HEG: (G <> E).

(* The straight line MN passes through G and is perpendicular to EG, 
   and M ∈ AB, N ∈ AC, MN meets AB at M, AC at N *)
Hypothesis H_MN_through_G : on_line G (line M N).
Hypothesis H_M_on_AB : on_line M (line A B).
Hypothesis H_N_on_AC : on_line N (line A C).
Hypothesis H_MN_perp_EG : perpendicular (line M N) (line E G).

Theorem triangle_perp_bisector_equidistant :
  \norm (G - M) = \norm (G - N).
Proof. Admitted.

End GeometryTheorem.
####