theory SemiCircleProblem
imports Complex_Main "HOL-Analysis.Analysis"
begin
lemma semicircle_shaded_area_ratio:
  fixes r :: real
  assumes "r > 0"
  defines "AB ≡ r"
  defines "BC ≡ 2*r"
  defines "CD ≡ 3*r" 
  defines "AD ≡ AB + BC + CD"
  defines "area_semi_AD ≡ pi * (AD/2)^2 / 2"
  defines "area_semi_AB ≡ pi * (AB/2)^2 / 2"
  defines "area_semi_BC ≡ pi * (BC/2)^2 / 2"
  defines "area_semi_CD ≡ pi * (CD/2)^2 / 2"
  defines "shaded_area ≡ area_semi_AD - (area_semi_AB + area_semi_BC + area_semi_CD)"
  defines "unshaded_area ≡ area_semi_AB + area_semi_BC + area_semi_CD"
  shows "shaded_area / unshaded_area = 11/7"
begin
  have "AD = 6*r" using `AD ≡ AB + BC + CD` `AB ≡ r` `BC ≡ 2*r` `CD ≡ 3*r`
    by simp
  have "area_semi_AD = pi * (6*r/2)^2 / 2" using `AD = 6*r` `area_semi_AD ≡ pi * (AD/2)^2 / 2`
    by simp
  also have "... = pi * 9 * r^2 / 2" by simp
  finally have area_semi_AD_val: "area_semi_AD = pi * 9 * r^2 / 2" .
  have "area_semi_AB = pi * (r/2)^2 / 2" using `AB ≡ r` `area_semi_AB ≡ pi * (AB/2)^2 / 2`
    by simp
  also have "... = pi * r^2 / 8" by simp
  finally have area_semi_AB_val: "area_semi_AB = pi * r^2 / 8" .
  have "area_semi_BC = pi * (2*r/2)^2 / 2" using `BC ≡ 2*r` `area_semi_BC ≡ pi * (BC/2)^2 / 2`
    by simp
  also have "... = pi * r^2 / 2" by simp
  finally have area_semi_BC_val: "area_semi_BC = pi * r^2 / 2" .
  have "area_semi_CD = pi * (3*r/2)^2 / 2" using `CD ≡ 3*r` `area_semi_CD ≡ pi * (CD/2)^2 / 2`
    by simp
  also have "... = pi * 9 * r^2 / 8" by simp
  finally have area_semi_CD_val: "area_semi_CD = pi * 9 * r^2 / 8" .
  have "unshaded_area = area_semi_AB + area_semi_BC + area_semi_CD" 
    using `unshaded_area ≡ area_semi_AB + area_semi_BC + area_semi_CD`
    by simp
  also have "... = pi * r^2 / 8 + pi * r^2 / 2 + pi * 9 * r^2 / 8"
    using area_semi_AB_val area_semi_BC_val area_semi_CD_val
    by simp
  also have "... = pi * r^2 * (1/8 + 4/8 + 9/8)"
    by (simp add: algebra_simps)
  also have "... = pi * r^2 * 14/8"
    by simp
  also have "... = pi * r^2 * 7/4"
    by simp
  finally have unshaded_area_val: "unshaded_area = pi * r^2 * 7/4" .
  have "shaded_area = area_semi_AD - unshaded_area"
    using `shaded_area ≡ area_semi_AD - (area_semi_AB + area_semi_BC + area_semi_CD)`
          `unshaded_area ≡ area_semi_AB + area_semi_BC + area_semi_CD`
    by simp
  also have "... = pi * 9 * r^2 / 2 - pi * r^2 * 7/4"
    using area_semi_AD_val unshaded_area_val
    by simp
  also have "... = pi * r^2 * (18/4 - 7/4)"
    by (simp add: algebra_simps)
  also have "... = pi * r^2 * 11/4"
    by simp
  finally have shaded_area_val: "shaded_area = pi * r^2 * 11/4" .
  have "shaded_area / unshaded_area = (pi * r^2 * 11/4) / (pi * r^2 * 7/4)"
    using shaded_area_val unshaded_area_val
    by simp
  also have "... = (11/4) / (7/4)"
    using `r > 0` by (simp add: divide_simps)
  also have "... = 11/7"
    by simp
  finally show "shaded_area / unshaded_area = 11/7" .