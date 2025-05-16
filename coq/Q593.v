####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem value_x_eq_2 :
  exists (S T U R V : 'rV[R]_2),
    (* S, T, U, R, V are points in the plane *)
    let x := (fun x : R =>
      [&&
        (* Right angles at S and U *)
        angle (R - S) (T - S) == (PI / 2)%:R,
        angle (V - U) (T - U) == (PI / 2)%:R,
        (* ST = 11x - 2, TU = 8x + 4, VR = ? (not in diagram), TV = 15x *)
        `|T - S| == 11 * x - 2,
        `|U - T| == 8 * x + 4,
        `|V - T| == 15 * x,
        (* S, T, U collinear and S ≠ T ≠ U, and S, T, U distinct *)
        colinear S T U
      ]) in
    x 2.
Proof. Admitted.
####