####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import natdiv.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope nat_scope.

(* Define the size of the first row: odd integers from 1 to 99, so 50 entries *)
Definition n_rows := 50.

(* The triangular array T: T(i, j) is the j-th entry (0-based) of the i-th row (0-based), where row 0 is the top *)
Fixpoint T (i j : nat) : nat :=
  match i with
  | 0 => 2 * j + 1
  | S i' => T i' j + T i' (j + 1)
  end.

(* The domain of T: (i, j) with 0 <= i < n_rows, 0 <= j < n_rows - i *)

Definition in_triangle (i j : nat) : bool :=
  (i < n_rows)%nat && (j < (n_rows - i))%nat.

Theorem putnam_2003_a2 :
  \sum_(i < n_rows) \sum_(j < n_rows - i) ((67 %| T i j)%:nat) = 17.
Proof. Admitted.
####