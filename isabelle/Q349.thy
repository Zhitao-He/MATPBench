theory ElliottFarmsSilo
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin
theorem silo_volume_elliott_farms:
  "let r = 5 :: real;  (* radius in meters, since diameter = 10 m *)
       h_total = 27 :: real;
       h_cyl = 18 :: real;  (* height of cylinder, 2/3 of total height *)
       h_cone = 9 :: real;  (* height of cone, 1/3 of total height *)
       v_cylinder = pi * r^2 * h_cyl;
       v_cone = (1/3) * pi * r^2 * h_cone
   in v_cylinder + v_cone = 525 * pi"
proof -
  let ?r = "5 :: real"
  let ?h_total = "27 :: real"
  let ?h_cyl = "18 :: real"
  let ?h_cone = "9 :: real"
  let ?v_cylinder = "pi * ?r^2 * ?h_cyl"
  let ?v_cone = "(1/3) * pi * ?r^2 * ?h_cone"
  have "?h_cone = ?h_total / 3" by simp
  have "?h_cyl = 2 * ?h_total / 3" by simp
  have "?h_cone = ?h_cyl / 2" by simp
  have "?v_cylinder = pi * ?r^2 * ?h_cyl" by simp
  have "?v_cylinder = pi * 25 * 18" by simp
  have "?v_cylinder = pi * 450" by simp
  have "?v_cone = (1/3) * pi * ?r^2 * ?h_cone" by simp
  have "?v_cone = (1/3) * pi * 25 * 9" by simp
  have "?v_cone = pi * 75" by simp
  have "?v_cylinder + ?v_cone = pi * 450 + pi * 75" by simp
  have "?v_cylinder + ?v_cone = pi * 525" by simp
  thus "let r = 5 :: real;
             h_total = 27 :: real;
             h_cyl = 18 :: real;
             h_cone = 9 :: real;
             v_cylinder = pi * r^2 * h_cyl;
             v_cone = (1/3) * pi * r^2 * h_cone
         in v_cylinder + v_cone = 525 * pi" by simp
qed