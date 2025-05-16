theory TrapezoidProblem
imports Main HOL.Real HOL.Euclidean_Space
begin
locale trapezoid =
  fixes x :: real
  and Q T S R :: "real^2" 
  and P M :: "real^2"
  assumes pos_x: "x > 0"
  and is_trapezoid: "Q = (0, 0)" "R = (6*x, 0)" "T = (x, -h)" "S = (5*x, -h)"
    "h > 0"
  and M_midpoint: "M = (R + S) / 2"  (* M is midpoint of RS *)
  and P_bisect: "P = (Q + T) / 2"    (* P bisects QT *)
  and PM_length: "dist P M = 20"     (* PM = 20 *)
  and parallel_sides: "QR parallel TS"  (* QR and TS are parallel *)
  and QR_length: "dist Q R = 6*x"    (* QR = 6x *)
  and TS_length: "dist T S = 2*x"    (* TS = 2x *)
theorem (in trapezoid) x_value: "x = 5"
proof -
  from is_trapezoid have "R = (6*x, 0)" by simp
  moreover from is_trapezoid have "S = (5*x, -h)" by simp
  ultimately have "M = ((6*x + 5*x)/2, (-h + 0)/2)" 
    using M_midpoint by (simp add: vector_add_divide_simps)
  hence "M = (5.5*x, -h/2)" by simp
  from is_trapezoid have "Q = (0, 0)" by simp
  moreover from is_trapezoid have "T = (x, -h)" by simp
  ultimately have "P = ((0 + x)/2, (0 + (-h))/2)"
    using P_bisect by (simp add: vector_add_divide_simps)
  hence "P = (x/2, -h/2)" by simp
  have "dist P M = sqrt(((x/2 - 5.5*x)^2 + (-h/2 - (-h/2))^2))"
    by (simp add: dist_real_def)
  hence "dist P M = sqrt(((x/2 - 5.5*x)^2))" by simp
  hence "dist P M = sqrt(((-5*x)^2))" by simp
  hence "dist P M = 5*x" by simp
  from PM_length have "20 = 5*x" by (simp add: ‹dist P M = 5*x›)
  thus "x = 5" by simp
qed