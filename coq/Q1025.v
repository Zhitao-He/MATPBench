####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Putnam_Geometry_OM_OD.

Variable R : realType.

Record point := mkPoint { px : R; py : R }.

Definition dist (P Q : point) : R :=
  sqrt ((px P - px Q)^2 + (py P - py Q)^2).

Variables A B C : point.
Hypothesis non_collinear_ABC : ~ collinear [:: A; B; C].

(* D is the foot of the altitude from A to BC *)
Definition line_BC (t : R) := mkPoint (px B + t * (px C - px B)) (py B + t * (py C - py B)).
Definition proj_A_on_BC : R :=
  let v1 := (px C - px B, py C - py B) in
  let v2 := (px A - px B, py A - py B) in
  ((fst v1) * (fst v2) + (snd v1) * (snd v2)) / ((fst v1)^2 + (snd v1)^2).
Definition D := line_BC (proj_A_on_BC).

(* M is the midpoint of BC *)
Definition M := mkPoint ((px B + px C)/2) ((py B + py C)/2).

(* O is the circumcenter of triangle ABC *)
Definition perp_bisector (P Q : point) : point * (R * R) :=
  let mid := mkPoint ((px P + px Q)/2) ((py P + py Q)/2) in
  let dx := px Q - px P in
  let dy := py Q - py P in
  (mid, (-dy, dx)).
Definition det (a b c d : R) := a*d - b*c.
Definition solve2x2 (a b c d e f : R) : option (R * R) :=
  let delta := det a b c d in
  if delta == 0 then None else
    let x := det e b f d / delta in
    let y := det a e c f / delta in
    Some (x, y).
Definition O : point :=
  let: (mAB, dAB) := perp_bisector A B in
  let: (mAC, dAC) := perp_bisector A C in
  match solve2x2 (dAB.1) (-(dAC.1)) (dAB.2) (-(dAC.2))
                 (px mAC - px mAB) (py mAC - py mAB) with
  | Some (s, t) =>
      mkPoint (px mAB + s * dAB.1) (py mAB + s * dAB.2)
  | None => A (* fallback, should not occur if points are non-collinear *)
  end.

(* The variable line through M: E=intersection with AB, F=intersection with AC, with AE=AF *)
Variable l_dir : R * R.
Hypothesis l_dir_nonzero : l_dir.1 <> 0 \/ l_dir.2 <> 0.

Definition param_line_M (t : R) :=
  mkPoint (px M + t * l_dir.1) (py M + t * l_dir.2).

Definition line_eqn (P Q : point) (t : R) :=
  mkPoint (px P + t * (px Q - px P)) (py P + t * (py Q - py P)).

Definition on_line (P Q R : point) : Prop :=
  exists t : R, px R = px P + t * (px Q - px P) /\ py R = py P + t * (py Q - py P).

Definition intersect_AB :=
  let '(a, b) := l_dir in
  let denom := (px A - px B) * b - (py A - py B) * a in
  if denom == 0 then None else
    let num := (px M - px B) * b - (py M - py B) * a in
    let s := num / denom in
    Some (mkPoint (px A + s * (px B - px A)) (py A + s * (py B - py A))).

Definition intersect_AC :=
  let '(a, b) := l_dir in
  let denom := (px A - px C) * b - (py A - py C) * a in
  if denom == 0 then None else
    let num := (px M - px C) * b - (py M - py C) * a in
    let s := num / denom in
    Some (mkPoint (px A + s * (px C - px A)) (py A + s * (py C - py A))).

Definition E_opt := intersect_AB.
Definition F_opt := intersect_AC.

Hypothesis exist_EF : exists E F, E_opt = Some E /\ F_opt = Some F /\ dist A E = dist A F /\ AE_on_AB : on_line A B E /\ AF_on_AC : on_line A C F.

Theorem putnam_geometry_OM_OD :
  dist O M = dist O D.
Proof. Admitted.

End Putnam_Geometry_OM_OD.
####