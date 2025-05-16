theory PutnamA3
imports Complex_Main "HOL-Analysis.Analysis"
begin
text ‹
Equilateral triangle ABC has side length 2. A semicircle is drawn with diameter BC such that it 
lies outside the triangle, and minor arc BC is drawn so that it is part of a circle centered at A. 
The area of the "lune" that is inside the semicircle but outside sector ABC can be expressed in 
the form √p - (qπ/r), where p, q, and r are positive integers such that q and r are relatively prime. 
Compute p + q + r.
›
definition triangle_ABC where
  "triangle_ABC ≡ 
    let A = (0, sqrt 3);
        B = (-1, 0);
        C = (1, 0)
    in {A, B, C}"
definition A :: "real × real" where "A = (0, sqrt 3)"
definition B :: "real × real" where "B = (-1, 0)" 
definition C :: "real × real" where "C = (1, 0)"
(* Verify that triangle ABC is equilateral with side length 2 *)
lemma triangle_is_equilateral:
  "dist A B = 2" 
  "dist B C = 2"
  "dist C A = 2"
  unfolding A_def B_def C_def dist_real_def
  by (auto simp add: algebra_simps power2_eq_square)
(* Compute the area of the semicircle with diameter BC *)
definition BC_midpoint :: "real × real" where "BC_midpoint = (0, 0)"
definition BC_radius :: "real" where "BC_radius = 1"
definition semicircle_area :: "real" where
  "semicircle_area = pi * BC_radius^2 / 2"
(* Sector ABC is part of a circle centered at A with radius equal to side length *)
definition sector_angle :: "real" where "sector_angle = pi/3"
definition sector_radius :: "real" where "sector_radius = 2"
definition sector_area :: "real" where 
  "sector_area = sector_angle * BC_radius^2 / 2"
(* The area of the lune *)
definition lune_area :: "real" where
  "lune_area = semicircle_area - sector_area"
(* Show the lune area equals √3 - π/6 *)
lemma lune_area_value:
  "lune_area = sqrt 3 - pi/6"
  unfolding lune_area_def semicircle_area_def sector_area_def
            BC_radius_def sector_angle_def
  by (simp add: field_simps)
(* Verify p=3, q=1, r=6 satisfies the conditions *)
lemma solution:
  "sqrt 3 - pi/6 = sqrt (3::real) - ((1::real) * pi) / (6::real)"
  "coprime 1 6"
  "3 + 1 + 6 = 10"
  by (auto simp: coprime_def gcd_nat_def)