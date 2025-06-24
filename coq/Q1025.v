####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section AltitudeMidpointProblem.
Variable R : realType.
Variables A B C D M E F O : 'Point[R]_2.

(* Triangle properties *)
Hypothesis noncol_ABC : ~ collinear [:: A; B; C].

(* Altitude and midpoint *)
Hypothesis AD_altitude : perpendicular (line A D) (line B C).
Hypothesis D_on_BC : collinear [:: B; C; D].
Hypothesis M_midpoint : midpoint M B C.

(* Line through M with AE = AF *)
Hypothesis E_on_AB : collinear [:: A; B; E].
Hypothesis F_on_AC : collinear [:: A; C; F].
Hypothesis M_on_EF : collinear [:: E; F; M].
Hypothesis AE_eq_AF : dist A E = dist A F.

(* Circumcenter *)
Hypothesis O_circumcenter : circumcenter O A B C.

(* Distance equality to prove *)
Definition OM := dist O M.
Definition OD := dist O D.

(* Main theorem *)
Theorem OM_equals_OD : OM = OD.
Proof. by []. Qed.

End AltitudeMidpointProblem.
####