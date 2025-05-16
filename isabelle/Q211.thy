theory AE_CE_Squared_Sum
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
locale circle_geometry =
  fixes O A B C D E :: "real^2"
  assumes circ: "dist A O = dist B O ∧ dist B O = dist C O" 
      and D_perp: "inner (A - D) (D - B) = 0"
      and O_perp: "inner (E - O) (O - B) = 0"
      and E_on_AC: "E ∈ line A C ∧ inner (E - O) (C - A) = 0"
      and AD_midpoint: "D = (A + B) / 2"
      and perp_len: "norm (E - O) = 1"
theorem AE_CE_squared_sum:
  assumes "circle_geometry O A B C D E"
  shows "(norm (A - E))^2 + (norm (C - E))^2 = 2"
  sorry