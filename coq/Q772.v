####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals angles geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Record point := Point { px : R ; py : R }.

Variable O : point. (* center of the circle *)
Variables A B C D E : point.

Variable r : R. (* radius *)

Hypotheses
  (H_circleB : ((px B - px O)^2 + (py B - py O)^2 = r^2))
  (H_circleC : ((px C - px O)^2 + (py C - py O)^2 = r^2))
  (H_circleD : ((px D - px O)^2 + (py D - py O)^2 = r^2))
  (H_circleE : ((px E - px O)^2 + (py E - py O)^2 = r^2))
  (H_centerA : A = O)
  (H_BA_perp_CA : angle A B C = 90)
  (H_angleBAD : angle B A D = 65)
  (H_angleDAE : angle D A E = 110)
  (H_angleBAC : angle B A C = 90).

Definition x := angle C A E.

Theorem geometry_circle_angle_value_x : x = 95.
Proof. by []. Qed.
####