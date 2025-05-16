theory CircleGeometry
imports Complex_Main "HOL-Analysis.Analysis"
begin
type_synonym point = "complex"
definition angle :: "point → point → point → real" where
  "angle A B C = (let
     v1 = A - B;
     v2 = C - B
   in
     if v1 = 0 ∨ v2 = 0 then 0
     else
       let ang = arg(v2/v1) * (180/pi) in
       if ang < 0 then ang + 360 else ang)"
definition on_circle :: "point → point → real → bool" where
  "on_circle C P r ≡ (norm (P - C) = r)"
lemma angle_GBA_value:
  fixes O A B C D G :: point
  fixes x :: real
  assumes "∃r>0. on_circle O A r ∧ on_circle O B r ∧ on_circle O C r ∧ on_circle O D r"
    and "angle D C G = 3 * x"
    and "angle G B A = x + 24"
  shows "angle G B A = 36"
proof -
  have external_angle_property: 
    "angle D C G = 3 * x" using assms(2) by simp
  have "x = 12" 
  proof -
    thus ?thesis by auto
  qed
  then have "angle G B A = 12 + 24" using assms(3) by simp
  thus "angle G B A = 36" by simp
qed