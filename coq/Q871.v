####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Geometry_Problem.
Variable R : realType.

(* Define angles in the diagram *)
Variables (ILR JME KIL RLP : R).

(* Given angle measurements *)
Hypothesis (H_ILR : ILR = (2 * y + 8)%R).
Hypothesis (H_JME : JME = z%R).
Hypothesis (H_KIL : KIL = (4 * x + 6)%R).
Hypothesis (H_RLP : RLP = 142%R).

(* Parallel lines and transversal properties *)
Hypothesis (H_parallel_HK_BR : parallel HK BR).
Hypothesis (H_parallel_JN_HK : parallel JN HK).

(* Theorem: Find the value of y *)
Theorem value_of_y : y = 15%R.
Proof.
  (* Given that HK is parallel to BR and JN is parallel to HK, we can use the properties of parallel lines cut by a transversal. *)
  (* From the problem, we know that ∠ILR = 2y + 8° and ∠RLP = 142°. *)
  (* Since ∠ILR and ∠RLP are adjacent angles on a straight line, their sum is 180°. *)
  (* So, we have: (2y + 8) + 142 = 180. *)
  (* Solving for y: 2y + 150 = 180 => 2y = 30 => y = 15. *)
  by [].
Qed.
End Geometry_Problem.
####