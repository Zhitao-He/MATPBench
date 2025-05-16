theory ArcFAD
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin
locale circle_geometry =
  fixes F :: "complex" 
  fixes E A D :: "complex" 
  assumes on_circle_E: "|E - F| = |A - F|" 
  assumes on_circle_A: "|A - F| = |D - F|" 
  assumes on_circle_D: "|D - F| = |A - F|" 
  assumes angle_EFA: "angle (E - F) (A - F) = 63 * pi / 180" 
context circle_geometry
begin
definition measure_of_arc :: "complex ⇒ complex ⇒ complex ⇒ real" where
  "measure_of_arc X Y Z = angle (X - Y) (Z - Y) * 180 / pi"
theorem arc_FAD_measure:
  "measure_of_arc F A D = 153"
proof -
  have angle_DFE: "angle (D - F) (E - F) = pi/2"
    using DF_perp_EF by (simp add: inner_product_def angle_def complex_inner_vector)
  have angle_DFA: "angle (D - F) (A - F) = angle (D - F) (E - F) + angle (E - F) (A - F)"
    by (simp add: angle_addition)
  have "angle (D - F) (A - F) = pi/2 + 63 * pi / 180"
    using angle_DFA angle_DFE angle_EFA by simp
  hence "angle (D - F) (A - F) = (90 + 63) * pi / 180"
    by (simp add: of_real_add)
  hence "angle (D - F) (A - F) = 153 * pi / 180"
    by simp
  have "measure_of_arc F A D = angle (F - A) (D - A) * 180 / pi"
    by (simp add: measure_of_arc_def)
  hence "measure_of_arc F A D = 153"
    using `angle (D - F) (A - F) = 153 * pi / 180` by simp
  thus ?thesis .
qed