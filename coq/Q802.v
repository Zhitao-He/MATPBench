####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals angles geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Angle_IFJ_Theorem.

Variable Point : Type.

Variables A B C D E F H I J K L O : Point.

(* Collinearities and given angles, extracted from the diagram *)
Hypothesis collinear_L_D_C : collinear L D C.
Hypothesis collinear_H_O_J : collinear H O J.
Hypothesis collinear_A_D_O_E : collinear A D O E.
Hypothesis collinear_B_I_F_K : collinear B I F K.

Hypothesis D_between_L_C : between L D C.
Hypothesis O_between_H_J : between H O J.
Hypothesis D_between_A_O : between A D O.
Hypothesis I_between_B_F : between B I F.
Hypothesis F_between_I_J : between I F J.
Hypothesis O_between_D_E : between D O E.
Hypothesis F_between_O_K : between O F K.

Hypothesis angle_LDI_104 : angle L D I = 104.
Hypothesis angle_HOF_118 : angle H O F = 118.

Theorem value_of_angle_IFJ :
  angle I F J = 62.
Proof. Admitted.

End Angle_IFJ_Theorem.
####