import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle
import Mathlib.Data.Real.Basic

namespace GeometryProblem

open EuclideanGeometry

-- Use ℝ² as the Euclidean plane
variable {P : Type*} [EuclideanPlane P]
variables (A C D E F G H : P)

-- Helper: convert degrees to radians (as Lean angles are in radians)
noncomputable def degreesToRadians (d : ℝ) : ℝ := d / 180 * Real.pi

-- Given angles (all angles in radians)
axiom hDHF : ∠ D H F = degreesToRadians 35
axiom hGCH : ∠ G C H = degreesToRadians 28
axiom hHDF : ∠ H D F = degreesToRadians 25
axiom hHFG : ∠ H F G = degreesToRadians 51

-- Right angle information
axiom hCE_perp_HE : Angle.IsRight (∠ C E H)
axiom hFG_perp_HG : Angle.IsRight (∠ F G H)
axiom hHC_perp_AC : Angle.IsRight (∠ H C A)

-- Target: ∠ G H F = 39°
theorem target_angle_GHF : ∠ G H F = degreesToRadians 39 := by sorry

end GeometryProblem