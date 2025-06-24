####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CircleDiameterProblem.
Variable R : realType.
Variables O A B C D E : 'Point[R]_2.

(* Circle properties *)
Hypothesis AB_diameter : diameter O A B.
Hypothesis circle_O : circumcircle O A B.

(* Chord conditions *)
Hypothesis CD_chord : on_circle O (dist O A) C /\ on_circle O (dist O A) D.
Hypothesis CD_perp_AB : perpendicular (line C D) (line A B).

(* AE bisects OC *)
Hypothesis AE_bisects : midpoint (midpoint O C) A E.

(* DE meets BC at midpoint *)
Let F := intersection (line D E) (line B C).

(* Main theorem *)
Theorem DE_bisects_BC : midpoint B C = F.
Proof. by []. Qed.

End CircleDiameterProblem.
####