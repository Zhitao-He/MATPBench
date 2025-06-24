####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section ShadedRegionArea.

Variable R : realType.

(* Define points and distances *)
Variable O : 'rV[R]_2.
Variable OC : R := 32%:R.
Variable CB : R := 36%:R.
Variable C : 'rV[R]_2 := O + (OC, 0)%R.
Variable B : 'rV[R]_2 := C + (CB, 0)%R.
Variable K : 'rV[R]_2 := (O.1 - (OC / 2), 0)%R.
Variable M : 'rV[R]_2 := (C.1 + (CB / 2), 0)%R.

(* Define radii of semicircles *)
Variable r1 : R := (OC / 2)%:R.
Variable r2 : R := ((OC + CB) / 2)%:R.
Variable r3 : R := (CB / 2)%:R.

(* Area of a semicircle *)
Definition semicircle_area (r : R) := (PI * r^+2) / 2.

(* Theorem to prove the shaded area is 900\pi *)
Theorem shaded_area_is_900pi :
  semicircle_area r2 - (semicircle_area r1 + semicircle_area r3) = 900 * PI.
Proof. Admitted.

End ShadedRegionArea.
####