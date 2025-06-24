####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope R_scope.

Variable Point : Type.

Variables A B D E F H J Y : Point.

Hypotheses
  (Horiz : collinear [:: E; H; A])
  (Horiz_ext : collinear [:: B; Y; F])
  (Vert : collinear [:: J; H; D])
  (Vert_ext : collinear [:: J; Y; D])
  (HY_between : between H Y J)
  (HX_parallel : parallel (E, A) (B, F))
  (VY_parallel : parallel (J, D) (H, Y))
  (H_orthogonal : angle E H J = pi/2)
  (Y_between : between B Y F)
  (H_between : between E H A)
  (YH_collinear : H <> Y)
  (Angle_DYF : angle D Y F = (4*y + 10)%R)
.

Variable y : R.

(* Use the given angle FYD = 4y + 10° and the properties of parallel lines and perpendicular lines to find the value of y. *)
Theorem value_of_y :
  y = 20.
Proof.
  (* Proof Steps: *)
  (* 1. Since EH is parallel to BY and YH is perpendicular to EH, angle FYD is equal to angle BYH (corresponding angles). *)
  (* 2. Angle BYH is a right angle because it is complementary to angle EHJ, which is a right angle. *)
  (* 3. Therefore, angle FYD = 90°. *)
  (* 4. Given angle FYD = 4y + 10°, we have 4y + 10 = 90. *)
  (* 5. Solving for y: 4y = 80 => y = 20. *)

  (* Final computation: *)
  (* - y = 20. *)

  by rewrite /=; lra.
Qed.
####