####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry euclidean.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section SemicircleTangency.

Variable R : realType.
Implicit Types (A B C D E F O : 'rV[R]_2).

Hypothesis h_distinct : forall X Y : 'rV[R]_2, X <> Y.

(* Points *)
Variables A B C D E F O : 'rV[R]_2.

(* A, B, O are collinear, AB is diameter of semicircle with center O *)
Hypothesis HO_mid : O = (A + B) / 2%:R.
Hypothesis HO_dist : 0 < \|A - O\| = \|B - O\|.
Hypothesis HAB_not_eq : A <> B.

(* Semicircle: Only points above AB *)
Definition semicircle (X : 'rV[R]_2) : Prop :=
  \|X - O\| = \|A - O\| /\ 0 <= (X - O) *v (perp (B - A))^T.

(* CA perpendicular to AB at A *)
Hypothesis HCA_perp : (C - A) *m (B - A)^T = 0.
Hypothesis HCA_on_semicircle : semicircle C.

(* DB perpendicular to AB at B *)
Hypothesis HDB_perp : (D - B) *m (B - A)^T = 0.
Hypothesis HDB_on_semicircle : semicircle D.

(* E is the intersection of the tangents to the semicircle at C and D *)
Variable tangent_at : 'rV[R]_2 -> ('rV[R]_2 -> Prop).
Hypothesis HtangentC : tangent_at C = fun X => [proj2_sig (@tangent_line R O (A - O) C) X].
Hypothesis HtangentD : tangent_at D = fun X => [proj2_sig (@tangent_line R O (A - O) D) X].
Hypothesis HE_on_tangents : tangent_at C E /\ tangent_at D E.

(* OF perpendicular to CD at F, F on CD, O, F, CD collinear *)
Hypothesis HCD_not_collinear : C <> D.
Hypothesis HF_on_CD : exists t : R, 0 <= t <= 1 /\ F = (1 - t) *: C + t *: D.
Hypothesis HOF_perp : (O - F) *m (D - C)^T = 0.

(* Define angle in terms of point triples *)
Definition angle (X Y Z : 'rV[R]_2) : R :=
  let u := X - Y in
  let v := Z - Y in
  let dot := (u *m v^T) 0 0 in
  let normu := \|u\| in
  let normv := \|v\| in
  acos (dot / (normu * normv)).

Theorem semicircle_tangent_angle :
  angle E F D = angle F O B.
Proof. Admitted.

End SemicircleTangency.
####