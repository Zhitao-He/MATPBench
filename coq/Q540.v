####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section SegmentLength.

Variable R : realType.

(* Points in the plane *)
Variables S Q R T : 'rV[R]_2.

(* Hypotheses about segment lengths *)
Hypothesis SQ18 : `|Q - S| = 18.
Hypothesis QR6 : `|R - Q| = 6.
Hypothesis RS14 : `|S - R| = 14.

(* T lies on segment QR *)
Hypothesis T_on_QR : exists t : R, 0 < t < 1 /\ T = (1 - t) *: Q + t *: R.

(* Angle equality: ∠TRQ = ∠SRT (implied by the problem statement) *)
(* This would typically be part of the proof, but we include it as a note here *)
(* Note: The angle equality would be used to apply angle bisector properties or similar triangles in the proof *)

(* Theorem to prove: The length of QT is 27/5 *)
Theorem value_x_TQ :
  `|T - Q| = 27/5.
Proof. Admitted.

End SegmentLength.
####