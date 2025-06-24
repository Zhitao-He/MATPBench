####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.
Require Import Reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Open Scope R_scope.

Variable R : realType.

(* Let r be the radius of each small semicircle *)
Theorem semicircle_logo_area :
  exists r : R,
    0 < r /\
    (* Perimeter of four small semicircles and one large semicircle *)
    (4 * PI * r + PI * 2 * r = 14 * PI) /\
    (* After enlargement by a factor of 5, the area of the sticker is (1225 * PI)/2 *)
    ( (5 ^ 2) * ( (PI * (2 * r)^2) / 2 + 4 * (PI * r^2 / 2) )
      = 1225 * PI / 2 ).
Proof. Admitted.
####