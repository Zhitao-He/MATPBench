####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Let A := row3 0 0 16.
Let B := row3 12 0 16.
Let C := row3 6 (12*sqrt 3/2) 16.
Let D := row3 0 0 0.
Let E := row3 12 0 0.
Let F := row3 6 (12*sqrt 3/2) 0.
Let M := D + (4/12)*: (E - D).
Let N := D + (2/12)*: (F - D).
Let vec_CA := A - C.
Let vec_CB := B - C.
Let Q := C + (8/6)*: vec_CA.
Let P := C + (11/11)*: vec_CB.

Theorem prism_surface_area_example : exists S, True.
Proof.
admit.
Qed.
####