####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section AngleFOGA.

Variable R : realType.
Implicit Types (A B C D E F G O : 'rV[R]_2).

Hypothesis ABC_noncollinear : forall (A B C : 'rV[R]_2), colinear A B C = false.

Variables A B C : 'rV[R]_2.
Hypothesis H_ABC_noncollinear : colinear A B C = false.

(* O is the circumcenter of triangle ABC *)
Variable O : 'rV[R]_2.
Hypothesis HO_circumcenter : 
  forall r : R, r > 0 -> 
    dist O A = r /\ dist O B = r /\ dist O C = r.

(* l is a line through O, meeting AB at D and AC at E *)
Variable l : {l : line R & on_line l O}.
Variable D : 'rV[R]_2.
Hypothesis HD_on : on_line (projT1 l) D /\ between A D B.
Variable E : 'rV[R]_2.
Hypothesis HE_on : on_line (projT1 l) E /\ between A E C.

(* F is the midpoint of BE *)
Definition F : 'rV[R]_2 := (B + E) / 2%:R.

(* G is the midpoint of CD *)
Definition G : 'rV[R]_2 := (C + D) / 2%:R.

Theorem angle_FOG_eq_angle_A :
  angle F O G = angle B A C.
Proof. Admitted.

End AngleFOGA.
####