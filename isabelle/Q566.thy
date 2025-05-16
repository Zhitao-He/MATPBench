theory AngleGeometry
imports
  Complex_Main
  "HOL-Analysis.Topology_Euclidean_Space"
begin
locale angle_problem =
  fixes A B D F H :: "real × real"
  assumes HB_perp_DB: "let (x₁, y₁) = H; (x₂, y₂) = B; (x₃, y₃) = D in
                       (x₂ - x₁) * (x₃ - x₁) + (y₂ - y₁) * (y₃ - y₁) = 0"
  and angle_DHB: "angle D H B = 38 * pi / 180"
  and angle_FDA: "angle F D A = 52 * pi / 180"
context angle_problem
begin
definition angle :: "(real × real) ⇒ (real × real) ⇒ (real × real) ⇒ real"
  where "angle A B C = (
    let (x₁, y₁) = A; (x₂, y₂) = B; (x₃, y₃) = C;
        v₁ = (x₁ - x₂, y₁ - y₂);
        v₂ = (x₃ - x₂, y₃ - y₂) in
    let cos_angle = (fst v₁ * fst v₂ + snd v₁ * snd v₂) / 
                   (sqrt((fst v₁)² + (snd v₁)²) * sqrt((fst v₂)² + (snd v₂)²)) in
    arccos cos_angle
  )"
theorem angle_HDF: "angle H D F = 128 * pi / 180"
proof -
  have "angle H D F = pi - angle F D A"
    by (metis angle_FDA) 
  also have "... = pi - 52 * pi / 180"
    by (simp add: angle_FDA)
  also have "... = 128 * pi / 180"
    by (simp add: algebra_simps)
  finally show ?thesis .
qed