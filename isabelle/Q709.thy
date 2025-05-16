theory AngleProblem
imports
  Main
  "HOL-Analysis.Euclidean_Space"
begin
section ‹Geometric Problem›
text ‹As shown in the diagram, ∠UTV=47°, RU is perpendicular to SU, TV⊥UV, VS is perpendicular to RS. Find ∠USR.›
locale geometric_problem =
  fixes R S T U V :: "real^2"
  assumes angle_UTV: "angle V T U = 47"
    and perp_RU_SU: "orthogonal (R - U) (S - U)"
    and perp_TV_UV: "orthogonal (T - V) (U - V)"
    and perp_VS_RS: "orthogonal (V - S) (R - S)"
context geometric_problem
begin
theorem angle_USR: "angle U S R = 47"
proof -
  have "angle S U R + angle U S R + angle U R S = 180"
    by (rule triangle_angle_sum)
  moreover
  have "angle S U R = 90"
    using perp_RU_SU by (simp add: orthogonal_imp_angle)
  moreover
  have "angle U R S = 43"
    using perp_VS_RS angle_UTV perp_TV_UV
    by (metis add.commute angle_supplement diff_eq_eq)
  ultimately
  have "angle U S R = 180 - 90 - 43" by simp
  thus "angle U S R = 47" by simp
qed