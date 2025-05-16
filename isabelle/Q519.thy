theory SectorArea
imports Complex_Main
begin
definition K :: "complex" where "K = 0"
definition J :: "complex" where "J = 11 * exp (0 * \<i>)" 
definition L :: "complex" where "L = 11 * exp ((65 * pi / 180) * \<i>)" 
lemma J_on_circle: "cmod (J - K) = 11"
  by (simp add: J_def K_def)
lemma L_on_circle: "cmod (L - K) = 11"
  by (simp add: L_def K_def)
definition angle_JKL :: "real" where "angle_JKL = 65 * pi / 180"
definition sector_area :: "complex \<Rightarrow> complex \<Rightarrow> complex \<Rightarrow> real" where
  "sector_area O A B = (angle AOB / (2 * pi)) * (pi * (cmod (A - O))^2)"
    where "angle AOB = angle_JKL" 
theorem area_of_sector_KJL: "sector_area K J L = 7139 * pi / 72"
  by (simp add: sector_area_def angle_JKL_def J_def L_def K_def)