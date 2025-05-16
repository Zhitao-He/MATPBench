####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit Defensive.

Section angle_configuration.

Variable R : realType.
Variables A B C D E F G H : 'rV[R]_2.
Hypotheses
  col_F_B_G       : colinear [:: F; B; G],
  col_H_B_G       : colinear [:: H; B; G],
  col_C_G_E       : colinear [:: C; G; E],
  col_A_G_E       : colinear [:: A; G; E],
  col_D_B_F       : colinear [:: D; B; F],
  parallel_AB_CD  : parallel (line B G) (line D A),
  parallel_HB_CE  : parallel (line H B) (line C E),
  angle_EGB_55    : angle E G B = 55%:R * PI / 180,
  angle_BGE_x     : exists x, angle B G E = x,
  angle_HBF_y     : exists y, angle H B F = y.

Theorem value_of_y :
  let y := proj1_sig (constructive_indefinite_description _ angle_HBF_y) in
  y = 125%:R * PI / 180.
Proof.
  (* proof omitted *)
Admitted.

End angle_configuration.
####