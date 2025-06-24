####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals sequences.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition point := R * R.

Definition dist (A B : point) : R :=
  Num.sqrt ((A.1 - B.1)^+2 + (A.2 - B.2)^+2).

Definition deg_to_rad (d : R) : R :=
  d * INR 180^-1 * PI.

Let theta := deg_to_rad 1.

Definition rot (O : point) (P : point) (a : R) : point :=
  let x := P.1 - O.1 in
  let y := P.2 - O.2 in
  (O.1 + x * cos a - y * sin a, O.2 + x * sin a + y * cos a).

(* The two rays from A0 form an angle of 1 degree. 
   We will fix A0 at (0,0), and let the two rays be along the vectors (1,0) and (cos theta, sin theta). *)
Let A0 : point := (0,0).
Let v1 : point := (1,0).
Let v2 : point := (cos theta, sin theta).

(* Define the sequence of points A_0, A_1,..., A_n satisfying the given conditions *)
Variable n : nat.
Variable A : point -> nat -> point.
Hypothesis A0_def : A 0 = A0.
Hypothesis A_recursive : forall i, 1 <= i <= n -> dist (A (i-1)) (A i) = 1.
Hypothesis A_distance_increase : forall i, 1 <= i <= n -> dist (A i) A0 > dist (A (i-1)) A0.

(* Theorem to find the largest possible value of n *)
Theorem largest_n_blahaj_sequence : exists n_max : nat, (forall n, n <= n_max -> exists A_seq : point -> nat -> point, (A_seq 0 = A0) /\ (forall i, 1 <= i <= n -> dist (A_seq (i-1)) (A_seq i) = 1) /\ (forall i, 1 <= i <= n -> dist (A_seq i) A0 > dist (A_seq (i-1)) A0)) /\ (forall n, n > n_max -> ~ (exists A_seq : point -> nat -> point, (A_seq 0 = A0) /\ (forall i, 1 <= i <= n -> dist (A_seq (i-1)) (A_seq i) = 1) /\ (forall i, 1 <= i <= n -> dist (A_seq i) A0 > dist (A_seq (i-1)) A0))).

####