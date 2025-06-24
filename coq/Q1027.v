####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section AngleBisectorCircleTheorem.

Variable R : realType.
Let point := 'rV[R]_2.

Variables A B C O : point.

Hypothesis ABC_noncollinear : ~ colinear A B C.
Hypothesis O_circum : on_circle O A B /\ on_circle O B C /\ on_circle O C A.

(* The angle bisector of BAC meets O again at D (not A) *)
Variable D : point.
Hypothesis D_on_bisector : on_circle O D A /\ D <> A /\
  colinear A D (angle_bisector_point B A C).

(* E: midpoint of BC *)
Definition E : point := midpoint B C.

(* F is such that EF ⟂ AD *)
Variable F : point.
Hypothesis EF_perp_AD : perpendicular (seg E F) (seg A D).

(* The line DF, through D and F *)
Definition line_DF := line_through D F.

(* MN is a line through F perpendicular to DF *)
Variable M N : point.
Hypothesis MN_perp_DF : colinear M F N /\
    perpendicular (seg M N) (seg D F) /\
    on_line M (line_through A B) /\
    on_line N (line_through A C).

Theorem triangle_circle_bisector_FM_eq_FN :
  dist F M = dist F N.
Proof. Admitted.

End AngleBisectorCircleTheorem.
####