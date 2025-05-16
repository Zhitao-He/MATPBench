####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variables A B C D E F G : R * R.

Hypotheses
  AB_vert : fst A = fst B /\snd A - snd B = 5 /
  BC_vert : fst B = fst C /\snd B - snd C = 2 /
  AC_vert : fst A = fst C /\snd A - snd C = 7 /
  AF_horiz : snd F = snd A /\fst F - fst A = 1 /
  CD_horiz : snd C = snd D /\fst D - fst C = 3 /
  DE_horiz : snd D = snd E /\fst E - fst D = -2.

Theorem compute_EG_FG :
  exists EF_length FG_length,
    EF_length = 4 /
    FG_length = 3.
Proof.
admit.
Qed.
####