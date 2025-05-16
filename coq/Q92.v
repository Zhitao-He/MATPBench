####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section GeometryProblem.

Variable R : realType.

Variables A B C P D E F : 'rV[R]_2.

Hypotheses
  (Hneq : [/\ A != B, B != C, C != A ])
  (Hinside : inside_triangle A B C P)
  (HD_on_BC : on_line D B C)
  (HE_on_AC : on_line E A C)
  (HF_on_AB : on_line F A B)
  (HAPD_col : colinear A P D)
  (HBPE_col : colinear B P E)
  (HCPF_col : colinear C P F)
  (H_ap : dist A P = 6)
  (H_bp : dist B P = 9)
  (H_pd : dist P D = 6)
  (H_pe : dist P E = 3)
  (H_cf : dist C F = 20).

Theorem area_triangle_ABC_108 :
  area_triangle A B C = 108.
Proof. Admitted.

End GeometryProblem.
####