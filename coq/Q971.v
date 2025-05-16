####
From mathcomp Require Import all_ssreflect all_field.
From mathcomp Require Import geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Tangent_Parallelogram.

Variable R : realFieldType.

Variable A C O P E F B D : 'rV[R]_2.

Hypothesis Hdistinct : [/\ A != C, C != O, P != C, E != F, P != E, P != F, A != O & A != P].

Hypothesis Hcircle : circle O A C.

Hypothesis Hdiam : midpoint O A C.

Hypothesis Htangent_PC_C : tangent (line P C) (circleT O (dist O A)) C.

Hypothesis Hsecant_PEF : colinear P E F /\ E != F /\ E \in circleT O (dist O A) /\ F \in circleT O (dist O A).

(* B is intersection of AE and PO *)
Hypothesis HB : exists l1 l2, line_through A E = l1 /\ line_through P O = l2 /\ B = intersection l1 l2 /\ ~ colinear A E P.

(* D is intersection of AF and PO *)
Hypothesis HD : exists l3 l4, line_through A F = l3 /\ line_through P O = l4 /\ D = intersection l3 l4 /\ ~ colinear A F P.

Theorem tangent_quadrilateral_parallelogram :
  parallelogram B A C D.
Proof. Admitted.

End Tangent_Parallelogram.
####