####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points *)
Variables A B C D M N O : 'e2[R].

Hypotheses
  (* ABCD is a rhombus (diamond) *)
  (Hrhombus : is_rhombus A B C D)
  (* M is the midpoint of AB *)
  (HM : midpoint M A B)
  (* N is the midpoint of DC *)
  (HN : midpoint N D C)
  (* O is the intersection of BM and AN *)
  (HO : [/\ incident O (Line B M), incident O (Line A N)])
  (* angle BAD = 28 degrees *)
  (Hangle : angle A B D = 28%:R).

Theorem diamond_angle_OBC :
  angle O B C = 62%:R.
Proof. Admitted.
####