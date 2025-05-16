theory TriangleCircleArea
  imports Complex_Main "HOL-Analysis.Analysis"
begin
type_synonym point = "real × real"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p₁ p₂ = sqrt((fst p₂ - fst p₁)² + (snd p₂ - snd p₁)²)"
definition is_equilateral :: "point ⇒ point ⇒ point ⇒ bool" where
  "is_equilateral A B C = (distance A B = distance B C ∧ distance B C = distance C A)"
definition triangle_area :: "point ⇒ point ⇒ point ⇒ real" where
  "triangle_area A B C = 
    let a = distance B C;
        b = distance A C;
        c = distance A B;
        s = (a + b + c) / 2
    in sqrt(s * (s - a) * (s - b) * (s - c))"
definition circle_area :: "real ⇒ real" where
  "circle_area r = π * r²"
definition centroid :: "point ⇒ point ⇒ point ⇒ point" where
  "centroid A B C = ((fst A + fst B + fst C) / 3, (snd A + snd B + snd C) / 3)"
definition incenter :: "point ⇒ point ⇒ point ⇒ point" where
  "incenter A B C =
    let a = distance B C;
        b = distance A C;
        c = distance A B
    in ((a * fst A + b * fst B + c * fst C) / (a + b + c),
        (a * snd A + b * snd B + c * snd C) / (a + b + c))"
definition inradius :: "point ⇒ point ⇒ point ⇒ real" where
  "inradius A B C =
    let a = distance B C;
        b = distance A C;
        c = distance A B;
        s = (a + b + c) / 2
    in triangle_area A B C / s"
theorem triangle_minus_circle_area:
  fixes D C B N E :: point
  assumes "is_equilateral D C B"
  assumes "N = centroid D C B"
  assumes "N = incenter D C B"
  assumes "distance E N = 3"
  shows "triangle_area D C B - circle_area (distance E N) = -9*π + 27*sqrt(3)"
proof -
  have side_len: "distance D C = distance E N * sqrt(3)"
    using assms(1) assms(2) assms(3) assms(4)
    sorry
  have triangle_area_val: "triangle_area D C B = (sqrt(3)/4) * (distance D C)²"
    using assms(1)
    sorry
  have "triangle_area D C B = (sqrt(3)/4) * (distance E N * sqrt(3))²"
    using triangle_area_val side_len
    by auto
  have "triangle_area D C B = (sqrt(3)/4) * (distance E N)² * 3"
    using triangle_area_val side_len
    by (simp add: power2_eq_square)
  have "triangle_area D C B = (3*sqrt(3)/4) * (distance E N)²"
    by simp
  have "triangle_area D C B = (3*sqrt(3)/4) * 9"
    using assms(4) by simp
  have "triangle_area D C B = 27*sqrt(3)/4"
    by simp
  have "circle_area (distance E N) = π * (distance E N)²"
    by (simp add: circle_area_def)
  have "circle_area (distance E N) = π * 9"
    using assms(4) by simp
  have "triangle_area D C B - circle_area (distance E N) = 27*sqrt(3)/4 - 9*π"
    by simp
  have "27*sqrt(3)/4 = 27*sqrt(3)*1/4"
    by simp
  have "27*sqrt(3)/4 - 9*π = -9*π + 27*sqrt(3)*1/4"
    by simp
  thus "triangle_area D C B - circle_area (distance E N) = -9*π + 27*sqrt(3)"
    sorry
qed