theory LineSegmentProblem
  imports Main HOL.Real
begin
section "Line Segment Problem"
text "As shown in the diagram, FQ=10, FW=x, WQ=4. Find the value of x."
locale line_segment =
  fixes F W Q :: "real × real"
  assumes collinear: "∃t1 t2. t1 ≥ 0 ∧ t2 ≥ 0 ∧ t1 + t2 = 1 ∧ W = t1 *⇘ F + t2 *⇘ Q"
  assumes FQ_length: "dist F Q = 10"
  assumes WQ_length: "dist W Q = 4"
  assumes x_def: "dist F W = x"
begin
lemma line_addition: "dist F Q = dist F W + dist W Q"
  using collinear by (metis dist_triangle_eq)
theorem value_of_x: "x = 6"
proof -
  have "dist F W + dist W Q = dist F Q" using line_addition by simp
  hence "x + 4 = 10" using x_def WQ_length FQ_length by simp
  thus "x = 6" by simp
qed