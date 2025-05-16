theory SphereSurfaceArea
imports Complex_Main "HOL-Analysis.Analysis"
begin
lemma sphere_surface_area_11cm:
  "let r = 11 :: real;
       surface_area = 4 * pi * r^2
   in abs (surface_area - 1520.53) < 0.01"
proof -
  let ?r = "11 :: real"
  let ?surface_area = "4 * pi * ?r^2"
  have "?surface_area = 4 * pi * 121"
    by simp
  also have "... ≈ 1520.53"
    by (approximation 5)
  finally have "abs (?surface_area - 1520.53) < 0.01"
    by (approximation 5)
  thus ?thesis
    by simp
qed