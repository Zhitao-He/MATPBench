theory Geometry_Problem_Formalization
imports Main
begin
typedecl point
consts
  O :: point
  D :: point
  F :: point
  I :: point
  E :: point
  J :: point
  K :: point
consts
  Collinear :: "point ⇒ point ⇒ point ⇒ bool" 
  IsBetween :: "point ⇒ point ⇒ point ⇒ bool" 
  Parallel :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" 
  Angle :: "point ⇒ point ⇒ point ⇒ real" 
axiomatization where
  Collinear_ODE: "Collinear O D E" and
  Collinear_IFK: "Collinear I F K" and
  F_is_between_I_K: "IsBetween I F K" and
  Collinear_OFJ: "Collinear O F J" and
  F_is_between_O_J: "IsBetween O F J" and
  Distinct_O_F: "O ≠ F" and
  Distinct_O_E: "O ≠ E" and
  Distinct_F_E: "F ≠ E" and 
  Distinct_J_F: "J ≠ F" and
  Distinct_J_K: "J ≠ K" and
  Distinct_F_K: "F ≠ K" and 
  Distinct_I_F: "I ≠ F" and
  Distinct_I_J: "I ≠ J" and 
  Angle_FOE_is_118: "Angle F O E = 118" and
  Parallel_OD_FI: "Parallel O D F I" and
  Rule_Corresponding_Angles_Equality:
    "(Parallel O D F I) ⇒ (Collinear O D E) ⇒ (Collinear I F K) ⇒ (Collinear O F J) ⇒
     Angle F O E = Angle J F K" and
  Rule_Angles_On_Straight_Line_Sum_to_180:
    "(Collinear I F K) ⇒ (IsBetween I F K) ⇒ (¬ Collinear I F J) ⇒
     Angle I F J + Angle J F K = 180" and
  J_not_on_line_IFK: "¬ Collinear I F J"
end