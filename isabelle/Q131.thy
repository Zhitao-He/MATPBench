theory SquareTriangleArea
imports Main "HOL-Analysis.Analysis"
begin
text ‹Square ABCD has side length 10. Point E is on BC, and the area of triangle ABE is 40.
      BE is 8.›
definition square_vertices :: "real × real × real × real × real × real × real × real" where
  "square_vertices = ((0, 0), (0, 10), (10, 10), (10, 0))"
definition A :: "real × real" where "A = fst (fst (fst square_vertices))"
definition B :: "real × real" where "B = snd (fst (fst square_vertices))"
definition C :: "real × real" where "C = fst (snd square_vertices)"
definition D :: "real × real" where "D = snd (snd square_vertices)"
definition on_line :: "real × real ⇒ real × real ⇒ real × real ⇒ bool" where
  "on_line P Q R ⟷ (∃t. 0 ≤ t ∧ t ≤ 1 ∧ R = (fst P + t * (fst Q - fst P), snd P + t * (snd Q - snd P)))"
definition distance :: "real × real ⇒ real × real ⇒ real" where
  "distance P Q = sqrt((fst P - fst Q)² + (snd P - snd Q)²)"
definition triangle_area :: "real × real ⇒ real × real ⇒ real × real ⇒ real" where
  "triangle_area P Q R = abs((fst Q - fst P) * (snd R - snd P) - (snd Q - snd P) * (fst R - fst P)) / 2"
theorem find_point_E:
  assumes "on_line B C E"
      and "triangle_area A B E = 40"
      and "distance B E = 8"
    shows "E = (8, 10)"
proof -
  from assms(1) have "∃t. 0 ≤ t ∧ t ≤ 1 ∧ E = (fst B + t * (fst C - fst B), snd B + t * (snd C - snd B))"
    by (simp add: on_line_def)
  then obtain t where t_def: "0 ≤ t" "t ≤ 1" "E = (fst B + t * (fst C - fst B), snd B + t * (snd C - snd B))"
    by blast
  have "A = (0, 0)" by (simp add: A_def square_vertices_def)
  moreover have "B = (0, 10)" by (simp add: B_def square_vertices_def)
  moreover have "C = (10, 10)" by (simp add: C_def square_vertices_def)
  moreover have "D = (10, 0)" by (simp add: D_def square_vertices_def)
  ultimately have coords: "A = (0, 0)" "B = (0, 10)" "C = (10, 10)" "D = (10, 0)" by simp_all
  from coords(2) coords(3) t_def(3) have "E = (0 + t * (10 - 0), 10 + t * (10 - 10))" by simp
  hence "E = (10*t, 10)" by simp
  from this assms(2) coords(1) coords(2) have "triangle_area (0, 0) (0, 10) (10*t, 10) = 40" by simp
  hence "abs((0 - 0) * (10 - 0) - (10 - 0) * (10*t - 0)) / 2 = 40" by (simp add: triangle_area_def)
  hence "abs(0 - 10*10*t) / 2 = 40" by simp
  hence "abs(-100*t) / 2 = 40" by simp
  hence "abs(100*t) / 2 = 40" by simp
  hence "100*t / 2 = 40" using t_def(1) by simp
  hence "100*t = 80" by simp
  hence "t = 4/5" by simp
  from ‹E = (10*t, 10)› and ‹t = 4/5› have "E = (10*(4/5), 10)" by simp
  hence "E = (8, 10)" by simp
  show "E = (8, 10)" by (rule ‹E = (8, 10)›)
qed