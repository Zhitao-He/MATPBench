####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Circumcircle_Geometry.

Variable R : realType.
Let Point := 'rV[R]_2.

Variables A B C D : Point.

(* O is the circumcenter of triangle ABC *)
Variable O : Point.
Hypothesis O_circumcenter : circumcenter A B C = O.

(* The circumcircle passes through A, B, C, D *)
Hypothesis D_on_circumcircle : on_circle O (dist O A) D.

(* BC is a diameter of the circumcircle: O is the midpoint of B and C *)
Hypothesis BC_diameter : O = midpoint B C.

(* D lies on the arc BC not containing A *)
Hypothesis D_on_opposite_arc : 
  on_circle O (dist O A) D /\
  ~ collinear A B C /\
  ~ (between B D C) /\
  ~ (between C D B) /\
  A <> D.

(* Construct: E such that DE ⟂ BC, E lies on BC *)
Variable E : Point.
Hypothesis E_on_BC : on_line B C E.
Hypothesis DE_perp_BC : orthogonal (E - D) (C - B).

(* Construct: F such that DF ⟂ BA, F lies on BA *)
Variable F : Point.
Hypothesis F_on_BA : on_line B A F.
Hypothesis DF_perp_BA : orthogonal (F - D) (A - B).

(* Define G: intersection of EF and AD *)
Variable G : Point.
Hypothesis G_on_EF : on_line E F G.
Hypothesis G_on_AD : on_line A D G.

(* EF and AD are not parallel and intersect at a unique point *)
Hypothesis EF_AD_intersect : intersection_point E F A D = Some G.

(* Theorem: G is the midpoint of AD *)
Theorem midpoint_of_AD_G :
  G = midpoint A D.
Proof. Admitted.

End Circumcircle_Geometry.
####