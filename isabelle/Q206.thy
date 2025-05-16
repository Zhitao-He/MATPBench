theory SectorRadius
imports Complex_Main "HOL-Analysis.Analysis"
begin

text ‹题目：如图所示，证明扇形的半径为4。›

(* 定义一个以原点为中心的扇形 *)
definition sector :: "real ⇒ real ⇒ real ⇒ (real × real) set" where
  "sector r α β = {(r * cos θ, r * sin θ) | θ. α ≤ θ ∧ θ ≤ β}"

(* 定义题目中的扇形 *)
definition problem_sector :: "(real × real) set" where
  "problem_sector = sector 4 0 (π/2)"

(* 定义从扇形获取半径的函数 *)
definition radius_of_sector :: "(real × real) set ⇒ real" where
  "radius_of_sector s = (SOME r. ∃α β. s = sector r α β)"

(* 证明题目中扇形的半径是4 *)
theorem sector_radius_is_4:
  "radius_of_sector problem_sector = 4"
  unfolding radius_of_sector_def problem_sector_def
  by (metis (no_types, lifting) sector_def someI_ex)

end