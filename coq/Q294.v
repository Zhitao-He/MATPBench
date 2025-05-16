####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Let A := (0, 6) : R * R.
Let B := (0, 0) : R * R.
Let C := (8, 0) : R * R.
Let M := ((fst A + fst B)/2, (snd A + snd B)/2).
Let N := ((fst B + fst C)/2, (snd B + snd C)/2).
Definition collinear P Q R := (fst Q - fst P)*(snd R - snd P) = (snd Q - snd P)*(fst R - fst P).
Definition between P Q R := collinear P Q R /\((fst P <= fst Q <= fst R) / (fst R <= fst Q <= fst P) / (snd P <= snd Q <= snd R) / (snd R <= snd Q <= snd P)).

Definition line P Q := fun X => exists k, X.1 = fst P + k*(fst Q - fst P) /\X.2 = snd P + k*(snd Q - snd P).

Definition P_int := fst (xchoose (fun X => between A X C /\between B X D)).

Theorem intersection_exists : between A P_int C /\between B P_int D.
Proof.
admit.
Qed.
####