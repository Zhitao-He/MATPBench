####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit Defensive.

Local Open Scope ring_scope.

Section square_and_vertical.

Variable R : realType.
Variables A B C D E F : 'rV[R]_2.
Hypothesis square_EFCD :
  colinear E F C /\colinear E D C /\n  (det (F - E) (C - F) = 0) /\(det (C - F) (D - C) = 0) /\n  (det (D - C) (E - D) = 0) /\(det (E - D) (F - E) = 0) /\n  `|F - E| = `|C - F| /\`|C - F| = `|D - C| /\`|D - C| = `|E - D|.
Hypothesis right_angles_EFCD :
  angle E F C = PI/2 /\angle F C D = PI/2 /\n  angle C D E = PI/2 /\angle D E F = PI/2.
Hypothesis F_vertical_AB :
  F.[0] = A.[0] /\F.[1] > A.[1].

Theorem F_lies_above_A :
  True.
Proof.
  (* proof omitted *)
Admitted.

End square_and_vertical.
####