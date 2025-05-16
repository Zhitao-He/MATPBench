theory AngleBisectorTheorem
imports Main HOL.Euclidean_Geometry
begin

text ‹In triangle ABC, AD bisects angle BAC and meets BC at D. 
      DE bisects angle ADB and meets AB at E, while DF bisects angle ADC and meets AC at F.
      EF meets AD at G. BG intersects DF at M, and CG intersects DE at N. 
      Prove that the points M, A, and N are collinear, and MN perpendicular to AD.›

locale angle_bisector_construction =
  fixes A B C :: "real^2"
  assumes non_collinear_ABC: "¬collinear {A, B, C}"
  
  fixes D :: "real^2"
  assumes D_on_BC: "between B D C"
  and AD_bisects_BAC: "angle B A D = angle D A C"
  
  fixes E :: "real^2"
  assumes E_on_AB: "between A E B"
  and DE_bisects_ADB: "angle A D E = angle E D B"
  
  fixes F :: "real^2"
  assumes F_on_AC: "between A F C"
  and DF_bisects_ADC: "angle A D F = angle F D C"
  
  fixes G :: "real^2"
  assumes G_on_EF: "on_line_segment E F G"
  and G_on_AD: "on_line_segment A D G"
  
  fixes M :: "real^2"
  assumes M_on_BG: "on_line_segment B G M"
  and M_on_DF: "on_line_segment D F M"
  
  fixes N :: "real^2"
  assumes N_on_CG: "on_line_segment C G N"
  and N_on_DE: "on_line_segment D E N"

context angle_bisector_construction
begin

theorem M_A_N_collinear_MN_perp_AD:
  "collinear {M, A, N} ∧ orthogonal (M - N) (A - D)"
  sorry

end

end