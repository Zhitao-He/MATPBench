####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Triangle_Symmetric_Concyclic.

Variable R : realType.
Implicit Types A B C D E F P L M N G : 'e2gPoint R.

Hypothesis trABC : forall (A B C : 'e2gPoint R), ~ collinear A B C.

Variables A B C : 'e2gPoint R.
Hypothesis hABC : ~ collinear A B C.

(* Altitudes D from A to BC, E from B to CA, F from C to AB *)
Definition foot (P Q R : 'e2gPoint R) : 'e2gPoint R :=
  foot_on_line P Q R.

Let D := foot A B C.
Let E := foot B C A.
Let F := foot C A B.

Variable P : 'e2gPoint R.
Hypothesis hP_interior : in_triangle A B C P.

(* Symmetric points of P about the sides *)
Definition symmetric_about_line (X Y Z : 'e2gPoint R) :=
  let L := midpoint Y Z in
  (vec_to X) +: (vec_to X - 2%:R *: (proj_coord (vec_to X - vec_to Y) (vec_to Z - vec_to Y) / norm2 (vec_to Z - vec_to Y)) *: (vec_to Z - vec_to Y)).

Let L := symmetric_about_line P B C.
Let M := symmetric_about_line P C A.
Let N := symmetric_about_line P A B.

Let G := midpoint A P.

Theorem triangle_symmetric_concyclic_cond :
  (concyclic D E G F) <-> (concyclic A M L N).

Proof. Admitted.

End Triangle_Symmetric_Concyclic.
####