####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals pi.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem cylindrical_pipe_weight :
  let outer_radius := 2.1 in    (* in cm *)
  let inner_radius := 1.8 in    (* in cm *)
  let length := 13 in           (* in cm *)
  let density := 53 in          (* g/cm^3 *)
  let pi_val := PI in           (* mathematical constant π *)
  let volume := pi_val * (outer_radius^2 - inner_radius^2) * length in
  let weight := density * volume in
  (`[\/ (RtoR1 weight >= 632.95) & (RtoR1 weight <= 633.05)]).
Proof. Admitted.
####