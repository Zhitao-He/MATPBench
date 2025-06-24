theory GeometryProblem
  imports Main 
begin
typedecl point
consts
  R :: point
  S :: point
  T :: point
  U :: point
  V :: point
  W :: point
  A :: point 
  B :: point 
consts
  len :: "point ⇒ point ⇒ real" 
consts x :: real
axiomatization where
  len_RA: "len R A = 3" and
  len_TA: "len T A = 8" and
  len_UB_def: "len U B = x + 2" and
  len_WB_def: "len W B = 3 * x - 6" and
  median_property_RS: "len R S = 2 * len R A" and
  median_property_UV: "len U V = 2 * len U B" and
  similar_triangles_median_ratio: "len T A / len W B = len R A / len U B" and
  len_UB_is_positive: "len U B > 0" and  
  len_WB_is_positive: "len W B > 0"     
lemma length_of_UB_is_36:
  "len U B = 36"
proof -
  have equation1: "8 / (3 * x - 6) = 3 / (x + 2)"
    by (simp add: similar_triangles_median_ratio len_TA len_WB_def len_RA len_UB_def)
  have wb_denominator_nonzero: "3 * x - 6 ≠ 0"
    using len_WB_is_positive len_WB_def by linarith
  have ub_denominator_nonzero: "x + 2 ≠ 0"
    using len_UB_is_positive len_UB_def by linarith
  have equation2: "8 * (x + 2) = 3 * (3 * x - 6)"
    using equation1 wb_denominator_nonzero ub_denominator_nonzero
    by (simp add: div_eq_div_iff)
  have algebraic_form: "8 * x + 16 = 9 * x - 18"
    by (simp add: equation2 algebra_simps) 
  have x_value: "x = 34"
  proof -
    have "16 + 18 = (9*x - 8*x)" by (linarith [algebraic_form]) 
    then show "x = 34" by simp
  qed
  show "len U B = 36"
    by (simp add: len_UB_def x_value)
qed
end