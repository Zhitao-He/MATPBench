import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.LinearAlgebra.FiniteDimensional.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Oriented.Affine
import Mathlib.Data.Real.Pi.Bounds
open Real InnerProductSpace
open scoped EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def degreesToRadians (d : ℝ) : ℝ := d * (Real.pi / 180)
section CircleAnglesProblem
theorem value_of_x_deg_is_114
  [Fact (Module.finrank ℝ P = 2)]
  [Module.Oriented ℝ P (Fin 2)]
  (A : P) (B : P) (C : P) (D : P)
  (x_deg : ℝ)
  (hA_ne_C : A ≠ C)
  (hB_ne_C : B ≠ C)
  (hD_ne_C : D ≠ C)
  (h_oangle_ACB : (EuclideanGeometry.oangle A C B).toReal = degreesToRadians 125)
  (h_oangle_DCA : (EuclideanGeometry.oangle D C A).toReal = degreesToRadians 121)
  (h_oangle_BCD : (EuclideanGeometry.oangle B C D).toReal = degreesToRadians x_deg)
  (h_sum_around_C :
    (EuclideanGeometry.oangle A C B).toReal + (EuclideanGeometry.oangle B C D).toReal + (EuclideanGeometry.oangle D C A).toReal = 2 * Real.pi)
  : x_deg = 114 := by
  sorry
end CircleAnglesProblem
