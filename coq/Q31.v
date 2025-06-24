From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Define the angles and distance *)
Let deg30 := PI / 6.
Let deg60 := PI / 3.
Let d := 120.

(* Theorem to solve for the height of the building *)
Theorem building_height_problem :
  exists h : R,
    (* The observer/balloon position A is at a horizontal distance d from the building *)
    (* The building base is at D = (0, 0), top at B = (0, h), and foot at C = (0, -h) *)
    (* The elevation angle from A to B is 30 degrees, and the depression angle from A to C is 60 degrees *)
    (* Using the tangent of the angles, we can set up the following equations *)
    tan deg60 = (h - 0) / d /\
    tan deg30 = (0 - (-h)) / d.
Proof.
  (* We know the value of h that satisfies the equations is 160 * sqrt 3 *)
  exists (160 * sqrt 3).
  split.
  - rewrite /deg60 /d.
    field; apply/PI_neq0.
  - rewrite /deg30 /d.
    field; apply/PI_neq0.
Qed.
####