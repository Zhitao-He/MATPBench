####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points A, B, C forming an equilateral triangle with side length 2 *)
Let A := (0, sqrt 3)%:V.
Let B := (-1, 0)%:V.
Let C := (1, 0)%:V.

(* Area of the equilateral triangle ABC *)
Let triangle_area := sqrt 3.

(* Radius of the semicircle with diameter BC, which equals to 1 since BC=2 *)
Let BC_radius := 1.

(* Area of the semicircle *)
Let semicircle_area := PI * BC_radius^2 / 2.

(* Angle BAC is 60 degrees or PI/3 radians because ABC is equilateral *)
Let angle_BAC := PI / 3.

(* Area of the sector ABC, with radius equal to AB = AC = 2 *)
Let sector_area := (PI/3) * 2^2 / 2.

(* Area of the lune, inside the semicircle but outside sector ABC *)
Let lune_area := semicircle_area - (sector_area - triangle_area).

Theorem putnam_2014_a3 :
  exists p q r : nat,
    [/\ sqrt (p%:R) - (q%:R * PI) / (r%:R) = lune_area,
        q > 0, r > 0, coprime q r, p > 0 &
        p + q + r = 10].
Proof. Admitted.
####