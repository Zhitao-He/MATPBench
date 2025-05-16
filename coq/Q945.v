####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Putnam_Geometry_Theorem.

Variable R : realType.

(* Definition of points *)
Variables A B O C P D E F K : 'rV[R]_2.

Hypotheses
  (* AB is diameter of circle O *)
  (Ocenter : O = (A + B) / 2%:R)
  (Oncircle : norm (A - O) = norm (B - O))
  (* Circle O: center O, radius r = |A - O| *)
  (CircleO : forall X, norm (X - O) = norm (A - O) <-> X \in [set A; B; C; D])
  (* P is on the extension of AB, with B between A and P *)
  (Collinear_ABP : colinear [:: A; B; P])
  (Pnotbetween : '[B - A, P - B] > 0)
  (PB_not_zero : P != B)
  (* Line PC tangent to circle O at C *)
  (Tangency_PC_C : (norm (C - O) = norm (A - O)) /\
                   (colinear [:: P; C]) /\
                   (forall X, norm (X - O) = norm (A - O) -> [< P; X; C >] = 0 ->
                     X = C))
  (* D is the reflection of C about AB *)
  (Ddef : exists D', D = D' /\ (D' - ((A + B)/2%:R)) = - (C - ((A + B)/2%:R)))
  (* CE perpendicular to AD at E *)
  (Edef : exists E', E = E' /\
          (exists lambdac lambdaa, E' = C + lambdac * (E' - C)
                                      /\ E' = A + lambdaa * (D - A))
          /\ '[C - E', A - D] = 0)
  (* F is the midpoint of CE *)
  (Fdef : F = (C + E) / 2%:R)
  (* AF intersects circle O again at K (K ≠ A) *)
  (Kdef : exists t : R, t <> 0 /\ K = A + t * (F - A) /\ norm (K - O) = norm (A - O))
.

Theorem putnam_circumcircle_tangency :
  tangent (Line A P) (circumcircle P C K).
Proof. Admitted.

End Putnam_Geometry_Theorem.
####