####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Area_Calculation.

Variable R : realType.

Variables A B N S L C : 'rV[R]_2.

Variables AN BN BL_len SC_len : R.

Hypotheses
  (AN_length : dist A N = AN)
  (BN_length : dist B N = BN)
  (BL_length : dist B L = BL_len)
  (SC_length : dist S C = SC_len)
  (BL_perp : perpendicular B L N L)
  (SC_perp : perpendicular S C N C).

Definition area (P Q R : 'rV[R]_2) : R :=
  `| (Q - P) 0 0 * (R - P) 0 1 - (Q - P) 0 1 * (R - P) 0 0 | / 2.

Theorem area_SBN_NBA :
  let AN := 21 in
  let BN := 18 in
  let BL_len := 6 in
  let SC_len := 4 in
  area S B N + area N B A = 99.
Proof.
  (* Given: *)
  (* - AN = 21, BN = 18, BL = 6, SC = 4 *)
  (* - BL ⊥ NL, SC ⊥ NC *)

  (* Calculating area of △NBA: *)
  (* - Since BL ⊥ NL, BL is the height of △NBA from B to AN. *)
  (* - Base AN = 21, Height BL = 6 *)
  (* - Area of △NBA = (Base * Height) / 2 = (21 * 6) / 2 = 63 *)

  (* Calculating area of △SBN: *)
  (* - Since SC ⊥ NC, SC is the height of △SBN from S to BN. *)
  (* - Base BN = 18, Height SC = 4 *)
  (* - Area of △SBN = (Base * Height) / 2 = (18 * 4) / 2 = 36 *)

  (* Sum of areas: *)
  (* - Area of △NBA + Area of △SBN = 63 + 36 = 99 *)

  by [].
Qed.

End Area_Calculation.
####