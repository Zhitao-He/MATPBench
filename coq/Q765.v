####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_ABY_right_value_x :
  forall (A B Y : 'e2g R),
    B <> Y ->
    [/\ 
      let x := `|A - B| in
      let s := `|B - Y| in
      let h := `|A - Y| in
      h = 8,
      [/\ [angle A B Y] = pi/2,
          colinear [::A;B;Y] = false
      ],
      x = 4 * sqrt 2
    ].
Proof. Admitted.
####