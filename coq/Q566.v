####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section AngleGeometry.

Variable R : realType.

Variables A B C D E F G H I : 'vec R.

Hypotheses
  (HC : colinear C H I)
  (HD : colinear D H F)
  (HB : colinear B H E)
  (HG : colinear B G E)
  (HA : colinear D F A)
  (H_perp : angle B H D = pi/2)
  (angle_CHD : angle C H D = (38%:R * pi / 180%:R))
  (angle_FDA : angle F D A = (52%:R * pi / 180%:R)).

Theorem measure_angle_HDF : angle H D F = (128%:R * pi / 180%:R).
Proof. Admitted.

End AngleGeometry.
####