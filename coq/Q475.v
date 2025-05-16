####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigonometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points *)
Variables M N P R Q : 'rV[R]_2.

(* Variables appearing in side expressions *)
Variables x y z : R.

(* Hypotheses encoding the given lengths and angles from the diagram *)
Hypothesis HMN : dist M N = 3 * x - 4.
Hypothesis HNR : dist N R = 2 * y + 5.
Hypothesis HMR : dist M R = 18.
Hypothesis HNP : dist N P = 15.
Hypothesis HPR : dist P R = 20.
Hypothesis HMQ : dist M Q = 3 * z - 3.
Hypothesis HNQ : dist N Q = 12.
Hypothesis HNQangle : angle N Q M = 33%:R.
Hypothesis HMQangle : angle M Q R = 83%:R.
Hypothesis HMRangle : angle M R P = 38%:R.

Theorem value_of_y :
  y = 13 / 2.
Proof. Admitted.
####