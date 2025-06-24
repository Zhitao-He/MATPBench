import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
abbrev E3 := EuclideanSpace ℝ (Fin 3)
namespace ProblemAGH
def A (s : ℝ) : E3 := ![0, s, s]
def G (s : ℝ) : E3 := ![s, 0, 0]
def H (_ : ℝ) : E3 := ![0, 0, 0]
noncomputable def distAG (s : ℝ) : ℝ := dist (A s) (G s)
noncomputable def distGH (s : ℝ) : ℝ := dist (G s) (H s)
noncomputable def distAH (s : ℝ) : ℝ := dist (A s) (H s)
noncomputable def radiansToDegrees (r : ℝ) : ℝ := r * 180 / Real.pi
noncomputable def angleAGH_deg (s : ℝ) : ℝ := radiansToDegrees (EuclideanGeometry.angle (A s) (G s) (H s))
noncomputable def angleGAH_deg (s : ℝ) : ℝ := radiansToDegrees (EuclideanGeometry.angle (G s) (A s) (H s))
noncomputable def angleHGA_deg (s : ℝ) : ℝ := radiansToDegrees (EuclideanGeometry.angle (H s) (G s) (A s))
theorem sum_of_angles_is_180 (s : ℝ) :
  angleAGH_deg s + angleGAH_deg s + angleHGA_deg s = 180 := by sorry
end ProblemAGH
