####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables Q R S T X Y : 'rV[R]_2.
Variable x : R.

Hypothesis H_QR : `|Q - R| = 22.
Hypothesis H_XY : `|X - Y| = 15.
Hypothesis H_midsegment : midsegment X Y Q T S R.
Hypothesis H_parallel_QR_TS : parallel Q R T S.

Theorem find_TS_length : `|T - S| = 8.
Proof.
  (* Using midsegment properties of trapezoids *)
  have H_midsegment_property : `|X - Y| = (`|Q - R| + `|T - S|) / 2 by apply: midsegment_property_length.
  rewrite H_QR H_XY in H_midsegment_property.
  (* Solve for |T - S| *)
  have H_eq : 15 = (22 + `|T - S|) / 2 by field in H_midsegment_property.
  by rewrite H_eq; field.
Qed.
####