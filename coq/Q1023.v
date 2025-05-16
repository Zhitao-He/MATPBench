####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section EqualChord.

Variable R : realType.

(* Points of the plane *)
Variables A B C : 'cV[R]_2.

Hypothesis non_collinear_ABC : ~ colinear A B C.

(* The circumcircle of triangle ABC and its center *)
Let O := circum_center A B C.

(* H is the orthocenter of triangle ABC *)
Let H := orthocenter A B C.

(* D is the midpoint of BC *)
Let D := ((B + C) / 2%:R)%R.

(* The line through D and H *)
Let DH := lin D H.

(* The line through H perpendicular to DH *)
Let EF := lin_perpendicular_through H DH.

(* E and F are the intersections of EF with AB and AC, respectively.
   Assume E and F are distinct from A, B, C, D, H, and the triangle is nondegenerate (by previous hypotheses).
*)
Let E := intersection_line_line EF (lin A B).
Let F := intersection_line_line EF (lin A C).

(* Segments DE and DF *)
Definition dist (P Q : 'cV[R]_2) : R := norm (P - Q).

Theorem geometry_equal_chord :
  dist D E = dist D F.
Proof. Admitted.

End EqualChord.
####