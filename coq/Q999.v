####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Tangent_Secant_Circle_Theorem.

Variable R : realType.
Let Point := 'rV[R]_2.

Variables A B C O P : Point.

Hypotheses
  (OneqA : O != A)
  (OneqB : O != B)
  (OneqC : O != C)
  (OneqP : O != P)
  (circleO : forall X : Point, X \in [pred X0 : Point | norm (X0 - O) = norm (A - O)] <-> exists t : R, X = O + t *m (A - O))
  (A_on_circleO : norm (A - O) = norm (A - O))
  (B_on_circleO : norm (B - O) = norm (A - O))
  (C_on_circleO : norm (C - O) = norm (A - O))
  (PA_tangent : [forall v : Point, (v != A -> norm (v - O) = norm (A - O) -> are_collinear A v P) -> are_collinear P A (O + (A - O))])
  (PBC_secant : exists t1 t2 : R, (B = P + t1 *m (C - P)) /\ (C = P + t2 *m (C - P)) /\ B != C)
.

(* D is foot of perpendicular from A to OP *)
Definition D : Point := 
  let u := P - O in
  let t := ((A - O) *m u^T) / ((u *m u^T) : R) in
  O + t *m u.

(* E is the second intersection of circumcircle of ADC with BC *)
Variable E : Point.

Hypotheses
  (D_on_OP : exists s : R, D = O + s *m (P - O))
  (AD_perp_OP : ((A - D) *m (P - O)^T) = 0)
  (E_on_BC : exists sE : R, E = B + sE *m (C - B) /\ E != B /\ E != C)
  (E_on_circum_ADC : exists tE : R, 
     let AO := A - O in let DO := D - O in let CO := C - O in
     exists cO : Point, (* circumcenter of ADC *)
       (forall X:Point, norm (X - cO) = norm (A - cO) <-> 
         X = A \/ X = D \/ X = C \/ X = E) /\
       (norm (E - cO) = norm (A - cO)))
  (E != D)
  (E != A)
  (E != C).

Theorem tangent_secant_circle_angles :
  \angle B A E = \angle A C B.
Proof. Admitted.

End Tangent_Secant_Circle_Theorem.
####