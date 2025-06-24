import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.LinearAlgebra.FiniteDimensional.Defs 
import Mathlib.Data.Real.Basic 
open Real EuclideanGeometry
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
noncomputable def degToRad (d : ℝ) : ℝ := d * (Real.pi / 180)
theorem measure_of_arc_BOP (B P_pt N M O_pt : PPoint) (s : EuclideanGeometry.Sphere PPoint)
  (h_center : s.center = B)
  (h_P_on_s : P_pt ∈ s)
  (h_N_on_s : N ∈ s)
  (h_M_on_s : M ∈ s)
  (h_O_on_s : O_pt ∈ s)
  (h_angle_PNO : angle P_pt N O_pt = degToRad 56)
  (h_angle_BMN : angle B M N = degToRad 70)
  : angle P_pt B O_pt = degToRad 112 := by
  sorry
