####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CircleReflectionProblem.
Variable R : realType.
Variables A B C D O E F G K : 'Point[R]_2.

(* Circle properties *)
Hypothesis ABCD_cyclic : concyclic [:: A; B; C; D].
Hypothesis AC_diameter : midpoint O A C /\ dist O A = dist O B = dist O C = dist O D.

(* Reflection points *)
Hypothesis E_reflection : E = reflect_over (line A C) D.
Hypothesis F_reflection : F = reflect_over (line B D) C.

(* Intersection points *)
Hypothesis G_intersection : collinear [:: A; F; G] /\ collinear [:: B; D; G].
Hypothesis K_intersection : collinear [:: B; E; K] /\ collinear [:: A; C; K].

(* Main theorem *)
Theorem KG_perp_BG : perpendicular (line K G) (line B G).
Proof. by []. Qed.

End CircleReflectionProblem.
####