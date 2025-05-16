theory CubeSphereVolume
imports Complex_Main "HOL-Analysis.Analysis"
begin
theorem cube_sphere_volume_difference:
  "let a = 30 :: real;
       V_cube = a^3;
       r = a/2;
       V_sphere = (4/3) * pi * r^3
   in V_cube - V_sphere = 27000 - 4500 * pi"
proof -
  let ?a = "30 :: real"
  let ?V_cube = "?a^3"
  let ?r = "?a/2"
  let ?V_sphere = "(4/3) * pi * ?r^3"
  have "?V_cube = ?a^3" by simp
  also have "... = 30^3" by simp
  also have "... = 27000" by simp
  have "?r = ?a/2" by simp
  also have "... = 30/2" by simp
  also have "... = 15" by simp
  have "?V_sphere = (4/3) * pi * ?r^3" by simp
  also have "... = (4/3) * pi * 15^3" using calculation by simp
  also have "... = (4/3) * pi * 3375" by simp
  also have "... = 4500 * pi" by simp
  have "?V_cube - ?V_sphere = 27000 - 4500 * pi" using calculation by simp
  thus ?thesis by simp
qed