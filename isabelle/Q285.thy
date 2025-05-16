theory FloorTiles
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
begin
text ‹A decorative arrangement of floor tiles forms concentric circles.
The smallest circle has a radius of 2 feet, and each successive circle has a radius 2 feet longer.
All the lines shown intersect at the center and form 12 congruent central angles.
We need to find the area of the shaded region.›
(* Define the central angle that divides the circle into 12 equal parts *)
definition central_angle :: "real" where
  "central_angle = pi / 6"
(* The radii of the concentric circles *)
definition r1 :: "real" where "r1 = 2"
definition r2 :: "real" where "r2 = 4"
definition r3 :: "real" where "r3 = 6"
definition r4 :: "real" where "r4 = 8"
(* The area of the annular sector between r2 and r3 *)
definition shaded_area :: "real" where
  "shaded_area = (central_angle / (2 * pi)) * (r3^2 - r2^2) * pi"
(* The theorem stating that the area of the shaded region equals pi *)
theorem floor_tile_shaded_area: "shaded_area = pi"
  unfolding shaded_area_def central_angle_def r2_def r3_def
  by (simp add: field_simps power2_eq_square)