####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals classical_sets euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryTheorem.

Variable R : realType.
Let Point := R^2.

Variables O P A B C D E F : Point.

Hypotheses
  (HCO : circle O A B)
  (HOP : circle P A B)
  (HOA : O <> P)
  (Hinter : A <> B)
  (HCOint : inc_in_circle A O (radius O A) /\ inc_in_circle B O (radius O A))
  (HOPint : inc_in_circle A P (radius P A) /\ inc_in_circle B P (radius P A))
  (HCD : on_line O C D)
  (HCE : on_line P E F)
  (H_CD_in_OP : C <> D /\ inc_in_circle C P (radius P A) /\ inc_in_circle D P (radius P A))
  (H_EF_in_CO : E <> F /\ inc_in_circle E O (radius O A) /\ inc_in_circle F O (radius O A))
  (HEFCD_concyclic : concyclic C E D F)
.

Theorem circumcenter_CEDF_on_AB :
  on_line AB (circumcenter C E D F).
Proof. Admitted.

End GeometryTheorem.
####