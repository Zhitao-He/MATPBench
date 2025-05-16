theory AngleProblem
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
(* Define the problem setup *)
locale angle_problem =
  fixes A B D F :: "real^2"
  fixes x :: real
  (* Ensure distinct points *)
  assumes distinct: "A ≠ B" "B ≠ D" "B ≠ F" "A ≠ D" "A ≠ F" "D ≠ F"
  (* Angle ABD measures x+14 degrees *)
  assumes angle_ABD: "angle A B D = (x + 14) * pi / 180"
  (* Angle ABF measures 3x-8 degrees *)
  assumes angle_ABF: "angle A B F = (3 * x - 8) * pi / 180"
  (* BD bisects angle ABF *)
  assumes bisect: "angle A B D = angle D B F"
context angle_problem
begin
  lemma angle_ABD_value: "angle A B D = 50 * pi / 180"
  proof -
    from bisect have "angle A B D = angle D B F" by simp
    (* Since BD bisects ABF, we know that ABD + DBF = ABF *)
    have "angle A B F = angle A B D + angle D B F" 
      by (simp add: angle_add)
    (* Substitute the bisection property *)
    hence "angle A B F = 2 * angle A B D" 
      using `angle A B D = angle D B F` by simp
    (* Substitute the given angle values *)
    have "2 * ((x + 14) * pi / 180) = (3 * x - 8) * pi / 180"
      using angle_ABD angle_ABF `angle A B F = 2 * angle A B D` by simp
    (* Solve for x *)
    hence "2 * (x + 14) = 3 * x - 8" by (simp add: field_simps)
    hence "2*x + 28 = 3*x - 8" by simp
    hence "28 + 8 = 3*x - 2*x" by (simp add: algebra_simps)
    hence "36 = x" by simp
    (* Calculate the final angle *)
    hence "angle A B D = (36 + 14) * pi / 180" 
      using angle_ABD by simp
    thus "angle A B D = 50 * pi / 180" by simp
  qed