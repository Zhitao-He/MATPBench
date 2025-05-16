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

Hypotheses
  (* A, B, C are distinct points *)
  (ABC_dist : [/\ A != B, B != C, C != A])
  (* O is the circumcenter of triangle ABC *)
  (O_circum : colinear (A - O) (B - O) = false /\ colinear (B - O) (C - O) = false /\ colinear (C - O) (A - O) = false /\
              norm (A - O) = norm (B - O) /\ norm (B - O) = norm (C - O))
  (* P lies on the circle through A, B, C with center O *)
  (P_on_circum : norm (P - O) = norm (A - O))
  (* D is the foot of the perpendicular from P to BC *)
  (D_on_BC : exists tD : R, D = B + tD *:(C - B))
  (PD_perp_BC : (P - D) \dot (C - B) = 0)
  (* E is the foot of the perpendicular from P to CA *)
  (E_on_CA : exists tE : R, E = C + tE *:(A - C))
  (PE_perp_CA : (P - E) \dot (A - C) = 0)
  (* F is the foot of the perpendicular from P to AB *)
  (F_on_AB : exists tF : R, F = A + tF *:(B - A))
  (PF_perp_AB : (P - F) \dot (B - A) = 0).

Theorem simson_line :
  colinear D E F.
Proof. Admitted.

End SimsonLine.
####