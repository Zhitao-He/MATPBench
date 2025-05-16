####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Putnam_Geometry_Circle_Arc.

Variable R : realType.

(* Points *)
Variables A B C O D E F G : 'rV[R]_2.

(* Hypotheses *)
Hypothesis AB_neq_AC : A != B /\ A != C.
Hypothesis circumcircle_ABC : on_circle O A B /\ on_circle O B C /\ on_circle O C A.

Hypothesis D_mid_arc_BAC : 
  on_circle O D /\
  angle B O D = angle D O C /\
  D != B /\ D != C.

Hypothesis E_mid_arc_BC : 
  on_circle O E /\
  angle B O E = angle E O C /\
  E != B /\ E != C.

Hypothesis F_on_CF_perp_AB :
  (colinear C F) /\
  (F != C) /\
  (colinear A B F) /\
  perpendicular (F - C) (A - B).

Hypothesis EF_line : E != F.

Hypothesis FG_perp_EF :
  (colinear F G) /\
  (G != F) /\
  perpendicular (G - F) (E - F).

Hypothesis G_on_DA_ext : 
  exists k : R, G = D + k * (A - D).

Theorem circle_midarc_perp_equal :
  \norm (C - G) = \norm (C - D).
Proof. Admitted.

End Putnam_Geometry_Circle_Arc.
####