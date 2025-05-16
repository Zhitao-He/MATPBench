import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

/-!
# Inscribed Angle and Arc Measure Theorem

Given:
- Points D (center), T, U, V in a 2D Euclidean space P over ℝ
- A circle Ω centered at D with radius r > 0
- Points T, U, V lie on Ω
- ∠UVT = 23° (angle between vectors V→U and V→T)

Conclusion:
- The central angle ∠TDU = 46°
-/

variable {P : Type*} [NormedAddCommGroup P] [InnerProductSpace ℝ P] [Fact (finrank ℝ P = 2)]

variable (D T U V : P) (r : ℝ) (h_r_pos : 0 < r) (Ω : Sphere P D r)
variable (hT : T ∈ Ω) (hU : U ∈ Ω) (hV : V ∈ Ω)
variable (hU_ne_V : U ≠ V) (hT_ne_V : T ≠ V)

variable (h_angle_UVT : Angle.Unoriented.angle U V T = (23 / 180) * Real.pi)

theorem central_angle_is_twice_inscribed_angle :
    Angle.Unoriented.angle T D U = (46 / 180) * Real.pi := by sorry