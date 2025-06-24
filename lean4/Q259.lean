import Mathlib.Data.Real.Basic 
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
namespace sphericalBallsInCylinder
def ballDiameter : ℝ := 2.5
noncomputable def ballRadius : ℝ := ballDiameter / 2
def cylinderHeight : ℝ := 10
noncomputable def surfaceAreaOfSphere (radius : ℝ) : ℝ :=
  4 * Real.pi * (radius ^ 2)
def claimedSurfaceAreaValue : ℝ := 785
theorem surfaceAreaOfEachBall_is_claimedValue :
  surfaceAreaOfSphere ballRadius = claimedSurfaceAreaValue := by sorry
end sphericalBallsInCylinder
