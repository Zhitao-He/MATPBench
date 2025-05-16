theory GeometryProblem
imports Main "HOL-Analysis.Euclidean_Space"
begin
locale geometry_problem =
  fixes W R S T V :: "real × real"    
  fixes x :: real                     
  assumes RT_def: "dist R T = 2*x + 6"
  assumes VT_def: "dist V T = 10"
  assumes WR_def: "dist W R = x + 6"
  assumes WS_def: "dist W S = 8"
  assumes angle_eq: "angle S W R = angle V T R"
theorem (in geometry_problem) RT_value:
  "dist R T = 10"
proof -
  have "dist W R / dist W S = dist T R / dist T V"
    using angle_eq
    sorry  
  hence "(x + 6) / 8 = (2*x + 6) / 10"
    using WR_def WS_def RT_def VT_def
    by auto
  hence "10 * (x + 6) = 8 * (2*x + 6)"
    by (simp add: field_simps)
  hence "10*x + 60 = 16*x + 48"
    by simp
  hence "60 - 48 = 16*x - 10*x"
    by simp
  hence "12 = 6*x"
    by simp
  hence "x = 2"
    by simp
  thus "dist R T = 10"
    using RT_def
    by simp
qed