####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem geometry_wxyz_length_wx :
  forall (W X Y Z : R^2) (a : R),
    (* Given: Y is the midpoint of XZ (from the diagram's tick marks) *)
    Y = ((X + Z) / 2) ->
    (* Given: W, X, Y, Z are not collinear (form a triangle) *)
    W <> X -> W <> Z -> X <> Z ->
    (* WX = a+12, WZ = 4a-15 *)
    `|X - W| = a + 12 ->
    `|Z - W| = 4 * a - 15 ->
    (* Conclusion: WX = 21 *)
    `|X - W| = 21.
Proof. 
  move=> W X Y Z a HYmid WX_ne_W WZ_ne_W XZ_ne_Z.
  move=> WX_len WZ_len.
  (* Since WY is the perpendicular bisector of ZX, we have WX = WZ. *)
  have WX_eq_WZ: `|X - W| = `|Z - W|.
    by apply: perpendicular_bisector_property; rewrite HYmid.
  (* Substitute the given lengths into the equation. *)
  rewrite WX_len WZ_len in WX_eq_WZ.
  (* Solve for a: a + 12 = 4a - 15 => 3a = 27 => a = 9. *)
  have a_val: a = 9.
    by apply: (addrI (12)); rewrite addrAC -subr_eq addrN.
  (* Substitute a = 9 back into WX = a + 12. *)
  by rewrite a_val.
Qed.
####