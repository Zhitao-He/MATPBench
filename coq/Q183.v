####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Trapezoid_Median.

Variable R : realType.

Variables C D F G H E : R^2.

Hypothesis trapezoid_CDFG :
  exists l, l <> 0 /\ colinear C D l /\ colinear F G l /\ ~ colinear C G l.
Hypothesis HE_parallel_CD_GF :
  exists l, l <> 0 /\ colinear H E l /\ colinear C D l /\ colinear G F l /\
    exists a1 a2 b1 b2,
      H = (1 - a1) *: C + a1 *: G /\ E = (1 - a2) *: D + a2 *: F /\
      0 < a1 < 1 /\ 0 < a2 < 1.
Hypothesis H_on_CG_GE : exists a, 0 < a < 1 /\ H = (1 - a) *: C + a *: G.
Hypothesis E_on_DF_FE : exists b, 0 < b < 1 /\ E = (1 - b) *: D + b *: F.
Variable CD GF HE : R.
Hypothesis CD_length : CD = norm (D - C).
Hypothesis GF_length : GF = norm (G - F).
Hypothesis HE_length : HE = norm (E - H).

Theorem median_parallel_length : 2 * HE = CD + GF.
Proof.
admit.
Qed.

End Trapezoid_Median.
####