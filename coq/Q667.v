####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section PowerOfPoint.

Variable R : realType.

(* Points on the circle *)
Variables F G H E A : 'e2[R].

(* The circle passes through F, G, H, E *)
Variable J : 'e2[R].
Variable r : R.
Hypothesis HF : norm (F - J) = r.
Hypothesis HG : norm (G - J) = r.
Hypothesis HH : norm (H - J) = r.
Hypothesis HE : norm (E - J) = r.

(* Collinearity as described by the diagram *)
Hypothesis F_A_E_collinear : colinear F A E.
Hypothesis G_A_H_collinear : colinear G A H.

(* Segment lengths according to the diagram *)
Hypothesis GE : norm (G - A) = 12.
Hypothesis AH : norm (H - A) = 6.
Hypothesis AE : norm (A - E) = 5.
Variable x : R.
Hypothesis FA : norm (F - A) = x.

Theorem value_of_x :
  x = 10.
Proof. Admitted.

End PowerOfPoint.
####