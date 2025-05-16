####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals angtype.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope R_scope.

Variable R : realType.

(* Points defined as in the diagram *)
Variables A B C D E : 'angPoint(R).

Hypotheses
  (H1 : is_triangle A B C)
  (H2 : is_triangle B C D)
  (H3 : is_triangle C D E)
  (* The internal angles at B and D as shown in the diagram *)
  (angle_ABC : angle_at A B C = 55%:R)
  (angle_CDE : angle_at C D E = 75%:R)
  (* x is the angle at the intersection point (denoted E in this formalization)*)
.

Theorem angle_sum_diagram :
  angle_at B E D = 50%:R.
Proof. Admitted.
####