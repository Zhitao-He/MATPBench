From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals sequences.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition data_points : seq (R * R) :=
  [:: (1991,27); (1993,30.5); (1997,34.5); (1999,36.5); (2001,34.5);
      (2003,27.5); (2005,23.5)].

Definition linear_interp (x x0 x1 y0 y1 : R) : R :=
  y0 + ((y1 - y0) / (x1 - x0)) * (x - x0).

Fixpoint f (x : R) (l : seq (R * R)) : option R :=
  match l with
  | [::] | [:: _] => None
  | (x0, y0) :: (x1, y1) :: t =>
    if (x >= x0) && (x <= x1) then Some (linear_interp x x0 x1 y0 y1)
    else f x ((x1, y1) :: t)
  end.

(* Example usage: Eval compute in (f 1994 data_points). *)

####