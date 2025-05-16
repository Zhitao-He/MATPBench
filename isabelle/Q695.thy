theory SectorAreaProblem
imports Complex_Main "HOL-Analysis.Analysis"
begin
type_synonym point = "real × real"
definition deg_to_rad :: "real ⇒ real" where
  "deg_to_rad α = (α * pi) / 180"
definition dist :: "point ⇒ point ⇒ real" where
  "dist p1 p2 = sqrt((fst p2 - fst p1)^2 + (snd p2 - snd p1)^2)"
definition sector_area :: "point ⇒ point ⇒ point ⇒ real" where
  "sector_area center p1 p2 = 
    let r = dist center p1;
        θ = deg_to_rad(85)
    in r^2 * θ / 2"
definition K :: point where "K = (0, 0)"
definition L :: point where "L = (10, 0)"
definition J :: point where "J = (10 * cos(deg_to_rad(85)), 10 * sin(deg_to_rad(85)))"
theorem area_sector_KLJ:
  "sector_area K J L = (1375 * pi) / 18"
proof -
  have "dist K L = 10" 
    unfolding K_def L_def dist_def
    by simp
  have "dist K J = 10" 
    unfolding K_def J_def dist_def
    by (simp add: sin_squared_eq cos_squared_eq)
  have "sector_area K J L = 10^2 * deg_to_rad(85) / 2"
    unfolding sector_area_def Let_def
    using ‹dist K L = 10›
    by simp
  also have "... = 100 * (85 * pi) / 180 / 2"
    unfolding deg_to_rad_def
    by simp
  also have "... = 100 * 85 * pi / 360"
    by (simp add: field_simps)
  also have "... = 8500 * pi / 360"
    by simp
  also have "... = (1375 * pi) / 18"
    by (simp add: field_simps)
  finally show ?thesis .
qed