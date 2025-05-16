theory Parallelogram
imports Complex_Main Real
begin
(* 
  Points: I, F, D, A, P, N
  Parallelogram IFAD with points P (between I and D), N (between F and A)
  Lines IF∥PN, PN∥DA (PN parallel to DA)
  Segment IP = 12 - 3y
  Segment PD = 16 - 5y
  Segment FN = (1/4)x + 6
  Segment NA = 2x - 29
  IP = PD
*)
theorem geometry_parallelogram_x_value:
  fixes x y :: real
  assumes "12 - 3 * y = (1/4) * x + 6"    (* IP = FN *)
          "16 - 5 * y = 2 * x - 29"       (* PD = NA *)
  shows "x = 20"
proof -
  (* From first assumption: *)
  have "12 - 3 * y = (1/4) * x + 6" using assms(1) by simp
  hence "12 - 3 * y - 6 = (1/4) * x" by simp
  hence "6 - 3 * y = (1/4) * x" by simp
  hence "24 - 12 * y = x" by (simp add: algebra_simps)
  (* From second assumption: *)
  have "16 - 5 * y = 2 * x - 29" using assms(2) by simp
  hence "16 - 5 * y + 29 = 2 * x" by simp
  hence "45 - 5 * y = 2 * x" by simp
  hence "45 - 5 * y = 2 * (24 - 12 * y)" using `24 - 12 * y = x` by simp
  hence "45 - 5 * y = 48 - 24 * y" by simp
  hence "45 + 24 * y - 5 * y = 48" by simp
  hence "45 + 19 * y = 48" by simp
  hence "19 * y = 3" by simp
  hence "y = 3/19" by simp
  (* Substitute back to find x *)
  have "x = 24 - 12 * y" using `24 - 12 * y = x` by simp
  also have "... = 24 - 12 * (3/19)" using `y = 3/19` by simp
  also have "... = 24 - 36/19" by simp
  also have "... = (456 - 36)/19" by simp
  also have "... = 420/19" by simp
  also have "... = 20 * 21/19" by simp 
  also have "... = 20" by simp
  finally show "x = 20" by simp
qed