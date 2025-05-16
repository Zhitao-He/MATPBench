####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry euclid.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem quadrilateral_ac_integer_lengths_count :
  let AB := 4%:R in
  let BC := 7%:R in
  let CD := 10%:R in
  let DA := 5%:R in
  (* The points must be not collinear as described *)
  (forall (A B C D : 'rV[R]_2),
      A != B -> B != C -> C != D -> D != A ->
      ~ colinear A B C -> ~ colinear A D C ->
      dist A B = AB ->
      dist B C = BC ->
      dist C D = CD ->
      dist D A = DA ->
      (* The set of possible integer values for AC = k, over all such quadrilaterals (with all triangle inequalities satisfied) *)
      let S := [set k : nat | exists (A B C D : 'rV[R]_2),
                                A != B /\ B != C /\ C != D /\ D != A /\
                                ~ colinear A B C /\ ~ colinear A D C /\
                                dist A B = AB /\ dist B C = BC /\ dist C D = CD /\ dist D
####