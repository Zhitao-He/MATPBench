####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section AngleEHD.

Variable R : realType.
Implicit Types A B C D E O H : 'rV[R]_2.

Hypothesis h_ndg : forall X Y Z : 'rV[R]_2, colinear X Y Z = false.

(* A, B, C are non-collinear points. *)
Variables (A B C : 'rV[R]_2).
Hypothesis h_ABC_ncol : ~ colinear A B C.

(* O is the circumcenter of triangle ABC. *)
Definition is_circumcenter (O : 'rV[R]_2) :=
  dist O A = dist O B /\ dist O B = dist O C.

Variable O : 'rV[R]_2.
Hypothesis h_O_circum : is_circumcenter O.

(* H is the orthocenter of triangle ABC. *)
Definition is_orthocenter (H : 'rV[R]_2) :=
  exists
    (h1 : perpendicular (B - A) (H - C))
    (h2 : perpendicular (C - B) (H - A))
    (h3 : perpendicular (A - C) (H - B)), True.

Variable H : 'rV[R]_2.
Hypothesis h_H_orth : is_orthocenter H.

(* D is the intersection of CH and AB. *)
Definition D : 'rV[R]_2 :=
  let: Some d := line_intersection (C, H) (A, B) in d.

Hypothesis h_CH_meets_AB : exists d, line_intersection (C, H) (A, B) = Some d.

(* E is on AC such that DE ⟂ OD, and E ∈ AC. *)
Definition is_DE_perp_OD (D E O : 'rV[R]_2) :=
  perpendicular (E - D) (D - O).

Definition E : 'rV[R]_2 :=
  let: Some e :=
    pick (fun e => on_line e (A, C) /\ is_DE_perp_OD D e O)
  in e.

Hypothesis h_E_exists :
  exists e, on_line e (A, C) /\ is_DE_perp_OD D e O.

(* Theorem: angle EHD = angle A *)
Theorem circumcenter_orthocenter_angle :
  angle E H D = angle B A C.
Proof. Admitted.

End AngleEHD.
####