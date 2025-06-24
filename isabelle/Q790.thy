theory GeometryProblem
  imports "HOL-Analysis.Euclidean_Space"
begin
locale GeomProblem =
  fixes G E F D :: "real^2" 
  fixes r :: real           
  assumes radius_value: "r = 26"
  assumes dist_GE: "dist G E = 10"
  assumes F_on_circle: "dist G F = r" 
  assumes D_on_circle: "dist G D = r" 
  assumes FE_perp_GE: "orthogonal (F - E) (G - E)"
  assumes E_on_FD: "E lies_on_segment F D"
begin
theorem DE_length: "dist D E = 24"
  sorry 
end
end