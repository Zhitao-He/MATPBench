####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section MeasureOfArcOAE.

Variable R : realType.

Variables O A B C E F : R2.

(* Circle centered at O *)
Hypothesis circle_O : is_center O.

(* Perpendicularity conditions *)
Hypothesis CO_perp_AO : is_perpendicular (Line C O) (Line A O).
Hypothesis EO_perp_BO : is_perpendicular (Line E O) (Line B O).

(* Given angle: ∠FOE = 45° *)
Hypothesis angle_FOE_45 : MeasureOfAngle F O E = 45.

(* Theorem to prove: Measure of arc OAE = 270° *)
Theorem measure_of_arc_OAE : MeasureOfArc O A E = 270.
Proof. Admitted.

End MeasureOfArcOAE.
####