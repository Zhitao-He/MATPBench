import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

/-!
Formalization of the geometry problem:

Given points L, M, N, P in the Euclidean plane with:
- Distance NM = 4
- ∠NLM = ∠PLN
- ∠PLN = 25°
- LM is perpendicular to NM (∠LMN = 90°)
- NP is perpendicular to LP (∠NPL = 90°)

To prove: ∠MNP = 130°
-/

open Real EuclideanGeometry

-- Helper function to convert degrees to radians
def degToRad (d : ℝ) : ℝ := d * (π / 180)

variable (L M N P : EuclideanPlane) -- Points in the Euclidean plane

-- Hypotheses
variable
  (h_distNM : dist N M = 4)
  (h_angleNLM_eq_PLN : ∠ N L M = ∠ P L N)
  (h_anglePLN : ∠ P L N = degToRad 25)
  (h_perp_LMN : ∠ L M N = π / 2)  -- LM ⟂ NM
  (h_perp_NPL : ∠ N P L = π / 2)  -- NP ⟂ LP

theorem angle_MNP_is_130 : ∠ M N P = degToRad 130 := by
  sorry