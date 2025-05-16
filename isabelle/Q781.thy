theory RectangleProblem
  imports Main Complex_Main Real_Vector_Spaces
begin
locale rectangle_problem =
  fixes J K N M Q :: "real^2"
  assumes rect: "is_rectangle J N M K"
  assumes diag_mid: "Q = midpoint J M" "Q = midpoint K N"
  assumes length_rel: "∃x. norm(N - Q) = 2*x + 3 ∧ norm(K - Q) = 5*x - 9"
begin
theorem length_JQ_equals_11: "norm(J - Q) = 11"
proof -
  have "Q = midpoint J M" by (simp add: diag_mid)
  hence "J - Q = Q - M" by (simp add: midpoint_def vector_arithmetic)
  have "Q = midpoint K N" by (simp add: diag_mid)
  hence "K - Q = Q - N" by (simp add: midpoint_def vector_arithmetic)
  from length_rel obtain x where x_def: "norm(N - Q) = 2*x + 3" "norm(K - Q) = 5*x - 9"
    by blast
  have diag_eq: "norm(J - M) = norm(K - N)" 
    using rect by (simp add: is_rectangle_def)
  have "norm(J - Q) = norm(Q - M)" using ‹J - Q = Q - M› by simp
  have "norm(K - Q) = norm(Q - N)" using ‹K - Q = Q - N› by simp
  have "norm(N - Q) + norm(K - Q) = (2*x + 3) + (5*x - 9)" 
    using x_def by simp
  hence "norm(N - Q) + norm(K - Q) = 7*x - 6" by simp
  have "2 * norm(N - Q) = norm(N - Q) + norm(Q - K)"
    using ‹K - Q = Q - N› ‹norm(K - Q) = norm(Q - N)› by simp
  hence "2 * (2*x + 3) = 7*x - 6" using x_def by simp
  hence "4*x + 6 = 7*x - 6" by simp
  hence "12 = 3*x" by simp
  hence "x = 4" by simp
  have "norm(J - Q) = norm(N - Q)" 
    using rect diag_mid by (simp add: is_rectangle_def midpoint_def)
  hence "norm(J - Q) = 2*x + 3" using x_def by simp
  thus "norm(J - Q) = 11" using ‹x = 4› by simp
qed