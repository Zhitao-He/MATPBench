####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Inscribed_Quadrilateral_Symmetry.

Variable R : realType.

(* Points in the plane *)
Variables A B C D E F G O : 'rV[R]_2.

Hypothesis circle_O : circle O (norm (A - O)).

Hypothesis A_on_circle : norm (A - O) = norm (A - O).
Hypothesis B_on_circle : norm (B - O) = norm (A - O).
Hypothesis C_on_circle : norm (C - O) = norm (A - O).
Hypothesis D_on_circle : norm (D - O) = norm (A - O).

(* Distinct points *)
Hypothesis HAB : A <> B.
Hypothesis HBC : B <> C.
Hypothesis HCD : C <> D.
Hypothesis HDA : D <> A.
Hypothesis HAD : A <> D.
Hypothesis HCB : C <> B.

(* E is inside the quadrilateral ABCD *)
Hypothesis E_interior : InInteriorOfConvexQuadrilateral E A B C D.

(* Angle conditions *)
Definition angle (P Q R : 'rV[R]_2) := acos ((\dotp (P - Q) (R - Q)) / ((norm (P - Q)) * (norm (R - Q)))).

Hypothesis angle_equality1 : angle E A B = angle E C D.
Hypothesis angle_equality2 : angle E B A = angle E D C.

(* The line FG through E bisects angle BEC *)
Hypothesis FG_is_bisector : 
  exists l,
    collinear R [:: F; E; G] /\
    is_angle_bisector l E B E C /\
    OnLine F l /\ OnLine G l /\
    F <> G /\
    F <> E /\ G <> E.

(* F and G lie on circle O *)
Hypothesis F_on_circle : norm (F - O) = norm (A - O).
Hypothesis G_on_circle : norm (G - O) = norm (A - O).

(* F and G are intersection points of the bisector through E with the circle *)
Hypothesis F_on_bisector : OnLine F (LineThrough E (angle_bisector_dir E B C)).
Hypothesis G_on_bisector : OnLine G (LineThrough E (angle_bisector_dir E B C)).
Hypothesis F_distinct : F <> G.
Hypothesis F_E_between : Between F E G.

Theorem circle_bisector_egality :
  norm (E - F) = norm (E - G).
Proof. Admitted.

End Inscribed_Quadrilateral_Symmetry.
####