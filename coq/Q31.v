From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem building_height_problem :
  let h := 160 * sqrt 3 in
  let d := 120 in
  let deg30 := PI / 6 in
  let deg60 := PI / 3 in
  forall (A B C D : 'rV[R]_2),
    D = row2 0 0 ->
    C = row2 0 (- h) ->
    B = row2 0 h ->
    exists y_A : R,
      A = row2 d y_A /\
      tan deg60 = (y_A - (- h)) / d /\
      tan deg30 = (h - y_A) / d.
Proof.
move=> h d deg30 deg60 A B C D HD HC HB.
exists (160 * sqrt 3).
split.
- by rewrite /d row2_eq2 /=; field.
- rewrite /deg60 /h.
  field; apply/PI_neq0.
- rewrite /deg30 /h.
  field; apply/PI_neq0.
Qed.
####