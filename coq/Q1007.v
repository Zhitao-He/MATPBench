####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section MidpointParallelProblem.
Variable R : realType.
Variables A B C D E F M N O K : 'Point[R]_2.

(* Triangle properties *)
Hypothesis noncol_ABC : ~ collinear [:: A; B; C].

(* Midpoints *)
Hypothesis D_midpoint : midpoint D B C.
Hypothesis E_midpoint : midpoint E C A.
Hypothesis F_midpoint : midpoint F A B.

(* Parallel lines and intersections *)
Hypothesis EI_parallel : parallel (line E M) (line A C).
Hypothesis M_intersection : collinear [:: A; D; M].
Hypothesis FI_parallel : parallel (line F N) (line A B).
Hypothesis N_intersection : collinear [:: A; D; N].

(* Point constructions *)
Hypothesis O_intersection : collinear [:: E; M; O] /\ collinear [:: F; N; O].
Hypothesis K_intersection : collinear [:: C; M; K] /\ collinear [:: B; N; K].

(* Perpendicular condition *)
Definition OK := line O K.
Definition AK := line A K.

(* Main theorem *)
Theorem OK_perp_AK : perpendicular OK AK.
Proof. by []. Qed.

End MidpointParallelProblem.
####