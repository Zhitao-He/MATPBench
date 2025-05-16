####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Angle_EAD_Statement.

Variable R : realType.

Variables
  (A D E K L M : R^2)
  (C H G J I F : R^2).

(* Given: *)
Hypothesis KD_col : colinear R K D H.
Hypothesis CA_col : colinear R C H D.
Hypothesis JG_col : colinear R J G H.
Hypothesis EA_col : colinear R E A J.
Hypothesis LD_col : colinear R L D M.
Hypothesis FG_col : colinear R F G A.

Hypothesis HneqD : H <> D.
Hypothesis GneqH : G <> H.
Hypothesis DneqA : D <> A.
Hypothesis AneqE : A <> E.

(* Angle at D between lines KD and LD is 96° *)
Hypothesis angle_KDL_96 : angle R K D L = 96.

(* Angle at G between lines H-G and F-G is 42° *)
Hypothesis angle_HGF_42 : angle R H G F = 42.

Theorem measure_angle_EAD_84 :
  angle R E A D = 84.
Proof. Admitted.

End Angle_EAD_Statement.
####