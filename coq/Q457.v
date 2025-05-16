####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals ssrnum.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem hexagon_square_outer_polygon_area :
  let square := [:: (0,0); (1,0); (1,1); (0,1)] in
  let hex1 := [:: (0,0); (1,0); (1.5, sqrt 3./2); (1, sqrt 3.); (0, sqrt 3.); (-0.5, sqrt 3./2)] in
  let hex2 := [:: (1,0); (1,1); (1.5,1.5); (1,2); (0,2); (0.5,1.5)] in
  let hex3 := [:: (1,1); (0,1); (-0.5,1.5); (0,2); (1,2); (1.5,1.5)] in
  let hex4 := [:: (0,1); (0,0); (0.5,-0.5); (1,0); (1.5,0.5); (1,1)] in
  let P := (* the 12-sided outer polygon formed by
####