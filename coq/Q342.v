####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Variables A B C D E O : 'rV[R]_2.

Hypotheses
  (regular_pentagon : let side := `|B - A|` in
     `|B - A| = `|C - B|` /
     `|C - B| = `|D - C|` /
     `|D - C| = `|E - D|` /
     `|E - D| = `|A - E|` /
     let angle_AB := angle_deg A B C in
     angle_AB = 108) (* Interior angle of regular pentagon *)
  (tangent_circle : let center := O in
     forall P, (P = D / P = A) ->
       let v := if P = D then D - C else A - B in
       (O - P) ** v = 0 /
       `|O - P|` ^+ 2 = `|O - D|` ^+ 2) (* Tangency conditions *)

Definition minor_arc_AD_deg := (* Calculate angle AOD in degrees *)
  let angle_AOD := angle_deg A O D in
  if angle_AOD < 180 then angle_AOD else 360 - angle_AOD.

Theorem minor_arc_AD_is_144 : minor_arc_AD_deg = 144.
Proof. Admitted.
####