####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Variables A B C P Q R' S : 'rV[R]_2.

Hypotheses
  (circle_P : let r := 1 in `| P - A | = r \/ `| P - B | = r \/ `| P - C | = r)
  (circle_Q : let r := 1 in `| Q - A | = r \/ `| Q - B | = r \/ `| Q - C | = r)
  (circle_R : let r := 1 in `| R' - A | = r \/ `| R' - B | = r \/ `| R' - C | = r)
  (circle_S : let r := 1 in `| S - A | = r \/ `| S - B | = r \/ `| S - C | = r)
  (tangency_PQ : `| P - Q | = 2)
  (tangency_PR : `| P - R' | = 2)
  (tangency_PS : `| P - S | = 2)
  (tangency_QR : `| Q - R' | = 2)
  (tangency_QS : `| Q - S | = 2)
  (tangency_RS : `| R' - S | = 2).

Theorem smallest_angle_PQS :
  let angle_P := angle_deg P Q S in
  let angle_Q := angle_deg Q P S in
  let angle_S := angle_deg S P Q in
  (angle_P <= angle_Q) && (angle_P <= angle_S) ==> angle_P = 30.
Proof. Admitted.
####