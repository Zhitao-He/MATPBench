####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points in the plane *)
Variables A K O C M B : 'rV[R]_2.

(* Pi constant *)
Variable pi : R.
Axiom pi_def : 0 < pi.

(* Collinearity and order on x-axis (all points are collinear, left-to-right as in the diagram) *)
Hypotheses
  (H_collinear : exists v : 'rV[R]_2, forall P, P \in [::A;K;O;C;M;B] -> exists t : R, P = v + t *: row2 1 0)
  (H_order : forall (f : 'rV[R]_2 -> R),
                f = (fun P => P 0 0) ->
                f A < f K < f O < f C < f M < f B).

(* Centers of semicircles *)
Hypotheses
  (K_center_left : K = (A + O) / 2)
  (O_center_main : O = (A + C) / 2)
  (M_center_right : M = (C + B) / 2).

(* Linear distances specified *)
Hypotheses
  (H
####