####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Geometry_PCF_Theorem.

Variable R : realType.

Variables A B C D E F P : 'rV[R]_2.

Hypothesis AD_col : colinear A D C.
Hypothesis AD_on : (between A D C).
Hypothesis AD_len : `|A - D| = 15.
Hypothesis PF_col : colinear P F E.
Hypothesis PF_on : (between P F E).
Hypothesis PF_len : `|P - F| = 6.
Hypothesis AB_col : colinear A B C.
Hypothesis AB_on : (between A B C).
Hypothesis AF_col : colinear A F E.
Hypothesis AF_on : (between A F E).

Hypothesis P_in : 
  (exists alpha beta : R, 0 < alpha < 1 /\ 0 < beta < 1 /\ 
    P = (1-alpha)*B + alpha*F /\ 
    colinear B P F /\
    colinear C P E /\
    colinear D P F /\
    colinear B P D).

Theorem geometry_PC_length :
  `|P - C| = 12.
Proof. Admitted.

End Geometry_PCF_Theorem.
####