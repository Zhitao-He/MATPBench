####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section IncenterTangencyBisect.

Variable R : realType.

(* Points *)
Variables A B C : 'rV[R]_2.

(* Assume A, B, C are not collinear *)
Hypothesis Hnoncol : ~ colinear [:: A; B; C].

(* Circumcircle O *)
Variable O : 'rV[R]_2.
Variable rO : R.
Hypothesis HOcirc : forall P, P \in [:: A; B; C] -> norm (P - O) = rO.

(* Incenter I *)
Variable I : 'rV[R]_2.
Hypothesis HIncenter : incenter_spec A B C I.

(* Circle J tangent to AB at D, AC at E, tangent internally to O at F *)
Variable J : 'rV[R]_2.
Variable rJ : R.
Variables D E F : 'rV[R]_2.

(* Tangency at D and E *)
Hypothesis HDtang : D \in `[AB]%eline /\ norm (D - J) = rJ.
Hypothesis HEtang : E \in `[AC]%eline /\ norm (E - J) = rJ.

(* Internal tangency at F *)
Hypothesis HFtang : norm (F - J) = rJ /\ norm (F - O) = rO - rJ.

(* Points D, E, F lie on their respective lines *)
Hypothesis HDonAB : on_line D A B.
Hypothesis HEonAC : on_line E A C.
Hypothesis HFonO : on_line F O.

(* J is internally tangent to O at F *)
Hypothesis HInternaltangency : [< J - O, F - O >] = rO - rJ.

(* Theorem: IF bisects angle BFC *)
Theorem incenter_tangency_bisects :
  angle B F I = angle I F C.
Proof. Admitted.

End IncenterTangencyBisect.
####