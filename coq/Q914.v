####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit Defensive.

Local Open Scope ring_scope.

Section quadrilateral_perimeter.

Variable R : realType.
Variables A B C N : 'rV[R]_2.
Hypotheses
  AB_eq_3      : norm (B - A) = 3,
  AC_eq_BN     : norm (A - C) = norm (B - N),
  CB_eq_NA     : norm (C - B) = norm (N - A),
  angle_BNA_62 : let v1 := B - N in let v2 := A - N in
                   acos ((v1 *m v2^T) / (norm v1 * norm v2)) = 62%:R * PI / 180,
  AB_perp_BN   : let v1 := B - A in let v2 := N - B in v1 *m v2^T = 0.

Theorem perimeter_quadrilateral_ACNB :
  norm (A - C) + norm (C - N) + norm (N - B) + norm (B - A)
    = 6 * tan (7%:R * PI / 45) + 6.
Proof.
  (* proof omitted *)
Admitted.

End quadrilateral_perimeter.
####