####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals angles geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Triangle_TUV.

Variable R : realType.

Variables T U V : 'rV[R]_2.

Hypothesis TUV_noncollinear : ~ colinear T U V.

(* The diagram shows triangle TUV, with marks indicating TU = TV, so triangle TUV is isoceles at T,
   and angle UT V = 74°, i.e., angle at T is 74 degrees.
   Need to show that angle TUV is 53°.
*)
Hypothesis TU_eq_TV : dist T U = dist T V.
Hypothesis angle_UTV_74 : angle U T V = (74%:R * PI) / 180.

Theorem measure_angle_TUV_53 :
  angle T U V = (53%:R * PI) / 180.
Proof. Admitted.

End Triangle_TUV.
####