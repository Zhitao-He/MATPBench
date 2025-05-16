theory TriangleProblem
imports Complex_Main
begin
theorem triangle_value_of_x:
  fixes B C F :: "real × real"
  assumes "dist C B = 8"
          "dist F B = 15" 
          "((fst B - fst C) * (fst F - fst C) + (snd B - snd C) * (snd F - snd C)) = 0" (* BC ⊥ FC *)
  defines "x ≡ dist C F"
  shows "x = sqrt 161"
proof -
  (* Right triangle property *)
  have perp: "((fst B - fst C) * (fst F - fst C) + (snd B - snd C) * (snd F - snd C)) = 0" 
    by (simp add: assms(3))
  (* Use Pythagorean theorem in the right triangle BCF *)
  have "x^2 = dist B F^2 - dist B C^2"
    by (metis assms(1) assms(2) assms(3) dist_real_def perp pythagorean_theorem x_def)
  (* Substitute known values *)
  hence "x^2 = 15^2 - 8^2" using assms(1) assms(2) by simp
  hence "x^2 = 225 - 64" by simp
  hence "x^2 = 161" by simp
  hence "x = sqrt 161" by simp
  thus "x = sqrt 161" by simp
qed