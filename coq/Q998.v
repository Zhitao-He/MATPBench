####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import euclidean geometry classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Parallelogram_Angles.

Variable R : realType.

Record point : Type := Point { px : R; py : R }.

Definition collinear (A B C : point) : Prop :=
  (px B - px A) * (py C - py A) = (py B - py A) * (px C - px A).

Definition parallelogram (A B C D : point) : Prop :=
  (exists v1 v2 : point, 
     B = Point (px A + px v1) (py A + py v1) /\
     D = Point (px A + px v2) (py A + py v2) /\
     C = Point (px A + px v1 + px v2) (py A + py v1 + py v2)).

(* Circumcircle: C passes through points A, B, C *)
Definition on_circumcircle (C O A B : point) : Prop :=
  let r := ((px O - px A)^2 + (py O - py A)^2) in
  ((px O - px B)^2 + (py O - py B)^2 = r) /\
  ((px O - px C)^2 + (py O - py C)^2 = r).

Definition between (A B C : point) : Prop :=
  exists t : R, 0 < t < 1 /\
  px B = px A + t * (px C - px A) /\
  py B = py A + t * (py C - py A).

Definition intersection
  (l1 l2 : point -> point -> point)
  (P Q R S G : point) : Prop :=
  l1 P Q G /\ l2 R S G.

Definition angle (A O B : point) : R :=
  let v1x := px A - px O in
  let v1y := py A - py O in
  let v2x := px B - px O in
  let v2y := py B - py O in
  let dot := v1x * v2x + v1y * v2y in
  let det := v1x * v2y - v1y * v2x in
  atan2 det dot.

Variable A B C D E F G H O P : point.

Hypotheses
  (parallelogram_ABCD : parallelogram A B C D)
  (E_on_AD : between A E D)
  (F_on_CD : between C F D)
  (* G = AF ∩ CE *)
  (G_is_intersection :
    exists G', intersection (fun X Y P => collinear X Y P) (fun X Y P => collinear X Y P)
      A F C E G /\ G = G')
  (* O is the circumcenter of triangle AEG, H is the second intersection of ⊙O and ⊙P *)
  (O_is_circumcenter_AEG :
    on_circumcircle E O A G)
  (P_is_circumcenter_CFG :
    on_circumcircle F P C G)
  (H_on_both_circumcircles :
    on_circumcircle H O A E /\ on_circumcircle H P C F /\
    H <> G).

Theorem geometry_parallelogram_angle_equality :
  angle G B A = angle H D A.
Proof. Admitted.

End Parallelogram_Angles.
####