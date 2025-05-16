####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import euclidean_geometry circles angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryProblem.

Variable R : realType.
Implicit Types A B C D E F G H I O P : 'Point[R].

Theorem bissect_orthocenter_angle :
  forall (A B C : 'Point[R]),
    ~ colinear A B C ->
    exists O : 'Point[R],
      on_circle O A /\ on_circle O B /\ on_circle O C /\
      (* F is the intersection of AF (angle bisector of angle BAC) and circumcircle (≠A) *)
      exists F : 'Point[R],
        F <> A /\ on_circle O F /\
        angle_bisector A B C F /\
      (* H is the orthocenter of triangle ABC *)
      exists H : 'Point[R],
        orthocenter A B C H /\
      (* E is the foot of the perpendicular from C to AB *)
      exists E : 'Point[R],
        foot C A B E /\
      (* D is the foot of the perpendicular from B to AC *)
      exists D : 'Point[R],
        foot B A C D /\
      (* ⊙P is the circumcircle of triangle ADE *)
      exists P : 'Point[R],
        on_circle P A /\ on_circle P D /\ on_circle P E /\
      (* G is the intersection point of circumcircle of ADE and ⊙O, G ≠ A,D,E *)
      exists G : 'Point[R],
        on_circle P G /\ on_circle O G /\
        G <> A /\ G <> D /\ G <> E /\
      (* Line GF meets BC at I *)
      exists I : 'Point[R],
        on_line I B C /\ on_line I G F /\
      (* Then: IH bisects angle BHC *)
        angle_bisector I B H C H.
Proof. Admitted.

End GeometryProblem.
####