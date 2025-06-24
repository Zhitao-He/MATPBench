From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals ssrnum.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem hexagon_square_outer_polygon_area :
  let square := [:: (0,0); (1,0); (1,1); (0,1)] in
  let hex_side := 1 in
  let hex1 := [:: (0,0); (1,0); (1 + hex_side/2, sqrt 3/2 * hex_side);
                (1, sqrt 3 * hex_side); (0, sqrt 3 * hex_side);
                (-hex_side/2, sqrt 3/2 * hex_side)] in
  let hex2 := [:: (1,0); (1,1); (1 + hex_side/2, 1 + sqrt 3/2 * hex_side);
                (1, 1 + sqrt 3 * hex_side); (0, 1 + sqrt 3 * hex_side);
                (0.5 * hex_side, 1 + sqrt 3/2 * hex_side)] in
  let hex3 := [:: (1,1); (0,1); (-hex_side/2, 1 + sqrt 3/2 * hex_side);
                (0, 1 + sqrt 3 * hex_side); (1, 1 + sqrt 3 * hex_side);
                (1 + hex_side/2, 1 + sqrt 3/2 * hex_side)] in
  let hex4 := [:: (0,1); (0,0); (-hex_side/2, sqrt 3/2 * hex_side - hex_side/2);
                (0, -hex_side); (1, -hex_side); (1 + hex_side/2, sqrt 3/2 * hex_side - hex_side/2)] in
  let outer_polygon := [::
    (* Vertices should be computed from the hexagons' outer points *)
  ] in
  exists (m p : int) (n : nat), 
    area outer_polygon = m * sqrt n + p /
    ~is_square n /
    m + n + p = -4.
