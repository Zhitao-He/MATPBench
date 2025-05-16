####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem rhombus_semicircle_area_ab
  :
  let r := 10%:R in
  exists (A B C D P Q : 'cV[R]_2)
         (a b : nat),
    (* A, B, C, D are vertices of a rhombus with sides AB, BC, CD, DA *)
    rhombus A B C D /\
    (* Diagonals: AC and BD; AC is a symmetry axis *)
    symmetric_about_line (line_through A C) (semicircle (midpoint P Q) r) /\
    (* Points P and Q lie on BC and CD, respectively, and PQ is a diameter of the semicircle *)
    on_line P (line_through B C) /\
    on_line Q (line_through C D) /\
    distance P Q = 2 * r /\
    (* The semicircle of diameter PQ is inscribed in the rhombus,
       tangent to the arc at two distinct points *)
    inscribed_semicircle_rhombus A B C D P Q r /\
    (* Angle at vertex B: angle CBA = 60 degrees *)
    angle
####