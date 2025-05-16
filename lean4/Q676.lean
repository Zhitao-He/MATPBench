import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic

namespace ProblemDescription

-- Work in the Euclidean plane of dimension 2
variable {P : Type*} [EuclideanSpace ℝ P] [Fact (finrank ℝ P = 2)]

-- Points in the figure
variable (A B C D E : P)

-- Degrees to radians conversion
noncomputable def degToRad (d : ℝ) : ℝ := d * (Real.pi / 180)

-- Given angles in triangle BDE
variable (h_angle_BDE : ∠ B D E = degToRad 35)
variable (h_angle_EBD : ∠ E B D = degToRad 75)

-- Given angle ∠CAE = 28°
variable (h_C_ne_A : C ≠ A)
variable (h_C_ne_E : C ≠ E)
variable (h_angle_CAE : ∠ C A E = degToRad 28)

-- The sought value is ∠BEA = 110°
theorem angle_BEA_eq_110_deg :
    ∠ B E A = degToRad 110 := by
  sorry

end ProblemDescription