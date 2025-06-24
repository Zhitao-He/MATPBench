theory Rectangle_Area_Quadrilateral
  imports Complex_Main
begin
locale rectangle =
  fixes a h :: real
  assumes a_pos: "a > 0"
    and h_pos: "h > 0"
begin
definition A :: "real × real" where "A = (0, 0)"
definition B :: "real × real" where "B = (a, 0)"
definition C :: "real × real" where "C = (a, h)"
definition D :: "real × real" where "D = (0, h)"
definition M :: "real × real" where "M = (0, h/2)"
definition N :: "real × real" where "N = (a, h/2)"
definition area_rectangle :: real where "area_rectangle = a * h"
definition area_MBND :: real where
  "area_MBND = 
    let p1 = M; p2 = B; p3 = N; p4 = D in
    1/2 * abs (
      fst p1 * snd p2 + fst p2 * snd p3 + fst p3 * snd p4 + fst p4 * snd p1
      - snd p1 * fst p2 - snd p2 * fst p3 - snd p3 * fst p4 - snd p4 * fst p1
    )"
lemma area_rectangle_10: "area_rectangle = 10"
  using area_rectangle_def by simp
lemma area_MBND_5:
  assumes "area_rectangle = 10"
  shows "area_MBND = 5"
proof -
  have "area_MBND = 
    1/2 * abs (
      fst M * snd B + fst B * snd N + fst N * snd D + fst D * snd M
      - snd M * fst B - snd B * fst N - snd N * fst D - snd D * fst M
    )"
    unfolding area_MBND_def by simp
  moreover have "M = (0, h/2)" "B = (a, 0)" "N = (a, h/2)" "D = (0, h)"
    using M_def B_def N_def D_def by auto
  ultimately have "area_MBND = 1/2 * abs (
      0 * 0 + a * (h/2) + a * h + 0 * (h/2)
      - (h/2) * a - 0 * a - (h/2) * 0 - h * 0
    )"
    by simp
  also have "... = 1/2 * abs (
      0 + a * (h/2) + a * h + 0
      - (h/2) * a - 0 - 0 - 0
    )"
    by simp
  also have "... = 1/2 * abs (
      a * (h/2) + a * h - (h/2) * a
    )"
    by simp
  also have "... = 1/2 * abs (
      a * h
    )"
    by simp
  also have "... = 1/2 * a * h"
    using a_pos h_pos by simp
  finally have "area_MBND = 1/2 * a * h" .
  moreover have "a * h = 10"
    using assms area_rectangle_def by simp
  ultimately show ?thesis by simp
qed
end
end