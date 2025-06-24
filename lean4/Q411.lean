import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
set_option autoImplicit false
open Real EuclideanGeometry Metric
abbrev PPoint := EuclideanSpace ℝ (Fin 2) 
namespace ShadedAreaProblem
variable (A B C P : PPoint) 
variable (h_AB_dist : dist A B = 4)
variable (h_P_is_midpoint_AB : P = midpoint ℝ A B)
noncomputable def radius_val (A B : PPoint) (_h_AB_dist : dist A B = 4) : ℝ := 
  (dist A B) / 2
local notation "r_val_AB" => radius_val A B h_AB_dist
variable (h_C_on_circle : C ∈ EuclideanGeometry.Sphere.mk P r_val_AB) 
variable (h_BC_dist : dist B C = 2)
noncomputable def diskArea (radius : ℝ) : ℝ :=
  if 0 ≤ radius then
    Real.pi * radius^2
  else
    0
noncomputable def triangleArea (p1 p2 p3 : PPoint) : ℝ := 
  (1/2 : ℝ) * abs ((p2 -ᵥ p1) 0 * (p3 -ᵥ p1) 1 - (p2 -ᵥ p1) 1 * (p3 -ᵥ p1) 0)
theorem area_of_shaded_region_eq_specific_value :
  diskArea r_val_AB - triangleArea A B C = 4 * Real.pi - 2 * Real.sqrt 3 := by 
  sorry
end ShadedAreaProblem
