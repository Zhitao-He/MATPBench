####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Circle_Midarc_Theorem.

Variable R : realType.

Variables A B C D E F O : 'e2d[R].

Hypotheses
  h_circ : circle O 4 = [set p | dist p O == 4] and
  h_AB_diameter : colinear A B O /\ dist A O = 2.5 /\ dist O B = 2.5 /\ A != B and
  h_BD_arc : D \\in circle O 4 /\ D != B /\ D != O and
  h_C_mid_arc : C \\in arc B D /\ forall X, X \\in arc B D -> dist B X = dist X D -> X = C and
  h_AD : A != D and
  h_EF_perp_AD : colinear E F C /\ colinear A D E /\ perpendicular E F A D.

(* Length of CE is 12/5 *)
Theorem length_CE_12_5 :
  dist C E = 12%:R / 5%:R.
Proof. Admitted.

End Circle_Midarc_Theorem.
####