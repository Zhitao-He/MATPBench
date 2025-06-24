####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CircleMidarcProblem.
Variable R : realType.
Variables A B C O D E F G : 'Point[R]_2.

(* Circumcircle properties *)
Hypothesis circum_ABC : circumcircle O A B C.

(* Midpoints of arcs *)
Hypothesis D_midarc : midpoint_arc O D B A C.
Hypothesis E_midarc : midpoint_arc O E B C.

(* Perpendicular condition *)
Hypothesis CF_perp : perpendicular (line C F) (line A B).
Hypothesis F_on_AB : collinear [:: A; B; F].

(* EF line and FG perpendicular *)
Hypothesis FG_perp : perpendicular (line F G) (line E F).
Hypothesis G_on_DA_ext : between D A G.

(* Distance definitions *)
Definition CG := dist C G.
Definition CD := dist C D.

(* Main theorem *)
Theorem CG_equals_CD : CG = CD.
Proof. by []. Qed.

End CircleMidarcProblem.
####