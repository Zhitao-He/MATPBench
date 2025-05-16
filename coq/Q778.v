####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals normedtype trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_RST_side_length :
  forall (R_pt S_pt T_pt : 'rV[R]_2),
    let vec_dist A B := sqrt ((A 0 0 - B 0 0)^+2 + (A 0 1 - B 0 1)^+2) in
    let angle A O B :=
      let OA := A - O in let OB := B - O in
      acos ((OA *m OB^T) 0 0 / (norm OA * norm OB)) in
    vec_dist S_pt T_pt = 7 ->
    angle R_pt S_pt T_pt = PI * 2 / 3 ->
    angle S_pt T_pt R_pt = PI / 6 ->
    vec_dist R_pt T_pt = 7.
Proof. by []. Qed.
####