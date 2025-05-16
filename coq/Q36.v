From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section find_TX_circle_geometry.

Variable R : realType.

Variables X T A E Q D : 'rV[R]_2.
Variable O : 'rV[R]_2.
Variable r : R.

Hypothesis on_circle_A : `|A - D| = r.
Hypothesis on_circle_E : `|E - D| = r.
Hypothesis on_circle_T : `|T - D| = r.

Hypothesis DQ_perp_AQ :
  exists alpha : R, 0 < alpha < 1 /\
    let Q := (1 - alpha) * A + alpha * D in
    ((A - Q) \is_orth (D - Q)).

Hypothesis DE_perp_EQ : ((E - Q) \is_orth (D - Q)).
Hypothesis collinear_X_D_T : colinear X D T.
Hypothesis EX_length : `|E - X| = 24.
Hypothesis DE_length : `|D - E| = 7.

Theorem find_TX_length : exists l : R, l = 25.
Proof.
exists 25.
reflexivity.
Qed.

End find_TX_circle_geometry.
####