####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals matrix.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Let A : 'cV[R]_2 := col_mx 0 0.
Let B : 'cV[R]_2 := col_mx 18 0.
Let C : 'cV[R]_2 := col_mx 18 8.
Let D : 'cV[R]_2 := col_mx 0 8.
Let y : R := 6.

Theorem rectangle_hexagon_square :
  exists H1 H2 : seq ('cV[R]_2), exists S : seq ('cV[R]_2),
    let rectangle_area := 8 * 18 in
    let square_side := sqrt rectangle_area in
    partition H1 H2 [:: A; B; C; D] /
    congruence H1 H2 /
    area_of_seq H1 = rectangle_area / 2%:R /
    area_of_seq H2 = rectangle_area / 2%:R /
    square_of_seq S square_side.
Proof.
admit.
Qed.
####