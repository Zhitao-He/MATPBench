####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit Defensive.

Local Open Scope ring_scope.

Section length_AB_rectangle.

Variable R : realType.
Record point := mkPoint { px : R; py : R }.
Definition dist (P Q : point) := sqrt ((px P - px Q)^2 + (py P - py Q)^2).

Theorem length_AB_5 :
  exists A B C D E : point,
    A = mkPoint 0 4 /\ B = mkPoint 3 0 /\ C = mkPoint 0 (-4) /\ D = mkPoint (-3) 0 /\ E = mkPoint 0 0 /\
    dist D E = 3 /\ dist E B = 3 /\ dist A E = 4 /\ dist E C = 4 /\
    dist A B = 5.
Proof.
  (* proof omitted *)
Admitted.

End length_AB_rectangle.
####