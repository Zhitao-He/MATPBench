theory Geometry_Problem_Secant_Angle
imports Main
begin
typedecl point
consts R S T U V B :: point
consts on_circle :: "point ⇒ point ⇒ bool" 
consts collinear_ordered :: "point ⇒ point ⇒ point ⇒ bool" 
consts is_external_to_circle :: "point ⇒ point ⇒ bool" 
consts angle_val :: "point ⇒ point ⇒ point ⇒ real" 
consts arc_val :: "point ⇒ point ⇒ point ⇒ real" 
axiomatization Geometric_Setup:
  S_on_circle_B: "on_circle B S" and
  U_on_circle_B: "on_circle B U" and
  T_on_circle_B: "on_circle B T" and
  V_on_circle_B: "on_circle B V" and
  R_U_V_collinear: "collinear_ordered R U V" and
  R_S_T_collinear: "collinear_ordered R S T" and
  R_is_external: "is_external_to_circle R B" and
  distinct_R_S: "R ≠ S" and distinct_R_U: "R ≠ U" and
  distinct_S_U: "S ≠ U" and distinct_T_V: "T ≠ V" and
  distinct_S_T: "S ≠ T" and distinct_U_V: "U ≠ V" and
  distinct_B_S: "B ≠ S" and distinct_B_U: "B ≠ U" and 
  distinct_B_T: "B ≠ T" and distinct_B_V: "B ≠ V" and
  distinct_R_B: "R ≠ B" and
  distinct_S_V: "S ≠ V" and distinct_U_T: "U ≠ T"
definition angle_SRU_measure :: real where
  "angle_SRU_measure = angle_val S R U" 
definition arc_TV_measure :: real where
  "arc_TV_measure = arc_val T V B" 
definition arc_SU_measure :: real where
  "arc_SU_measure = arc_val S U B" 
axiomatization Given_Numerical_Values:
  angle_SRU_is_23: "angle_SRU_measure = 23.0" and 
  arc_TV_is_68:    "arc_TV_measure = 68.0"    
axiomatization Secant_Secant_Angle_Theorem_Axiom:
  secant_theorem_applied:
    "2 * angle_SRU_measure = abs (arc_TV_measure - arc_SU_measure)"
theorem target_measure_of_arc_SU:
  "arc_SU_measure = 22.0"
end