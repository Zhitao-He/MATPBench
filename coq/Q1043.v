####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section IncircleCircumcircleTangency.

Variable R : realType.
Let point := 'rV[R]_2.

Variables A B C I D E F G O : point.

Hypothesis ABC_noncolinear : ~colinear A B C.

(* Incircle properties *)
Hypothesis I_incenter : is_incenter I A B C.
Hypothesis D_tangent : on_circle I D /\ tangent_at I D (line_through B C).

(* AE perpendicular to BC at E *)
Hypothesis E_on_BC : on_line E B C.
Hypothesis AE_perp_BC : perpendicular (seg A E) (seg B C).

(* F is midpoint of AE *)
Hypothesis F_midpoint : F = midpoint A E.

(* DF intersects incircle at G *)
Hypothesis G_on_DF : on_line G D F.
Hypothesis G_on_incircle : on_circle I G.
Hypothesis G_neq_D : G <> D.

(* Circumcircle of BCG *)
Hypothesis O_circumcenter : is_circumcenter O B C G.

Theorem circles_tangent_at_G : tangent_at O I G.
Proof. Admitted.

End IncircleCircumcircleTangency.
####