####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variables F A N D W B C : 'rV[R]_2.

Hypotheses
  HFA        : norm (A - F) = 10;
  HW_on_FA   : exists x, 0 < x /\norm (W - F) = x /\norm (A - W) = 4 /\x + 4 = 10;
  HNFAD_conv : is_convex_quad N F A D;
  H_similar  : is_quadrilateral B F W C /\
               similar_quadrilaterals (mkQuad B F W C) (mkQuad N F A D);
  Hdistinct  : uniq [:: N; F; A; D; B; W; C].

(* Derive the ratio of similarity from the given information. *)
(* Since quadrilaterals BFWC and NFAD are similar, the ratio of their corresponding sides is constant. *)
(* Given FA = 10, FW = x, WA = 4, and FW + WA = FA => x + 4 = 10 => x = 6. *)
(* The ratio of similarity is the ratio of corresponding sides, e.g., FW:FA or WA:NF. *)
(* Since FW = 6 and FA = 10, the ratio is 6:10 = 3:5. *)

Theorem similarity_ratio : exists ratio, ratio = 3 / 5 /\ ratio = norm (W - F) / norm (A - F).
Proof.
  exists (3 / 5). (* The ratio of similarity is 3/5 as given in the NL_statement. *)
  rewrite /ratio.
  (* Show that norm (W - F) = 6 and norm (A - F) = 10, so the ratio is 6/10 = 3/5. *)
  split; [done |].
  (* Derive norm (W - F) = 6 from the given conditions. *)
  move: HW_on_FA => [x [Hx_pos [HFW [HAW [Hx_plus_4 Hx_plus_4_eq_10]]]]].
  rewrite HFW HAW Hx_plus_4_eq_10.
  (* Since x + 4 = 10, x = 6. *)
  (* Therefore, norm (W - F) = 6 and norm (A - F) = 10, so the ratio is 6/10 = 3/5. *)
  by [].
Qed.
####