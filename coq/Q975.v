####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section QuadrilateralReflectionPerpendicularity.

Variable R : realType.

(* Points of the plane *)
Variables A B C D : 'rV[R]_2.

(* Circle k with center O and diameter BD, so O = (B + D) / 2 *)
Let O := ((B + D) / 2)%R.
Let k := fun P : 'rV[R]_2 => ((P - O) *m (P - O)^T) == ((B - O) *m (B - O)^T).

Hypothesis ABCD_cyclic : [/\ k A, k B, k C, k D & B != D].

(* Reflections *)
Let BD_line := [line B, D].
Let A' := reflection BD_line A.
Let AC_line := [line A, C].
Let B' := reflection AC_line B.

(* Intersections *)
Let DB'_line := [line D, B'].
Let CA'_line := [line C, A'].

Hypothesis AC_nonparallel_DB' : ~~ colinear A C D B'.
Hypothesis DB_nonparallel_CA' : ~~ colinear D B C A'.

Let Q := intersection_point AC_line DB'_line.
Let DB_line := [line D, B].
Let P := intersection_point DB_line CA'_line.

Theorem quadrilateral_reflection_perpendicular :
  let PQ_line := [line P, Q] in
  let AC_line := [line A, C] in
    is_perpendicular PQ_line AC_line.
Proof. Admitted.

End QuadrilateralReflectionPerpendicular.
####