####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometrySetup.

Variable R : realType.

(* Points in the euclidean plane *)
Variables A B C D P E : 'e2d[R].

Hypotheses
  (* All points are distinct and noncollinear except where incidence is specified *)
  (ABCD_convex : convex_quadrilateral A B C D)
  (P_on_BD : on_line P (line_through B D))
  (angle_PCB_eq_ACD : angle C P B = angle A C D)
  (E_on_AC : on_line E (line_through A C))
  (E_on_circum_ABD : on_circle E (circum_circle A B D))
  (E_neq_A : E <> A)
  (E_neq_C : E <> C)
  (A_neq_B : A <> B)
  (B_neq_C : B <> C)
  (C_neq_D : C <> D)
  (D_neq_A : D <> A)
  (A_neq_C : A <> C)
  (B_neq_D : B <> D).

Theorem geometry_AED_eq_PEB :
  angle A E D = angle P E B.
Proof. Admitted.

End GeometrySetup.
####