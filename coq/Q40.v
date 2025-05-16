####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section geometry_problem.

Variable Point : Type.

Variables A B C D E : Point.

Hypothesis collinear_ABC : collinear [:: A; C; B].
Hypothesis DC_perp_EC : perpendicular (Line D C) (Line E C).
Hypothesis C_neq_D : C <> D.
Hypothesis C_neq_E : C <> E.
Hypothesis C_neq_A : C <> A.
Hypothesis C_neq_B : C <> B.
Hypothesis A_neq_B : A <> B.

(* Angles are interpreted in the oriented sense at vertex as in angle A B C = angle at B from BA to BC *)
Hypothesis angle_BCD_40 :
  angle B C D = 40%:R.
  
Theorem angle_ACE_50 :
  angle A C E = 50%:R.
Proof. Admitted.

End geometry_problem.
####