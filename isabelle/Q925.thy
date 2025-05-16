theory QuadrilateralAngle
imports Main Real
begin

(* Define the problem about finding the value of x *)
theorem value_x_66:
  fixes x y :: real
  assumes "∠CFD = x + 36"
  assumes "∠DEC = 2 * y"
  assumes "∠ECF = 78"
  assumes "∠FDE = 110" 
  assumes "CE ∥ FD" (* CE is parallel to FD *)
  shows "x = 66"
begin
  (* Since CE ∥ FD, we know that ∠ECF and ∠CFD are supplementary angles *)
  (* That means ∠ECF + ∠CFD = 180 *)
  have "∠ECF + ∠CFD = 180" using `CE ∥ FD` by (simp add: parallel_property_ipsilateral_internal_angle)
  
  (* Substitute the known values *)
  hence "78 + (x + 36) = 180" using assms by simp
  
  (* Solve for x *)
  hence "x + 114 = 180" by simp
  hence "x = 66" by simp
end

end