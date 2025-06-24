import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
open Real
namespace CompositeSolid
def prismLength : ℝ := 65
def prismWidth : ℝ := 21
def prismHeight : ℝ := 10
def cylinderRadius : ℝ := 5
def cylinderHeight : ℝ := 11
def saPrismGiven : ℝ := 437146
noncomputable def lateralSurfaceAreaCylinder (r h : ℝ) : ℝ :=
  2 * π * r * h
noncomputable def baseAreaCylinder (r : ℝ) : ℝ :=
  π * r ^ 2
noncomputable def totalExposedSurfaceArea : ℝ :=
  (saPrismGiven - baseAreaCylinder cylinderRadius)
  + lateralSurfaceAreaCylinder cylinderRadius cylinderHeight
  + baseAreaCylinder cylinderRadius
noncomputable def exposedSurfaceAreaOfPrismPart : ℝ :=
  saPrismGiven - baseAreaCylinder cylinderRadius
end CompositeSolid
