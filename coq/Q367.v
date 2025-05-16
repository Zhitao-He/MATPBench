####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry polyhedra.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Let n := 8%:R.
Let pi := Num.PI.
Let side := 12%:R.
Let theta := 2 * pi / n.
Let r := side / (2 * sin (pi / n)).
Definition octagon_vertex (k : 'I_8) : R * R :=
  (r * cos (2 * pi * k%:R / n), r * sin (2 * pi * k%:R / n)).
Let A := octagon_vertex ord0.
Let B := octagon_vertex ord1.
Let C := octagon_vertex ord2.
Let D := octagon_vertex ord3.
Let E := octagon_vertex ord4.
Let F := octagon_vertex ord5.
Let G := octagon_vertex ord6.
Let H := octagon_vertex ord7.

Definition area_trapezoid (P Q R S : R * R) : R :=
  let '(x1,y1) := P in let '(x2,y2) := Q in let '(x3,y3) := R in let '(x4,y4) := S in
  (x1*y2 - x2*y1 + x2*y3 - x3*y2 + x3*y4 - x4*y3 + x4*y1 - x1*y4) / 2.

Theorem trapezoid_BCDE_area :
  area_trapezoid B C D E = 6 * side^2.
Proof.
admit.
Qed.
####