####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals normedtype euclidean_geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit Defensive.

Local Open Scope ring_scope.

Section quadrilateral_z_value.

Variable R : realType.
Theorem value_of_z_in_quadrilateral :
  forall (A B C D : 'rV[R]_2),
    let y := norm (D - A) in
    let x := norm (C - B) in
    let z := norm (D - B) in
    norm (A - B) = 18 -> inner (A - B) (D - A) = 0 ->
    (* Triangle ABC right at C with ∠ABC = 45° *)
    inner (B - C) (A - C) = 0 /\n    (let v := B - C in let w := A - C in
      acos ((v *m w^T) / (norm v * norm w)) = 45%:R * PI / 180) ->
    (* ∠BAD = 60° *)
    let u := B - A in let v := D - A in
      acos ((u *m v^T) / (norm u * norm v)) = 60%:R * PI / 180 ->
    z = 6.
Proof.
  (* proof omitted *)
Admitted.

End quadrilateral_z_value.
####