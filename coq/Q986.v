####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Circle_Tangent_Secant_Theorem.

Variable R : realType.
Variable Point : Type.

Variables O P C D E A B F G : Point.

Variable circle : Point -> R -> (Point -> Prop).
Variable diameter : Point -> Point -> Point -> Prop.
Variable tangent_at : Point -> (Point -> Prop) -> Point -> Prop.
Variable on_line : Point -> Point -> Point -> Prop.
Variable between : Point -> Point -> Point -> Prop.
Variable intersects : (Point -> Prop) -> (Point -> Prop) -> Point -> Prop.
Variable angle : Point -> Point -> Point -> R.

Hypothesis HO_radius : exists rO : R, 0 < rO /\ circle O rO.
Hypothesis H_circleO_CD : circle O _ C /\ circle O _ D.
Hypothesis H_CD_diameter : diameter O C D.

Hypothesis HP_outside : ~ circle O _ P.

Hypothesis H_PC_tangent : tangent_at P (circle O _) C.
Hypothesis H_PE_tangent : tangent_at P (circle O _) E.

Hypothesis HPBA_secant : 
  exists l : Point -> Prop,
    on_line P B l /\ on_line B A l /\ 
    intersects l (circle O _) A /\ 
    intersects l (circle O _) B /\
    A <> B.

Hypothesis HAC_line : on_line A C (fun X => on_line A C X).
Hypothesis HBD_line : on_line B D (fun X => on_line B D X).
Hypothesis HDE_line : on_line D E (fun X => on_line D E X).
Hypothesis HAB_line : on_line A B (fun X => on_line A B X).

Hypothesis HF_AC_BD : intersects (fun X => on_line A C X) (fun X => on_line B D X) F.
Hypothesis HG_DE_AB : intersects (fun X => on_line D E X) (fun X => on_line A B X) G.

(* Distinctness assumptions of points as per geometric configuration *)
Hypothesis Points_distinct : 
  [/\ C <> D, C <> E, C <> A, C <> B, C <> F, C <> G,
      D <> E, D <> A, D <> B, D <> F, D <> G,
      E <> A, E <> B, E <> F, E <> G,
      A <> B, A <> F, A <> G,
      B <> F, B <> G,
      F <> G].

Theorem angle_GFE_eq_angle_ADE :
  angle G F E = angle A D E.
Proof. Admitted.

End Circle_Tangent_Secant_Theorem.
####