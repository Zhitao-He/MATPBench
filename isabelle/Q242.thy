theory ConeBaseDiameter
imports 
  Complex_Main 
  "HOL-Analysis.Analysis"
begin
theorem cone_base_diameter:
  fixes h s r :: real
  assumes "h = 12"
  assumes "s = 13"
  assumes "r = sqrt (s^2 - h^2)"
  shows "2 * r = 10"
begin
  have "r = sqrt (s^2 - h^2)" by (simp add: assms(3))
  also have "... = sqrt (13^2 - 12^2)" by (simp add: assms(1) assms(2))
  also have "... = sqrt (169 - 144)" by simp
  also have "... = sqrt 25" by simp
  also have "... = 5" by simp
  finally have "r = 5" .
  thus "2 * r = 10" by simp