####
From Coquelicot Require Import Coquelicot.
Open Scope R_scope.

Definition f (x : R) := Rabs (2 * x - 3) + 1.

Lemma f_derivable_2 : derivable_pt f 2.
Proof.
  unfold f. apply derivable_pt_abs.
  - apply derivable_pt_plus; apply derivable_pt_mult || apply derivable_pt_id || apply derivable_pt_const.
  - replace (2 * 2 - 3) with 1 by lra. lra.
Qed.

Lemma f_derivable_5 : derivable_pt f 5.
Proof.
  unfold f. apply derivable_pt_abs.
  - apply derivable_pt_plus; apply derivable_pt_mult || apply derivable_pt_id || apply derivable_pt_const.
  - replace (2 * 5 - 3) with 7 by lra. lra.
Qed.

Lemma f_deriv_value_2 : derive_pt f 2 f_derivable_2 = 2.
Proof.
  unfold f. unfold derive_pt.
  rewrite Derive_plus.
  - rewrite Derive_abs.
    + field.
    + replace (2 * 2 - 3) with 1 by lra. lra.
  - auto.
  - auto.
Qed.

Lemma f_deriv_value_5 : derive_pt f 5 f_derivable_5 = 2.
Proof.
  unfold f. unfold derive_pt.
  rewrite Derive_plus.
  - rewrite Derive_abs.
    + field.
    + replace (2 * 5 - 3) with 7 by lra. lra.
  - auto.
  - auto.
Qed.
####