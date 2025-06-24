theory Triangle_TUV
  imports Main
begin
locale triangle =
  fixes U T V :: "'a"
  assumes distinct: "U ≠ T" "T ≠ V" "U ≠ V"
locale isosceles_triangle_TUV =
  triangle U T V +
  fixes angle_VTU :: real
  assumes sides_equal: "dist T V = dist T U"
    and angle_VTU_def: "angle_VTU = 74"
definition triangle_angle_sum :: "real ⇒ real ⇒ real ⇒ bool" where
  "triangle_angle_sum A B C ⟷ (A + B + C = 180)"
definition isosceles_base_angles :: "real ⇒ real ⇒ bool" where
  "isosceles_base_angles A B ⟷ (A = B)"
theorem angle_TUV_value:
  assumes "isosceles_triangle_TUV U T V"
  shows "∃A. isosceles_base_angles A A ∧ triangle_angle_sum 74 A A ∧ A = 53"
proof -
  have "triangle_angle_sum 74 A A ⟷ (74 + A + A = 180)" for A
    by (simp add: triangle_angle_sum_def)
  hence "74 + 2 * A = 180 ⟷ 2 * A = 106 ⟷ A = 53" by simp
  thus ?thesis
    by (rule exI[where x=53], simp add: isosceles_base_angles_def triangle_angle_sum_def)
qed
end