####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Tangent_Secant_Circle_Theorem.

Variable R : realType.

(* Points *)
Variables A B C D E F G J O : 'rV[R]_2.

(* Circle with center O passing through A, B, C, D *)
Variable circ : pred ('rV[R]_2).
Hypothesis Hcirc : forall P, circ P <-> ((P - O) *m (P - O)^T)[0,0] = ((A - O) *m (A - O)^T)[0,0].
Hypothesis HA : circ A.
Hypothesis HB : circ B.
Hypothesis HC : circ C.
Hypothesis HD : circ D.

(* Tangents: BC tangent at C, BD tangent at D *)
Hypothesis HBneqC : B <> C.
Hypothesis HBneqD : B <> D.
Hypothesis HCneqD : C <> D.
Hypothesis HTanBC : forall l, collinear [::B;C] -> tangent circ C l /\ B \in l.
Hypothesis HTanBD : forall l, collinear [::B;D] -> tangent circ D l /\ B \in l.

(* Secant BA passes through J (between B and A), J on circle *)
Hypothesis Hsec_BA : exists alpha, 0 < alpha < 1 /\ J = (1 - alpha) *: B + alpha *: A.
Hypothesis HJ : circ J.

(* DE perpendicular to AO at E, DE intersects AB at F *)
Hypothesis HDE : exists lDE, collinear [::D;E] /\ collinear [::E;A;O] /\ 
    (let AO := A - O in let DE := D - E in (AO *m DE^T)[0,0] = 0).
Hypothesis HFL : exists lAB, collinear [::A;B] /\ F \in lAB /\ F \in (fun P => exists lDE, collinear [::D;E] /\ P \in lDE).

(* AC intersects DE at G *)
Hypothesis HAC : exists lAC, collinear [::A;C] /\ G \in lAC /\ G \in (fun P => exists lDE, collinear [::D;E] /\ P \in lDE).

(* Collinearities specified for DE, AO, AB, AC, etc. *)
Hypothesis Hcol_DE : collinear [::D;E].
Hypothesis Hcol_AO : collinear [::A;O].
Hypothesis Hcol_AB : collinear [::A;B].
Hypothesis Hcol_AC : collinear [::A;C].
Hypothesis Hcol_DEE : E \in (fun P => exists lDE, collinear [::D;E] /\ P \in lDE).

Theorem tangents_secant_circle_DF_FG :
    let dist P Q := Num.sqrt (((P - Q) *m (P - Q)^T)[0,0]) in
    dist D F = dist F G.
Proof. Admitted.

End Tangent_Secant_Circle_Theorem.
####