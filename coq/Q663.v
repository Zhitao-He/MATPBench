####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals classical_sets geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section ArcDTU.

Variable R : realType.

Variables D T U V : 'Point[R].
Variable C : circle R.

Hypotheses
  (HC : center C = D)
  (HT : T \in C)
  (HU : U \in C)
  (HV : V \in C)
  (Harc_VTU : angle V T U = 23%:R)
  (Horder : arc_order C D T U). (* indicates the arc (DTU) is the minor arc from D, through T, to U *)

Theorem arc_DTU_measure :
  arc_measure C D T U = 46%:R.
Proof. Admitted.

End ArcDTU.
####