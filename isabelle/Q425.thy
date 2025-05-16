theory IsoscelesTrapezoid
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin

text ‹Proof: The measure of one of the smaller base angles of an isosceles trapezoid is 60°. 
      The shorter base is 5 inches long and the altitude is 2√3 inches long.
      The perimeter of the trapezoid is 22 inches.›

definition deg_to_rad :: "real ⇒ real" where
  "deg_to_rad α = (α * pi) / 180"

lemma isosceles_trapezoid_perimeter:
  fixes b₁ :: real    (* 较短底边长度 *)
    and h :: real     (* 高 *)
    and θ :: real     (* 底角(弧度) *)
  assumes "b₁ = 5"    (* 较短底边长度为5英寸 *)
    and "h = 2 * sqrt 3"  (* 高为2√3英寸 *)
    and "θ = deg_to_rad 60"  (* 一个较小底角为60度 *)
  shows "let leg = h / sin θ;  (* 等腰梯形的腰长 *)
             b₂ = b₁ + 2 * h / tan θ  (* 较长底边长度 *)
         in 2 * leg + b₁ + b₂ = 22"  (* 验证周长是否为22英寸 *)
proof -
  have "θ = pi/3" using assms(3) deg_to_rad_def by auto
  
  let ?leg = "h / sin θ"
  let ?b₂ = "b₁ + 2 * h / tan θ"
  
  have "sin θ = sin (pi/3)" using ‹θ = pi/3› by simp
  hence "sin θ = sqrt 3 / 2" by simp
  
  have "tan θ = tan (pi/3)" using ‹θ = pi/3› by simp
  hence "tan θ = sqrt 3" by simp
  
  have "?leg = h / sin θ" by simp
  also have "... = (2 * sqrt 3) / (sqrt 3 / 2)" using assms(2) ‹sin θ = sqrt 3 / 2› by simp
  also have "... = (2 * sqrt 3) * (2 / sqrt 3)" by (simp add: field_simps)
  also have "... = 4" by simp
  finally have leg_val: "?leg = 4" .
  
  have "?b₂ = b₁ + 2 * h / tan θ" by simp
  also have "... = 5 + 2 * (2 * sqrt 3) / sqrt 3" 
    using assms(1) assms(2) ‹tan θ = sqrt 3› by simp
  also have "... = 5 + 2 * 2" by simp
  also have "... = 5 + 4" by simp
  also have "... = 9" by simp
  finally have b2_val: "?b₂ = 9" .
  
  have "2 * ?leg + b₁ + ?b₂ = 2 * 4 + 5 + 9" 
    using leg_val b2_val assms(1) by simp
  also have "... = 8 + 5 + 9" by simp
  also have "... = 22" by simp
  finally show ?thesis by simp
qed

end