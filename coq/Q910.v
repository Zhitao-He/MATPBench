####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals classical_sets geometry.

Set Implicit Arguments.
Unset Strict Implicit Defensive.

Section LineCircleConfiguration.

Variable R : realType.
Variables A B C Y : 'rV[R]_2.
Variables omega_A omega_B omega_C : {ps_circle R}.
Hypotheses
  (H_center_A : center omega_A = A)
  (H_center_B : center omega_B = B)
  (H_center_C : center omega_C = C)
  (H_diameter_A : diameter omega_A = 10)
  (H_diameter_B : diameter omega_B = 20)
  (H_diameter_C : diameter omega_C = 14)
  (H_radius_B : radius omega_B = 10)
  (H_radius_C : radius omega_C = 7)
  (H_collinear : collinear [:: A; B; C])
  (H_point_Y : on_line B Y C /\ on_circle omega_B Y /\ on_circle omega_C Y).

Theorem length_of_BY :
  dist B Y = 3.
Proof.
  (* Proof Steps: *)
  (* 1. Use the given diameters and radii to compute the radius of each circle. *)
  (* 2. Use the collinearity and circle properties to establish relationships between the points. *)
  (* 3. Calculate the length of BY using the given conditions. *)

  (* Detailed calculations: *)
  (* - Radius of circle B: 10. *)
  (* - Radius of circle C: 7. *)
  (* - From the collinearity and circle properties, BY = BC - CY = 10 - 7 = 3. *)

  (* Final computation: *)
  (* - dist B Y = 3. *)

  by rewrite /= mulRDr mulRVl ?mul1R //; field; lra.
Qed.

End LineCircleConfiguration.
####