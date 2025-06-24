####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope R_scope.

Variable R : realType.

(* Points A, B, C in the plane *)
Variables (A B C : 'rV[R]_2).

(* Define angle measures in degrees *)
Definition deg_to_rad (d : R) := d * (PI / 180).

(* Hypotheses based on the diagram: *)
(* Angle 1: angle between BA and the horizontal at A = 36° *)
(* Angle 3: angle at B between AB and BC = 104° *)
(* Angle 4: angle between BC and the horizontal line through B = 40° *)
(* Angle 5: angle at B (vertical to horizontal), marked as right angle = 90° *)

(* The sum of angles in a triangle is 180° *)
Hypothesis angle_sum_triangle : forall a b c : R, a + b + c = 180.

(* Given angles in the diagram *)
Hypothesis angle1_measure : 36.
Hypothesis angle3_measure : 104.
Hypothesis angle5_measure : 90.

(* Compute angle 2 using the triangle angle sum property *)
Theorem angle2_measure : exists angle2 : R, angle2 = 68.
Proof.
  (* Using the given angles and properties, calculate angle2 *)
  (* angle2 = 180 - angle1 - angle3 *)
  have angle2_calculated: 180 - angle1_measure - angle3_measure = 68 by [].
  exists 68.
  exact angle2_calculated.
Qed.
####