####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry euclidean.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section GeometryProblem.

Variable R : realType.

(* Definition of points *)
Variables A B C D O E F : 'rV[R]_2.

Hypotheses
  (* A, B, C are not collinear *)
  (HncolABC : ~ colinear A B C)
  (* O is the circumcenter of triangle ABC *)
  (HOcircum : circum_center A B C = O)
  (* D is in the interior of triangle ABC *)
  (HintD : in_triangle D A B C)
  (* ∠DAB = ∠DBC *)
  (Hangle1 : angle_vec (D - A) (B - A) = angle_vec (D - B) (C - B))
  (* ∠DAC = ∠DCB *)
  (Hangle2 : angle_vec (D - A) (C - A) = angle_vec (D - C) (B - C))
  (* E is the midpoint of AD *)
  (HEmid : E = (A + D) / 2)
  (* EF ⟂ AD, and F ∈ (extension of) CB ∩ EF *)
  (HEFdef : exists l : R, F = B + l * (C - B) /\ (F - E) \perp (A - D))
  (* Distinctness of points where needed *)
  (HAD : A <> D)
  (HEF : E <> F).

(* Angles defined with orientation at appropriate vertices *)

Theorem geometry_AFD_2_OFC :
  angle_vec (A - F) (D - F) = 2 * angle_vec (O - F) (C - F).
Proof. Admitted.

End GeometryProblem.
####