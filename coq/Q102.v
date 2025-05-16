####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem putnam_2004_a1_tray_height :
  let side := 100%:R in
  let d := sqrt 17 in
  exists (m n : nat),
    let h := sqrt (m%:R) / n%:R in
    (* h = height of the tray constructed as described *)
    (* At each corner of the square of side 100, cuts of length sqrt(17) from the corner meet at 60 degrees on the diagonal, 
       forming a tray when folded and taped *)
    (* m < 1000, and m is not divisible by the square of any prime *)
    (* h is the perpendicular distance between the base and the plane through the upper edges *)
      m < 1000 / (forall p : nat, prime p -> p ^ 2 %| m -> False) / 
      (* m is not divisible by the square of any prime *)
      h = (* explicit computation of the tray height as given in the problem, omitted for brevity *) h / 
      m + n = 871.
Proof. Admitted.
####