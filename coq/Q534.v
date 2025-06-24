####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section TriangleSideLength.

Variable R : realType.

(* Points A, B, C in the plane *)
Variables A B C : R^2.

(* Hypotheses *)
Hypothesis AB_length : \norm[2] (B - A) = 8. (* AB = 8 *)
Hypothesis CA_length : \norm[2] (A - C) = 10. (* CA = 10 *)
Hypothesis angle_BAC : \angle (B, A, C) = 60%:R * (PI / 180). (* ∠BAC = 60° *)

(* Theorem to prove: CB = a = 2 * sqrt(21) *)
Theorem triangle_side_length_value :
  exists a : R,
    \norm[2] (C - B) = a /\
    a = 2 * sqrt 21.
Proof. Admitted.

End TriangleSideLength.
####