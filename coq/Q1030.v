####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section SimsonLine.

Variable R : realType.

(* Points and predicates *)
Variables A B C O P D E F : 'rV[R]_2.

(* Hypotheses *)
Hypothesis ABC_distinct : [/\ A != B, B != C, C != A].
Hypothesis O_circumcenter : 
  [/\ ~ colinear (A - O) (B - O), 
      ~ colinear (B - O) (C - O), 
      ~ colinear (C - O) (A - O), 
      norm (A - O) = norm (B - O), 
      norm (B - O) = norm (C - O)].
Hypothesis P_on_circumcircle : norm (P - O) = norm (A - O).

(* D is the foot of the perpendicular from P to BC *)
Hypothesis D_on_BC : exists tD : R, D = B + tD *:(C - B).
Hypothesis PD_perp_BC : (P - D) \dot (C - B) = 0.

(* E is the foot of the perpendicular from P to CA *)
Hypothesis E_on_CA : exists tE : R, E = C + tE *:(A - C).
Hypothesis PE_perp_CA : (P - E) \dot (A - C) = 0.

(* F is the foot of the perpendicular from P to AB *)
Hypothesis F_on_AB : exists tF : R, F = A + tF *:(B - A).
Hypothesis PF_perp_AB : (P - F) \dot (B - A) = 0.

(* Theorem: D, E, and F are collinear *)
Theorem simson_line :
  colinear D E F.
Proof. Admitted.

End SimsonLine.
####