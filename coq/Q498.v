####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals geometry.
From mathcomp.analysis Require Import trig.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem value_of_x_in_geometry_diagram :
  forall (A B C D : R^2),
    (* A, B, C are non-collinear points *)
    A != B -> B != C -> C != A ->
    (* Triangle ABC: right angle at A, angle BAC = 90 degrees *)
    [/\ 'angle_at A B C = pi / 2,
        (* AC and AB are perpendicular at A *)
        \vec A B \perp \vec A C,
        (* Angle at B is 30 degrees, angle at C is 60 degrees *)
        'angle_at B C A = PI / 3,
        'angle_at C A B = PI / 6,
        (* BC = 9 *)
        dist B C = 9,
        (* D on BC, AD perpendicular to BC *)
        D \in [segments B, C] &
        \vec A D \perp \vec B C /\
        (* AD = 3*sqrt(3) *)
        dist A D = 3 * sqrt 3
    ] ->
    let x := dist A B in
      x = 6 * sqrt 
####