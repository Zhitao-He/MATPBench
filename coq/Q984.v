####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals geometry klassischen_kreis euclidean.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryProblem.

Variable R : realType.

Record point := Point { px : R; py : R }.

Definition collinear (A B C : point) : Prop :=
  (px B - px A) * (py C - py A) = (py B - py A) * (px C - px A).

Definition midpoint (A B G : point) : Prop :=
  px G = (px A + px B) / 2 /\ py G = (py A + py B) / 2.

Definition circle (O : point) (r : R) (P : point) : Prop :=
  ((px P - px O)^2 + (py P - py O)^2 = r^2).

Definition on_circle (O : point) (r : R) (P : point) : Prop :=
  circle O r P.

Definition between (A B C : point) : Prop :=
  exists k : R, 0 < k < 1 /\
    px B = (1 - k) * px A + k * px C /\
    py B = (1 - k) * py A + k * py C.

Definition line_through (A B : point) (P : point) : Prop :=
  exists t : R, px P = px A + t * (px B - px A) /\
                py P = py A + t * (py B - py A).

(* Variables for triangle and its centers *)
Variables A B C O I E : point.
Variable rO : R.

Hypotheses
  (hABC_noncol : ~ collinear A B C)
  (hO_circum : on_circle O rO A /\ on_circle O rO B /\ on_circle O rO C)
  (hI_incenter : (* I is the incenter of triangle ABC *)
    (* formal definition would require angle bisectors intersection; abbreviated here *)
    True)
  (hE_excenter : (* E is an excenter of triangle ABC opposite A *)
    True).

(* D: intersection of exterior angle bisector of angle BAC with external BC *)
Variable D : point.
Hypothesis
  (hD_exterior_bisector :
    (* D lies on the extension of BC and on the exterior angle bisector of angle BAC *)
    line_through B C D /\
    ~ between B D C /\
    (* D lies on angle bisector at A, exterior *)
    True).

(* E: defined as in the diagram *)
Variable E : point.
Hypothesis
  (hE_on_bisector : (* E lies on exterior angle bisector *)
    True).

(* F: the foot from I to DE *)
Variable F : point.
Hypothesis
  (hF_foot : 
    exists t : R, 
      px F = px D + t * (px E - px D) /\
      py F = py D + t * (py E - py D) /\
      let vx := px E - px D in
      let vy := py E - py D in
      (vx * (px F - px I) + vy * (py F - py I)) = 0).

(* IF is perpendicular to DE at F *)

(* G: intersection of IF with circumcircle, G ≠ I *)
Variable G : point.
Hypothesis
  (hG_circum :
    on_circle O rO G /\
    exists s : R, s <> 0 /\
      px G = px I + s * (px F - px I) /\
      py G = py I + s * (py F - py I)).

Theorem exradius_circum_geoproblem :
  midpoint I F G.
Proof. Admitted.

End GeometryProblem.
####