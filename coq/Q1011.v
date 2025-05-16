####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryProblem.

Variable R : realType.

Variables A B C D E O : 'rV[R]_2.

Hypothesis Hcircle : on_circle O A /\ on_circle O B /\ on_circle O C /\ on_circle O D /\ on_circle O E.
Hypothesis HAB_diam : O = midpoint A B.
Hypothesis HCD_perp_AB : is_line C D /\ is_line A B /\ perpendicular (line_through C D) (line_through A B).
Hypothesis HACED : is_chord A E /\ is_chord C D.
Hypothesis HAE_bisects_OC : midpoint O C = midpoint A E.
Hypothesis CHdistinct : distinct4 A B C D.
Hypothesis HE_on_arc : E \in inside_arc C D.

Definition Dpoint := if D != C then D else C. (* Ensure D ≠ C *)

Theorem circle_bisection :
  let DE := line_through D E in
  let BC := line_through B C in
  let F := DE ∩ BC in
  midpoint B C = F.
Proof. Admitted.

End GeometryProblem.
####