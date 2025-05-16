####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Tangent_Angle_Equality.

Variable R : realType.

(* Points *)
Variables O A B C D E F : 'rV[R]_2.

Hypotheses
  (* O is the center of a circle. *)
  (circle_non_degenerate : A != B /\ A != O /\ B != O)
  (* PA and PB are tangents to the circle centered at O from point P.*)
  (exists P : 'rV[R]_2,
    (* P lies outside the circle *)
    (P != O) /\
    (normr (A - O) = normr (B - O)) /\
    (A != B) /\
    (* PA and PB are both tangent to the circle at points A and B respectively *)
    (([forall t : R, (t != 0) ==> ((A + t *: (P - A) != O))]) /\
     ([forall t : R, (t != 0) ==> ((B + t *: (P - B) != O))]))
  )
  (* DE is a tangent passing through C, D on AP and E on PB *)
  (C_on_DE : colinear C D E)
  (D_on_AP : exists P : 'rV[R]_2, on_line D A P)
  (E_on_PB : exists P : 'rV[R]_2, on_line E B P)
  (* CF is perpendicular to AB at F *)
  (F_on_AB : on_line F A B)
  (CF_perp_AB : perpendicular (F - C) (B - A))
.

Definition angle (X Y Z : 'rV[R]_2) :=
  let u := X - Y in
  let v := Z - Y in
  let cuv := u *m v^T in
  let dot := (u * v^T) 0 0 in
  let nu := normr u in
  let nv := normr v in
  (* Angle between vectors u and v at Y, range [0,pi] *)
  acos (dot / (nu * nv)).

Theorem tangent_angle_equality :
  angle D F C = angle E F C.
Proof. Admitted.

End Tangent_Angle_Equality.
####