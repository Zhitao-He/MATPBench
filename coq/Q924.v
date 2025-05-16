####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals normedtype euclidean_geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit Defensive.

Local Open Scope ring_scope.

Section triangle_perp_two_legs.

Variable R : realType.
Theorem triangle_ABG_x_value :
  forall (A B G : 'I_3 -> R),
    let x := sqrt ((A 0 - G 0)^2 + (A 1 - G 1)^2) in
    let y := sqrt ((B 0 - G 0)^2 + (B 1 - G 1)^2) in
    let AB := sqrt ((A 0 - B 0)^2 + (A 1 - B 1)^2) in
    A 0 = G 0 -> B 1 = G 1 -> AB = 10 ->
    (* right angle at G *) inner (A - G) (B - G) = 0 ->
    x + y = 14.
Proof.
  (* proof omitted *)
Admitted.

End triangle_perp_two_legs.
####