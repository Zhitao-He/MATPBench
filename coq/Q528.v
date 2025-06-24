####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section RightTriangleSideLength.

Variable R : realType.

(* Points A, B, and C in the plane *)
Variables A B C : R * R.

(* Hypotheses *)
Hypothesis right_angle_at_C : (A.2 = C.2 + 6) /\ (A.1 = C.1). (* AC is vertical, length 6 *)
Hypothesis point_B_properties : (B.2 = C.2) /\ (B.1 > C.1). (* BC is horizontal, extending to the right *)
Hypothesis hypotenuse_AB : (A.1 - B.1)^+2 + (A.2 - B.2)^+2 = 10^2. (* AB = 10 *)
Hypothesis leg_AC : (A.1 - C.1)^+2 + (A.2 - C.2)^+2 = 6^2. (* AC = 6 *)

(* Theorem to prove: BC = x = 8 *)
Theorem right_triangle_side_length :
  let x := (B.1 - C.1)^+2 + (B.2 - C.2)^+2 in
  x = 8^2.
Proof. Admitted.

End RightTriangleSideLength.
####