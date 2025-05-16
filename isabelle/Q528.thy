theory RightTriangle
imports Complex_Main
begin
text ‹As shown in the diagram, AB=10, AC=6, BC=x, AC is perpendicular to BC. Find the value of x.›
lemma right_triangle_side_length:
  fixes A B C :: "real × real"
  assumes 
    "A = (fst C, snd C + 6)"
    "B = (fst C + b, snd C)" "b > 0"
    "(fst A - fst B)^2 + (snd A - snd B)^2 = 10^2"
    "(fst A - fst C)^2 + (snd A - snd C)^2 = 6^2"
  defines "x ≡ sqrt((fst B - fst C)^2 + (snd B - snd C)^2)"
  shows "x = 8"
begin
  have "A = (fst C, snd C + 6)" using assms(1) by simp
  have "B = (fst C + b, snd C)" using assms(2) by simp
  have "fst A - fst B = fst C - (fst C + b) = -b" 
    using ‹A = (fst C, snd C + 6)› ‹B = (fst C + b, snd C)› by auto
  have "snd A - snd B = (snd C + 6) - snd C = 6" 
    using ‹A = (fst C, snd C + 6)› ‹B = (fst C + b, snd C)› by auto
  have "(fst A - fst B)^2 + (snd A - snd B)^2 = b^2 + 6^2" 
    using ‹fst A - fst B = -b› ‹snd A - snd B = 6› by (simp add: power2_eq_square)
  have "b^2 + 6^2 = 10^2" using assms(4) ‹(fst A - fst B)^2 + (snd A - snd B)^2 = b^2 + 6^2› by simp
  hence "b^2 = 10^2 - 6^2" by simp
  hence "b^2 = 100 - 36" by simp
  hence "b^2 = 64" by simp
  hence "b = 8" using assms(3) by (simp add: real_sqrt_unique)
  have "x = sqrt((fst B - fst C)^2 + (snd B - snd C)^2)" using x_def by simp
  also have "... = sqrt((fst C + b - fst C)^2 + (snd C - snd C)^2)" 
    using ‹B = (fst C + b, snd C)› by simp
  also have "... = sqrt(b^2 + 0)" by simp
  also have "... = sqrt(b^2)" by simp
  also have "... = sqrt(64)" using ‹b^2 = 64› by simp
  also have "... = 8" by simp
  finally show "x = 8" .