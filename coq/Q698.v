####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Geometry_Context.

Variable R : realType.
Let R2 := 'rV[R]_2.

Variables C D E F N : R2.

Hypothesis H_circ : on_circle C D E F.
Hypothesis H_center : incenter N C D E F.

Theorem length_DN_is_8 :
  dist D N = 8.
Proof. Admitted.

End Geometry_Context.
####