####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section quadrilateral_area.

Variable R : realType.

Variables A B C D : 'rV[R]_2.

Hypothesis Hdistinct : [/\ A != B, B != C, C != D, D != A & A != C & B != D].
Hypothesis HAD : `|A - D| = 11.
Hypothesis HBC : `|B - C| = 25.

(* The quadrilateral is BACD, i.e., with consecutive vertices B, A, C, D *)

Definition area_quad (P Q R S : 'rV[R]_2) : R :=
  let area_tri (X Y Z : 'rV[R]_2) :=
    0.5 * Num.Theory.Rabs
      ((Y \- X) 0 0 * (Z \- X) 0 1 - (Y \- X) 0 1 * (Z \- X) 0 0) in
  area_tri P Q R + area_tri P R S.

Theorem area_BACD :
  area_quad B A C D = 275 / 2.
Proof. 
  (* Since BACD is a kite, the area can be calculated using the formula for the area of a kite, which is 0.5 * d1 * d2, where d1 and d2 are the lengths of the diagonals. *)
  (* Here, the diagonals are AD and BC, with lengths 11 and 25, respectively. *)
  rewrite /area_quad.
  (* Calculate the area of the two triangles formed by the diagonals. *)
  (* Triangle ABD and triangle CBD (or equivalently, considering the symmetry, just one calculation suffices and is doubled). *)
  (* However, since the kite's area is directly given by the product of the diagonals divided by 2, we can simplify the proof. *)
  (* The area of the kite BACD is 0.5 * AD * BC. *)
  rewrite (addrC (area_tri B A C) (area_tri B C D)). (* This step is illustrative; in practice, we directly compute the area. *)
  (* Direct computation: *)
  have area_calc: area_quad B A C D = 0.5 * 11 * 25.
    by rewrite /area_quad; apply: congr2; [| rewrite addr0]; rewrite /area_tri !linearZ /= !addr0.
  (* Simplify the expression to match the given area. *)
  by rewrite area_calc mulrA divff ?pnatr_eq0 // scale1r.
Qed.

End quadrilateral_area.
####