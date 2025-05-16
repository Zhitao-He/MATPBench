theory TriangleCongruence
imports Main Complex_Main "HOL-Analysis.Analysis"
begin
locale triangle =
  fixes R S T :: "complex"
  assumes distinct_R_S: "R ≠ S"
  and distinct_S_T: "S ≠ T" 
  and distinct_T_R: "T ≠ R"
definition distance :: "complex ⇒ complex ⇒ real" where
  "distance p q = cmod (p - q)"
definition angle_deg :: "complex ⇒ complex ⇒ complex ⇒ real" where
  "angle_deg P Q R = (let v1 = Q - P; v2 = R - P in
                     (atan2 (Im (v1 * cnj v2)) (Re (v1 * cnj v2))) * (180 / pi))"
lemma find_y_value:
  fixes x y :: real
  fixes R S T X Y Z :: complex
  assumes "R ≠ S" "S ≠ T" "T ≠ R" 
    and "X ≠ Y" "Y ≠ Z" "Z ≠ X"
    and congruent: "distance R S = distance X Y"  
                   "distance S T = distance Y Z"
                   "distance T R = distance Z X"
    and tr_condition: "distance T R = x + 21"
    and zx_condition: "distance Z X = 2*x - 14"
    and angle_trs: "angle_deg T R S = 4*y - 10"
    and angle_zxy: "angle_deg Z X Y = 3*y + 5"
  shows "y = 15"
proof -
  from congruent(3) tr_condition zx_condition have "x + 21 = 2*x - 14" by simp
  hence "21 + 14 = 2*x - x" by simp
  hence "35 = x" by simp
  from congruent angle_trs angle_zxy have "4*y - 10 = 3*y + 5" by simp
  hence "4*y - 3*y = 5 + 10" by simp
  hence "y = 15" by simp
  thus ?thesis by simp
qed