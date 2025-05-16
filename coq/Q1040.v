####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Putnam_Geometry_Theorem.

Variable R : realType.

(* Points *)
Variables A B C O : 'rV[R]_2.

Hypothesis A_neq_B : A != B.
Hypothesis B_neq_C : B != C.
Hypothesis C_neq_A : C != A.

(* Circle O passes through A, B, C *)
Hypothesis O_circle : colinear R O A B C = false.

(* D is the midpoint of BC *)
Definition D : 'rV[R]_2 := ((B + C) / 2)%R.

(* AD meets circle O again at E, E ≠ A *)
Variable E : 'rV[R]_2.
Hypothesis E_on_circle : norm (E - O) = norm (A - O).
Hypothesis E_on_AD : colinear R A D E.
Hypothesis E_neq_A : E != A.
Hypothesis E_on_other_side : (exists k : R, k != 0 /\ E = A + k *: (D - A)).

(* Line EF parallel to BC, F ≠ E, F on circle O *)
Variable F : 'rV[R]_2.
Hypothesis F_on_circle : norm (F - O) = norm (A - O).
Hypothesis F_neq_E : F != E.
Hypothesis EF_parallel_BC : exists t : R, F = E + t *: (C - B).
Hypothesis F_on_line : colinear R E F (E + (C - B)).

(* CG perpendicular to AC, meets AE at G *)
Variable G : 'rV[R]_2.
Hypothesis G_on_AE : colinear R A E G.
Hypothesis CG_perp_AC : 
  [<: (G - C) \perp (C - A) :> R^2 ].
Hypothesis G_not_C : G != C.

Theorem putnam_geom_2023 :
  let angle (P Q R : 'rV[R]_2) :=
      let u := (P - Q) in
      let v := (R - Q) in
      acos ((u *m v ^T) ``_0 / (norm u * norm v)) in
  angle A G C = angle F G C.
Proof. Admitted.

End Putnam_Geometry_Theorem.
####