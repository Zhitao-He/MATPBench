####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals normedtype trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points in the plane *)
Variables (P Q R S A Z : R * R).

(* Given: 
   - PSRQ is a quadrilateral with consecutive vertices S, P, Q, R.
   - SA and RZ are both perpendicular to PQ.
   - |SR| = 10, |RQ| = 12.
   - The angle at P between PS and PQ is 45 degrees;
   - The angle at Q between QR and QP is 30 degrees.
   - The feet of the perpendiculars from S and R to PQ are A and Z, respectively.
*)

Hypotheses
  (H_SR : normr (fst R - fst S, snd R - snd S) = 10)
  (H_PQ : exists z : R, normr (fst Q - fst Z, snd Q - snd Z) = z /\ normr (fst Z - fst R, snd Z - snd R) = x)
  (H_RQ : normr (fst Q - fst R, snd Q - snd R) = 12)
  (H_SA_perp : fst S - fst A = 0)
  (H_RZ_perp
####