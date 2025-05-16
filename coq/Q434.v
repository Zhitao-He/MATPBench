####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Let pi := acos (-1).

Definition hex_vertex k : 'cV[R]_2 :=
  let theta := k%:R * (pi / 3) in col_mx (cos theta) (sin theta).

Definition A := hex_vertex 0.
Definition B := hex_vertex 1.
Definition C := hex_vertex 2.
Definition D := hex_vertex 3.
Definition E := hex_vertex 4.
Definition F := hex_vertex 5.

Definition mid P Q := (P + Q) / 2.

Definition Rpt := mid F A.
Definition S := mid B C.
Definition T := mid C D.
Definition U := mid E F.

(* The four regions are the quadrilaterals ARptB, BSC, CTD, DUE circumscribed by the hexagon's edges. *)
Definition region1 := [:: A; Rpt; B; midpoint A B].
Definition region2 := [:: B; S; C; midpoint B C].
Definition region3 := [:: C; T; D; midpoint C D].
Definition region4 := [:: D; U; E; midpoint D E].

Definition poly_area pts :=
  (1/2%:R) * 
  \\sum_(i < size pts) 
    let P := nth (col_mx 0 0) pts i in
    let Q := nth (col_mx 0 0) pts (i.+1 %% size pts) in
    (P 0 0 * Q 1 0 - Q 0 0 * P 1 0).

Theorem hexagon_partition_area :
  let H_area := poly_area [:: A; B; C; D; E; F] in
  H_area = poly_area region1 + poly_area region2 + poly_area region3 + poly_area region4.
Proof.
admit.
Qed.
####