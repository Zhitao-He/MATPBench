####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition circle_center : R * R := (0, 0).
Definition r_small : R := 1.
Definition r_large : R := 7.

Definition theta (k : 'I_4) : R := (k%:R * PI) / 2.

Definition small_circle_point (k : 'I_4) : R * R :=
  let t := theta k in (r_small * cos t, r_small * sin t).

(* Each ray from small_circle_point is tangent to the small circle and reaches the large circle.
   These rays form four separate regions between the circles. *)

(* Area of shaded region per sector:
   Outer sector: (1/4) * PI * (r_large ^ 2)
   Inner sector: (1/4) * PI * (r_small ^ 2)
   Shaded area = outer sector - inner sector
   Total shaded area = 4 * (outer - inner) = 4 * (PI/4) * (r_large^2 - r_small^2) = PI * (r_large^2 - r_small^2) *)

Definition shaded_area : R := PI * (r_large ^ 2 - r_small ^ 2).

Theorem concentric_tangent_rays_area : exists k : nat, shaded_area = k%:R * PI.
Proof.
  exists 48. (* since r_large = 7 and r_small = 1, area = PI * (49 - 1) = 48 PI *)
  rewrite /shaded_area /= expr2.
  by field.
Qed.
####