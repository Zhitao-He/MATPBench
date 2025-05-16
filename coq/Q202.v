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
  h_AB_diameter : colinear A B O /\dist A O = 2.5 /\dist O B = 2.5 /\A != B and
  h_BD_arc : D \\in circle O 4 /\D != B /\D != O and
  h_C_mid_arc : exists arcP, uniq arcP /\B \\in arcP /\D \\in arcP /\C \\in arcP /\(forall X, X \\in arcP -> X != A) /\#|arcP| = 3 and
  h_AD : A != D and
  h_EF_perp_AD : colinear E F C /\colinear A D E.

Theorem midarc_angle_relation : angle B C A = 90%:R.
Proof.
admit.
Qed.

End Circle_Midarc_Theorem.
####