theory MirrorCongruentQuadrilaterals
imports Complex_Main
begin
context
  fixes x y z w :: real
  assumes "CB = 4*w - 7"
  assumes "CD = 11"
  assumes "ED = 3*z + 10"
  assumes "RS = 2*w + 13"
  assumes "RU = 12"
  assumes "UT = z + 16"
  assumes "angle_CBE = 2*x + 9"
  assumes "angle_EDC = 2*y - 31"
  assumes "angle_STU = y + 11"
  assumes "angle_URS = 49"
  assumes mirror_congruent: "is_mirror_congruent BEDC RSTU"
  assumes mirror_congruent_angles: "is_mirror_congruent BEDC RSTU ⟹ 
    angle_CBE = angle_URS ∧ angle_EDC = angle_STU"
begin
lemma "angle_CBE = angle_URS"
  using mirror_congruent mirror_congruent_angles by simp
lemma "2*x + 9 = 49"
  using ‹angle_CBE = angle_URS› ‹angle_CBE = 2*x + 9› ‹angle_URS = 49›
  by simp
theorem "x = 20"
  using ‹2*x + 9 = 49› by simp