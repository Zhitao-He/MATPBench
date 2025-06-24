theory Geometry_Problem_Formalization
  imports Complex_Main 
begin
type_synonym point = "complex"
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint A B = (A + B) / (2::real)"
definition area_triangle :: "point ⇒ point ⇒ point ⇒ real" where
  "area_triangle A B C = (0.5::real) * abs(Im(conj(B-A) * (C-A)))"
definition area_quadrilateral :: "point ⇒ point ⇒ point ⇒ point ⇒ real" where
  "area_quadrilateral U V R W =
    (0.5::real) * abs(Im(conj U * V + conj V * R + conj R * W + conj W * U))"
context
  fixes P Q R S T U V W :: point 
  assumes area_PQR_is_1: "area_triangle P Q R = (1::real)"
  assumes U_is_midpoint_PQ: "U = midpoint P Q" 
  assumes W_is_midpoint_QR: "W = midpoint Q R" 
  assumes V_is_midpoint_PR: "V = midpoint P R" 
  assumes area_STU_is_1: "area_triangle S T U = (1::real)"
  assumes R_is_midpoint_ST: "R = midpoint S T" 
  assumes V_is_midpoint_SU: "V = midpoint S U" 
  assumes W_is_midpoint_TU: "W = midpoint T U" 
  assumes UVRW_is_a_parallelogram: "U + R = V + W"
begin
lemma area_of_parallelogram_UVRW_is_half:
  "area_quadrilateral U V R W = (0.5::real)"
  oops 
end 
end