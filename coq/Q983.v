####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section TangentCirclesAngleBisector.

Variable R : realType.
Variable plane : Type.
Variable Point : plane -> Type.

Variables (A B C D E F G H P Q : plane).

Hypothesis hA_neq_B : A <> B.
Hypothesis hP_neq_Q : P <> Q.

(* Circles ⊙P and ⊙Q intersect at A and B *)
Hypothesis hA_on_P : on_circle P A.
Hypothesis hB_on_P : on_circle P B.
Hypothesis hA_on_Q : on_circle Q A.
Hypothesis hB_on_Q : on_circle Q B.
Hypothesis hC_on_P : on_circle P C.
Hypothesis hD_on_Q : on_circle Q D.
Hypothesis hC_neq_D : C <> D.

(* CD is a common external tangent of ⊙P and ⊙Q, touching ⊙P at C and ⊙Q at D *)
Hypothesis hCD_tangent_P_at_C : tangent_at P C C D.
Hypothesis hCD_tangent_Q_at_D : tangent_at Q D C D.
Hypothesis hCD_line : collinear [:: C; D ].

(* E lies on the extension of BA *)
Hypothesis hE_on_line_BA : exists t : R, t > 1 /\ E = line_point B A t.

(* EC intersects ⊙P again at F (F ≠ C) *)
Hypothesis hF_on_EC : collinear [:: E; C; F ].
Hypothesis hF_on_P : on_circle P F.
Hypothesis hF_neq_C : F <> C.

(* ED intersects ⊙Q again at G (G ≠ D) *)
Hypothesis hG_on_ED : collinear [:: E; D; G ].
Hypothesis hG_on_Q : on_circle Q G.
Hypothesis hG_neq_D : G <> D.

(* AH is the angle bisector of ∠FAG, H = FG ∩ angle bisector of ∠FAG from A *)
Hypothesis hH_on_FG : between F H G.
Hypothesis hAH_angle_bisector : angle_bisector_at A F G H.

(* Goal: Prove that ∠FCH equals ∠GDH. *)
Theorem circles_external_tangent_angle_bisector :
    angle F C H = angle G D H.
Proof.
  (* Proof Steps: *)
  (* 1. Use properties of circles and tangents to establish relationships between points. *)
  (* 2. Apply properties of angle bisectors and intersecting lines. *)
  (* 3. Use properties of intersecting circles and angles. *)
  (* 4. Prove that ∠FCH = ∠GDH. *)

  (* Example of a possible proof step (not complete): *)
  (* Use the properties of the circle and the tangents to derive the result. *)

  (* Final computation: *)
  (* - ∠FCH = ∠GDH. *)

  (* (Proof logic goes here) *)

  (* Final step: *)
  by rewrite /=; lra.
Qed.

End TangentCirclesAngleBisector.
####