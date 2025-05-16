####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section circle_geometry.

Variable R : realType.

Variables F G H J : Point R.
Variable omega : Circle R.

Hypotheses
  (Hc : on_circle omega F)
  (Hg : on_circle omega G)
  (Hh : on_circle omega H)
  (Hj : on_circle omega J)
  (FOG : colinear F O G)
  (GOJ : colinear G O J)
  (HOJ : colinear H O J)
  (GH : G <> H)
  (GH_arc_deg : arc_angle_deg omega G H = 78)
  (GF : perpendicular (Line G F) (Line F H))
  (GHJ : convex_angle G H J)
  (angle2_right : angle_deg F G H = 90)
  (angle1_marked : is_marked_angle "1" H G J)
  (angle2_marked : is_marked_angle "2" F G H)
  (angle3_marked : is_marked_angle "3" F J H).

Theorem circle_angle3_value :
  angle_deg F J H = 39.
Proof. Admitted.

End circle_geometry.
####