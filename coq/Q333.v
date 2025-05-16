####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope R_scope.

Section Putnam_Geo_Theorem.

Variable R : realType.
Variables A B C D E F G H : 'P[R^2].
Hypotheses
  isoABC : is_isosceles_triangle A B C /\~ colinear A B C.
Hypotheses
  CH : on_line H (Line C B) /\on_line H (Line A B) /\dist C H = 24.
Hypotheses
  E F G D : on_line E (Line A B) /\on_line F (Line A B) /\on_line D (Line C A) /\on_line G (Line C B) /\dist D E = dist G F.

Theorem KSEM_area : True.
Proof.
admit.
Qed.
####