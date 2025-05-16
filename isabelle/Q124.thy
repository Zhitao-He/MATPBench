theory HexagonArea
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
locale triangle_setup =
  fixes A B C :: "real^2"
  assumes triangle_nonzero: "area A B C = 12"
  and non_collinear: "¬collinear {A, B, C}"
context triangle_setup
begin
  definition P :: "real^2" where
    "P = A + (A - B)"  
    have "area P Q R S T U = 13 * area A B C"
      sorry  
    also have "area A B C = 12"
      by (simp add: triangle_nonzero)
    finally show ?thesis by simp
  qed