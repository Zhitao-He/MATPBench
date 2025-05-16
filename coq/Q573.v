####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem value_y_25_14 :
  exists2 Y A B N : 'P2(R),
    (* 1. Distances from diagram *)
    [/\ dist Y B = 14,
        dist Y A = 5,
        dist A N = x,
        dist N B = z,
        dist Y N = y,
    (* 2. A N is perpendicular to Y B *)
        colinear Y B A & perpendicular (A - N) (B - Y)
    (* 3. N is the foot of the perpendicular from A to Y B *)
        /\ on_line N Y B
        /\ N = foot A Y B
    (* 4. A, N, B are collinear (right triangle at N) *)
        /\ colinear A N B
    (* 5. Right angle at A (A N perpendicular to N B) *)
        /\ right_angle A N B
    ]
    (* 6. Requested computation: y = dist(Y,N) = 25/14 *)
    & dist Y N = 25 / 14.
Proof. Admitted.
####