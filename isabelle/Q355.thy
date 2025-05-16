theory HexagonalPrism
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
begin
theorem hexagonal_prism_lateral_area:
  let h = 3 :: real;  
      s = 0.5 :: real  
  in 6 * s * h = 9
proof -
  have "6 * 0.5 * 3 = 9" by simp
  thus ?thesis by simp
qed