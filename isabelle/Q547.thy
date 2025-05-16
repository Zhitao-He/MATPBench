theory SquareAngleProblem
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition vector_sub :: "point ⇒ point ⇒ point" where
"vector_sub A B = (fst A - fst B, snd A - snd B)"
definition norm :: "point ⇒ real" where
"norm v = sqrt((fst v)^2 + (snd v)^2)"
definition dot_product :: "point ⇒ point ⇒ real" where
"dot_product u v = (fst u) * (fst v) + (snd u) * (snd v)"
definition angle :: "point ⇒ point ⇒ real" where
"angle u v = arccos((dot_product u v) / (norm u * norm v))"
definition rad_to_deg :: "real ⇒ real" where
"rad_to_deg r = r * 180 / pi"
theorem square_diagonal_angle_45:
  fixes A B C D :: point
  assumes "norm (vector_sub C A) = 12" 
  and "norm (vector_sub D C) = norm (vector_sub B A)" 
  shows "rad_to_deg (angle (vector_sub C A) (vector_sub B A)) = 45" 
  have "angle (vector_sub C A) (vector_sub B A) = pi/4"
    using assms
    by (metis angle_def dot_product_def norm_def rad_to_deg_def vector_sub_def)
  thus ?thesis
    by (simp add: rad_to_deg_def)
qed