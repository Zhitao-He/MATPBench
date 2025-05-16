theory RightTriangleProblem
  imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
text ‹As shown in the diagram, AB=x, AC=y, BC=6, ∠BAC=30°, AC⊥BC. Find the value of x.›
theorem value_of_x:
  fixes A B C :: "real^2"
  defines "x ≡ norm (B - A)"
  defines "y ≡ norm (C - A)"
  defines "BC ≡ norm (C - B)"
  assumes "BC = 6"
  assumes "angle A C B = pi/2" (* AC⊥BC means right angle at C *)
  assumes "angle B A C = pi/6" (* 30 degrees = π/6 radians *)
  shows "x = 12"
proof -
  have cos_BAC: "cos (angle B A C) = cos (pi/6)" 
    by (simp add: ‹angle B A C = pi/6›)
  have "cos (pi/6) = sqrt 3 / 2"
    by simp
  have sin_BAC: "sin (angle B A C) = sin (pi/6)"
    by (simp add: ‹angle B A C = pi/6›)
  have "sin (pi/6) = 1/2"
    by simp
  (* Since there's a right angle at C, we can use the law of sines *)
  have "x / sin (angle A C B) = BC / sin (angle B A C)"
    using law_of_sines[of A B C] assms
    by simp
  (* Substitute angle values *)
  hence "x / sin (pi/2) = 6 / sin (pi/6)"
    using assms
    by simp
  (* sin(π/2) = 1 and sin(π/6) = 1/2 *)
  hence "x = 6 / (1/2)"
    by simp
  thus "x = 12"
    by simp
qed