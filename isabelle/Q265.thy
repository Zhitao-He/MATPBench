theory CylinderVolume
imports Complex_Main "HOL-Analysis.Analysis"
begin
theorem volume_cylinder_example:
  let r = 3 :: real;
      h = 13 :: real;
      volume = pi * r^2 * h
  in (volume * 100) / 1 ≥ 3675700 - 1 ∧
     (volume * 100) / 1 ≤ 3675700 + 1
proof -
  let ?r = 3 :: real
  let ?h = 13 :: real
  let ?volume = pi * ?r^2 * ?h
  have "?volume = pi * 9 * 13" by simp
  also have "... = pi * 117" by simp
  also have "... ≈ 367.57" 
    by (approximation 2)
  thus ?thesis by simp
qed