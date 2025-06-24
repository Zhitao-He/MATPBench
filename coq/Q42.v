From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals sequences analysis.

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

(* Define differentiability (simplified for illustration) *)
Definition differentiable_at (x : R) (g : R -> R) : Prop :=
  exists (l : R), forall h, h <> 0 -> (g (x + h) - g x) / h --> l as h --> 0.

(* Theorem: The function f is not differentiable at every point (simplified) *)
Theorem f_not_differentiable_everywhere :
  forall x, ~ differentiable_at x (fun y => match f y data_points with Some z => z | None => 0 end).
Proof.
(* Here you would need to prove the theorem using appropriate tactics and reasoning. *)
(* This might involve showing that the function has corners or discontinuities in its derivative. *)
(* For simplicity, this proof is omitted and marked as Admitted. *)
Admitted.
####