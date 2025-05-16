theory RectangleTrianglePerimeter
imports Complex_Main 
begin

text ‹In rectangle ABCD, AD=1, P is on AB, and DB and DP trisect angle ADC.
      Computing the perimeter of triangle BDP in simplest form.›

definition angle :: "real × real ⇒ real × real ⇒ real × real ⇒ real" where
  "angle P1 P2 P3 = (
    let v1 = (fst P1 - fst P2, snd P1 - snd P2);
        v2 = (fst P3 - fst P2, snd P3 - snd P2)
    in arccos((fst v1 * fst v2 + snd v1 * snd v2) / 
             (sqrt((fst v1)^2 + (snd v1)^2) * sqrt((fst v2)^2 + (snd v2)^2))))"

definition distance :: "real × real ⇒ real × real ⇒ real" where
  "distance P1 P2 = sqrt((fst P1 - fst P2)^2 + (snd P1 - snd P2)^2)"

lemma rectangle_trisect_perimeter:
  fixes b :: real
  assumes "b > 0" 
  defines "A ≡ (0, 1 :: real)"
  defines "B ≡ (b, 1 :: real)"
  defines "C ≡ (b, 0 :: real)"
  defines "D ≡ (0, 0 :: real)"
  defines "P ≡ (b/3, 1 :: real)"
  shows "angle D A C = angle D A B + angle B A C"
    and "angle D A P = (1/3) * angle D A C"
    and "angle P A B = (2/3) * angle D A C"
    and "distance B D = sqrt (b^2 + 1)"
    and "distance D P = sqrt ((b/3)^2 + 1)"
    and "distance B P = 2*b/3"
    and "distance B D + distance D P + distance B P = 1 + sqrt 13/3"
proof -
  have "angle D A C = angle D A B + angle B A C" 
    unfolding A_def B_def C_def D_def angle_def
    by (simp add: Let_def)
  
  have "angle D A P = (1/3) * angle D A C"
    unfolding A_def P_def D_def C_def angle_def
    by (simp add: Let_def)
  
  have "angle P A B = (2/3) * angle D A C"
    unfolding A_def P_def B_def C_def D_def angle_def
    by (simp add: Let_def)
  
  have "distance B D = sqrt (b^2 + 1)"
    unfolding B_def D_def distance_def
    by (simp add: power2_eq_square)
  
  have "distance D P = sqrt ((b/3)^2 + 1)"
    unfolding D_def P_def distance_def
    by (simp add: power2_eq_square)
  
  have "distance B P = 2*b/3"
    unfolding B_def P_def distance_def
    by (simp add: power2_eq_square)
  
  have "distance B D + distance D P + distance B P = b + sqrt((b/3)^2 + 1) + 2*b/3"
    by (simp add: ‹distance B D = sqrt (b^2 + 1)› ‹distance D P = sqrt ((b/3)^2 + 1)› ‹distance B P = 2*b/3›)
  
  moreover have "b = 3"
    using ‹angle D A P = (1/3) * angle D A C› ‹angle P A B = (2/3) * angle D A C›
    unfolding A_def B_def C_def D_def P_def angle_def
    by (simp add: Let_def)
  
  ultimately show "distance B D + distance D P + distance B P = 1 + sqrt 13/3"
    by (simp add: algebra_simps)
  
  show "angle D A C = angle D A B + angle B A C"
    by (rule ‹angle D A C = angle D A B + angle B A C›)
  
  show "angle D A P = (1/3) * angle D A C"
    by (rule ‹angle D A P = (1/3) * angle D A C›)
  
  show "angle P A B = (2/3) * angle D A C"
    by (rule ‹angle P A B = (2/3) * angle D A C›)
  
  show "distance B D = sqrt (b^2 + 1)"
    by (rule ‹distance B D = sqrt (b^2 + 1)›)
  
  show "distance D P = sqrt ((b/3)^2 + 1)"
    by (rule ‹distance D P = sqrt ((b/3)^2 + 1)›)
  
  show "distance B P = 2*b/3"
    by (rule ‹distance B P = 2*b/3›)
qed

theorem perimeter_result:
  "∃ w x y z :: nat. 
    w ≥ 0 ∧ x ≥ 0 ∧ y ≥ 0 ∧ z ≥ 0 ∧ 
    w + x + y + z = 12 ∧
    (real w + (real x * sqrt (real y)) / (real z)) = 1 + sqrt 13/3"
proof
  let ?w = 1
  let ?x = 1
  let ?y = 13
  let ?z = 3
  show "?w ≥ 0 ∧ ?x ≥ 0 ∧ ?y ≥ 0 ∧ ?z ≥ 0 ∧ 
        ?w + ?x + ?y + ?z = 12 ∧
        (real ?w + (real ?x * sqrt (real ?y)) / (real ?z)) = 1 + sqrt 13/3"
    by simp
qed

end