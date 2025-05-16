####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals classical_sets geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section GeometryDiagram.

Variable R : realType.

Variables J K L M N A : R^2.

Hypothesis Hcircle : on_circle A J /\ on_circle A K /\ on_circle A M /\ on_circle A N.
Hypothesis Helts :
    dist J K = 12 /\
    dist N M = 6 /\
    dist K L = 2 /\
    colinear N M L /\
    betw N M L /\
    betw M K L.

Definition x := dist M L.

Theorem value_of_x :
    x = -3 + sqrt 37.
Proof. Admitted.

End GeometryDiagram.
####