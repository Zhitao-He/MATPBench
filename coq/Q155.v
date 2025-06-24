####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Define points and the configuration as per the diagram: C, Q, Q', and segment relations *)
Variables (C Q Q' : 'rV[R]_2).

Hypotheses
  (* Q lies on the segment starting at C such that |CQ| = 5 *)
  (hQ : norm (Q - C) = 5) and
  (* Q' lies collinear with Q and C, on the same line, and |Q'Q| = x *)
  (hQ'col : exists k : R, Q' = Q + k *: (Q - C)) and
  (* The distance from C to Q' is |CQ'| = 20 *)
  (hQ'dist : norm (Q' - C) = 20) and
  (* The distance between Q and Q' along the line is |QQ'| = 15 *)
  (hQQ'dist : norm (Q' - Q) = 15) and
  (* The "x" in the diagram is the distance from Q' to Q *)
  (hxdef : let x := norm (Q' - Q) in x = 15).

(* Theorem: Prove that x = 15 *)
Theorem diagram_find_x :
  let x := norm (Q' - Q) in x = 15.
Proof.
  by rewrite hxdef.
Qed.
####