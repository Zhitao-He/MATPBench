theory GeometryProblem
imports 
  Main
  "HOL-Analysis.Analysis"
begin
type_synonym point = "real × real"
definition measure_angle :: "point → point → point → real" where
  "measure_angle A B C = undefined"  
definition parallel :: "point × point → point × point → bool" where
  "parallel l1 l2 = undefined"  
axiomatization where
  angle_DGH: "measure_angle D G H = 64" and
  BC_parallel_DE: "parallel (B, C) (D, E)" and
  DF_parallel_GH: "parallel (D, F) (G, H)"
theorem angle_JGD: "measure_angle J G D = 116"
proof -
  have "measure_angle J G D = 180 - measure_angle D G H"
    by simp  
  with angle_DGH show ?thesis by simp
qed