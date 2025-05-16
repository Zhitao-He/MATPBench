####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryTheorem.

Variable R : realType.

(* Points: A, B, C are non-collinear and define triangle ABC *)
Variables A B C : 'rV[R]_2.
Hypothesis triangle_ABC : ~~ collinear [::A;B;C].

(* O is the circumcenter of triangle ABC *)
Variable O : 'rV[R]_2.
Hypothesis O_circum : is_circumcenter O A B C.

(* The circle centered at O passing through A, B, C *)
Definition circO := mk_circle O (dist A O).
Hypothesis O_on_circle : on_circle circO A /\ on_circle circO B /\ on_circle circO C.

(* AD is the angle bisector of angle BAC, meeting the circle again at D (D ≠ A) *)
Variable D : 'rV[R]_2.
Hypothesis D_on_circle : on_circle circO D.
Hypothesis D_on_bisector : on_angle_bisector D A B C.
Hypothesis D_neq_A : D != A.

(* OE is parallel to BD and meets AB at E *)
Variable E : 'rV[R]_2.
Hypothesis E_on_AB : on_line E (line A B).
Hypothesis OE_parallel_BD : parallel (line O E) (line B D).

(* OF is parallel to CD and meets AC at F *)
Variable F : 'rV[R]_2.
Hypothesis F_on_AC : on_line F (line A C).
Hypothesis OF_parallel_CD : parallel (line O F) (line C D).

(* H is the orthocenter of triangle ABC *)
Variable H : 'rV[R]_2.
Hypothesis H_orthocenter : is_orthocenter H A B C.

(* HG is parallel to AD and meets BC at G *)
Variable G : 'rV[R]_2.
Hypothesis G_on_BC : on_line G (line B C).
Hypothesis HG_parallel_AD : parallel (line H G) (line A D).

Theorem equal_segments_BE_GE_GF_CF :
  dist B E = dist G E /\
  dist G E = dist G F /\
  dist G F = dist C F.
Proof. Admitted.

End GeometryTheorem.
####