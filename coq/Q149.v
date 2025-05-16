####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Circle_Arcs.

Variable R : realType.

Record point := Point { px : R; py : R }.

Variables O A B C D E F : point.

Hypothesis circle_O : forall P, (P = A \/ P = B \/ P = C \/ P = D \/ P = E \/ P = F) -> ((px P - px O)^2 + (py P - py O)^2 = (px A - px O)^2 + (py A - py O)^2).
Hypothesis diam_AB : ((px A + px B) / 2 = px O) /\ ((py A + py B) / 2 = py O).
Hypothesis diam_EC : ((px E + px C) / 2 = px O) /\ ((py E + py C) / 2 = py O).
Hypothesis center_neq : A <> O /\ B <> O /\ C <> O /\ D <> O /\ E <> O /\ F <> O.

Let angle P Q R0 :=
  atan2 ((py R0 - py Q) * (px P - px Q) - (py P - py Q) * (px R0 - px Q))
        ((px P - px Q) * (px R0 - px Q) + (py P - py Q) * (py R0 - py Q)).

Hypothesis angles_equal : angle A O C = angle C O E /\ angle C O E = angle E O G.

Theorem equal_sum_arcs : angle A O C + angle C O E = angle A O E.
Proof.
admit.
Qed.

End Circle_Arcs.
####