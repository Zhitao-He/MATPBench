####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry euclidean.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section IncircleCircumcircleTangency.

Variable R : realType.
Let Point := R * R.

Variables A B C : Point.

Hypothesis H_noncollinear : ~ collinear [:: A; B; C].

(* Incircle center and radius *)
Variable I : Point.
Variable rI : R.
Hypothesis H_incircle : incircle_center I rI A B C.

(* The incircle is tangent to BC at D *)
Variable D : Point.
Hypothesis H_D_on_BC : on_line D B C.
Hypothesis H_D_on_incircle : on_circle I rI D.
Hypothesis H_tangent_incircle_BC : tangent_at I rI D B C.

(* AE is perpendicular to BC at E *)
Variable E : Point.
Hypothesis H_E_on_BC : on_line E B C.
Hypothesis H_AE_perpendicular_BC : perpendicular (line_through A E) (line_through B C).

(* F is the midpoint of AE *)
Variable F : Point.
Hypothesis H_F_midpoint : midpoint F A E.

(* DF intersects incircle ω(I) again at G≠D *)
Variable G : Point.
Hypothesis H_G_on_DF : on_line G D F.
Hypothesis H_G_on_incircle : on_circle I rI G.
Hypothesis H_G_neq_D : G <> D.

(* Circumcircle O of triangle BCG *)
Variable O : Point.
Variable rO : R.
Hypothesis H_circumcircle_BCG : circumcircle_center O rO B C G.

(* Circles ω(I) and O are tangent at G *)
Hypothesis H_common_tangent : tangent_circles_at I rI O rO G.

Theorem incircle_circumcircle_tangent :
  tangent_circles_at I rI O rO G.
Proof. Admitted.

End IncircleCircumcircleTangency.
####