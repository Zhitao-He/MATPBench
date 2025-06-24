theory Rectangle_Angle_DEB
  imports Main
begin
locale rectangle_geometry =
  fixes A B C D E :: "'point"
  assumes rectangle_ABDC: "quadrilateral A B D C ∧
                           (segment A B) ⟂ (segment B D) ∧
                           (segment B D) ⟂ (segment D C) ∧
                           (segment D C) ⟂ (segment C A) ∧
                           (segment C A) ⟂ (segment A B) ∧
                           (length (segment A B) = length (segment D C)) ∧
                           (length (segment B D) = length (segment C A))"
    and E_diagonal_intersection: "E = intersection (line A C) (line B D)"
    and angle_EAB_40: "angle E A B = 40"
begin
definition angle_DEB :: "real" where
  "angle_DEB = angle D E B"
end
theorem (in rectangle_geometry) angle_DEB_is_80:
  "angle_DEB = 80"
  unfolding angle_DEB_def
  sorry
end