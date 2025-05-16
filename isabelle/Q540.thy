theory GeometryProblem
imports Main Real 
begin
locale geometry =
  fixes S Q R T :: "real × real"
  assumes SQ18: "dist S Q = 18"
  and QR6: "dist R Q = 6"
  and SR14: "dist S R = 14"
  and T_on_QR: "∃t. 0 < t ∧ t < 1 ∧ T = ((1 - t) *R Q + t *R R)"
  and angle_equality: "angle T R Q = angle S R T"
context geometry
begin
lemma angle_bisector_property:
  assumes "angle T R Q = angle S R T"
  shows "dist S Q / dist S R = dist Q T / dist Q R"
  sorry
theorem value_x_QT:
  "dist Q T = 27/5"
proof -
  from angle_equality have "dist S Q / dist S R = dist Q T / dist Q R"
    by (rule angle_bisector_property)
  then have "18 / 14 = dist Q T / 6"
    using SQ18 QR6 SR14 by simp
  then have "dist Q T = 6 * (18 / 14)"
    by (simp add: field_simps)
  then have "dist Q T = 6 * 18 / 14"
    by (simp add: field_simps)
  then have "dist Q T = 108 / 14"
    by simp
  then show "dist Q T = 27/5"
    by (simp add: field_simps)
qed