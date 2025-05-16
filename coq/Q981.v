####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals ssrnum euclidean_geometry.
Require Import Classical.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Geometry_Theorem.

Variable R : realType.

Record point := Point { px : R; py : R }.

Definition eq_point (A B : point) := (px A = px B) /\ (py A = py B).

Definition dist (A B : point) : R :=
  sqrt ((px A - px B)^+2 + (py A - py B)^+2).

Record circle := Circle { center : point; radius : R }.

Variable O P : point.
Variable rO rP : R.
Hypothesis rO_pos : 0 < rO.
Hypothesis rP_pos : 0 < rP.
Hypothesis radii_neq : rO <> rP.

Definition cO := Circle O rO.
Definition cP := Circle P rP.

Variables A B : point.

Hypothesis A_in_cO : dist A O = rO.
Hypothesis A_in_cP : dist A P = rP.
Hypothesis B_in_cO : dist B O = rO.
Hypothesis B_in_cP : dist B P = rP.
Hypothesis AB_dist_neq0 : dist A B <> 0.
Hypothesis A_neq_B : ~ eq_point A B.

(* Line CD passes through A and meets cO at C, cP at D (other than A) *)
Variables C D : point.
Hypothesis C_on_cd : exists t : R, C = Point (px A + t*(px D - px A)) (py A + t*(py D - py A)).
Hypothesis D_on_cd : exists t : R, D = Point (px A + t*(px C - px A)) (py A + t*(py C - py A)).
Hypothesis A_neq_C : ~ eq_point A C.
Hypothesis A_neq_D : ~ eq_point A D.
Hypothesis C_on_cO : dist C O = rO.
Hypothesis D_on_cP : dist D P = rP.

(* C is on cO, D is on cP, line CD passes through A *)
Hypothesis A_on_CD : exists t : R, eq_point A (Point (px C + t*(px D - px C)) (py C + t*(py D - py C))).

(* The extension of CB meets cP again at F *)
Variable F : point.
Hypothesis F_on_cP : dist F P = rP.
Hypothesis F_is_CB_ext : exists t : R, t <> 0 /\ F = Point (px C + t*(px B - px C)) (py C + t*(py B - py C)) /\ ~ eq_point F C.

(* The extension of DB meets cO again at E *)
Variable E : point.
Hypothesis E_on_cO : dist E O = rO.
Hypothesis E_is_DB_ext : exists t : R, t <> 0 /\ E = Point (px D + t*(px B - px D)) (py D + t*(py B - py D)) /\ ~ eq_point E D.

(* Perpendicular from A to CD intersects the perpendicular bisector of EF at G *)
Variable G : point.

Definition vec (P Q : point) : (R * R) := (px Q - px P, py Q - py P).

Definition dot (u v : R * R) : R :=
  (fst u) * (fst v) + (snd u) * (snd v).

Definition midpt (P Q : point) : point :=
  Point ((px P + px Q)/2) ((py P + py Q)/2).

(* Line through A perpendicular to CD *)
Definition line_perp_A_CD (Q : point) :=
  let vcd := vec C D in
  let vperp := (- snd vcd, fst vcd) in
  exists t : R, Q = Point (px A + t * fst vperp) (py A + t * snd vperp).

(* Perpendicular bisector of EF: line through midpoint of EF perpendicular to EF *)
Definition line_perp_bis_EF (Q : point) :=
  let m := midpt E F in
  let vEF := vec E F in
  let vperp := (- snd vEF, fst vEF) in
  exists t : R, Q = Point (px m + t * fst vperp) (py m + t * snd vperp).

Hypothesis G_on_perp_A_CD : line_perp_A_CD G.
Hypothesis G_on_perp_bis_EF : line_perp_bis_EF G.

Theorem circles_intersect_geom :
  (dist A G) ^+2 = (dist E G) ^+2 + (dist A C) * (dist A D).
Proof. Admitted.

End Geometry_Theorem.
####