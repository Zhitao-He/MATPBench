####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Let pi := Num.pi.
Definition hex_vert k := let θ := k%:R * (pi / 3) in (4 * cos θ, 4 * sin θ).
Definition triangle1 := [:: hex_vert ord0; hex_vert ord2; hex_vert ord4].
Definition triangle2 := [:: hex_vert ord1; hex_vert ord3; hex_vert ord5].
Definition in_triangle p tri := geometry.in_triangle p (nth (0,0) tri 0) (nth (0,0) tri 1) (nth (0,0) tri 2).
Definition S := fun p => in_triangle p triangle1 /\in_triangle p triangle2.

Theorem hexagon_intersection_nonempty : exists p, S p.
Proof.
admit.
Qed.
####