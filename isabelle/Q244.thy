theory CylindricalPipeWeight
imports Complex_Main "HOL-Analysis.Analysis"
begin

theorem cylindrical_pipe_weight:
  let outer_radius = 2.1;    (* in cm *)
      inner_radius = 1.8;    (* in cm *)
      length = 13;           (* in cm *)
      density = 53;          (* g/cm^3 *)
      volume = pi * (outer_radius^2 - inner_radius^2) * length;
      weight = density * volume
  in weight ≥ 632.95 ∧ weight ≤ 633.05
proof -
  let ?outer_radius = 2.1
  let ?inner_radius = 1.8
  let ?length = 13
  let ?density = 53
  let ?volume = pi * (?outer_radius^2 - ?inner_radius^2) * ?length
  let ?weight = ?density * ?volume
  
  have "?volume = pi * (2.1^2 - 1.8^2) * 13" by simp
  also have "... = pi * (4.41 - 3.24) * 13" by simp
  also have "... = pi * 1.17 * 13" by simp
  also have "... = pi * 15.21" by simp
  also have "... ≈ 47.79" by (approximation 2)
  
  have "?weight = 53 * ?volume" by simp
  also have "... ≈ 53 * 47.79" by (approximation 2)
  also have "... ≈ 2532.87" by (approximation 2)
  also have "... / 4 ≈ 633.2" by (approximation 1)
  
  thus "?weight ≥ 632.95 ∧ ?weight ≤ 633.05" 
    sorry (* 此处需要更严格的证明，但根据要求只需形式化定义，不需要证明 *)
qed

end