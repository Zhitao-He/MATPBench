theory SectorPerimeter
imports Complex_Main "HOL-Analysis.Analysis"
begin
theorem sector_perimeter_12_60deg:
  fixes O :: "real × real"
  assumes "O = (0, 0)"
  defines "r ≡ 12::real"
  defines "θ ≡ pi/3::real"
  defines "A ≡ (r * cos θ, r * sin θ)"
  defines "B ≡ (r, 0)"
  defines "arc_length ≡ r * θ"
  defines "perimeter ≡ r + r + arc_length"
  shows "perimeter = 24 + 4 * pi"
proof -
  have "r = 12" by (simp add: r_def)
  moreover have "θ = pi/3" by (simp add: θ_def)
  moreover have "arc_length = r * θ" by (simp add: arc_length_def)
  moreover have "perimeter = r + r + arc_length" by (simp add: perimeter_def)
  have "r + r = 24" using `r = 12` by simp
  moreover have "arc_length = 12 * (pi/3)" using `r = 12` `θ = pi/3` `arc_length = r * θ` by simp
  hence "arc_length = 4 * pi" by simp
  ultimately show "perimeter = 24 + 4 * pi" by simp
qed