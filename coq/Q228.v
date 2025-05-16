####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem hyperbola_equation_characterization :
  forall x y, (y^+2 / 16 - x^+2 / 25 = 1) <->
    ((y = 4 /\x = 0) \/ (y = -4 /\x = 0) \/
     (forall x0, x0 <> 0 -> exists δ, δ > 0 /\
        ((forall h, 0 < h < δ -> exists yp, yp^+2 / 16 - (x0 + h)^+2 / 25 = 1 /\`|yp - (4/5)*(x0 + h)| < 1) /\
         (forall h, 0 < h < δ -> exists ym, ym^+2 / 16 - (x0 + h)^+2 / 25 = 1 /\`|ym + (4/5)*(x0 + h)| < 1)))) .
Proof.
admit.
Qed.
####