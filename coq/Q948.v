####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section SharedIncenterTheorem.

Variable R : realType.

(* Points in the plane *)
Variables A B C D E F : 'rV[R]_2.

Hypothesis Hiso : norm (C - A) = norm (C - B).
Hypothesis Hmid : D = (A + B) / 2%:R.
Hypothesis HD_in : colinear E D F.
Hypothesis HE_on : exists l : 'rV[R]_2 -> bool, l D /\ l E /\ l F.
(* Incenter of ABC and EFC is the same *)
Hypothesis Hinc : incenter A B C = incenter E F C.
(* D is between E and F *)
Hypothesis HD_betw : between D E F.

Theorem shared_incenter_DE_DF_DA :
  let DE := norm (D - E) in
  let DF := norm (D - F) in
  let DA := norm (D - A) in
  DE * DF = DA ^+ 2.
Proof. Admitted.

End SharedIncenterTheorem.
####