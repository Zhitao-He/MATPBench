####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Circle_Angle.

Variable R : realType.

Variables A B C D E : 'euclid_point R.

Hypotheses
  (O : 'euclid_point R)
  (r : R)
  (r_pos : 0 < r)
  (circ : on_circle O r A)
  (circB : on_circle O r B)
  (circC : on_circle O r C)
  (circD : on_circle O r D)
  (circE : on_circle O r E)
  (A_B_C_D_cyclic : distinct4 A B C D)
  (E_interior : in_interior_circle O r E)
  (AB : ~ colinear A B E)
  (BE : ~ colinear B E D)
  (ED : ~ colinear E D C)
  (Angle_EBA_32 : angle_deg E B A = 32).

Theorem angle_EDC_32 :
  angle_deg E D C = 32.
Proof. Admitted.

End Circle_Angle.
####