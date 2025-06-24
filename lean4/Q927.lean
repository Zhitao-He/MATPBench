import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.Geometry.Euclidean.Angle.Oriented.Affine 
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Inverse
import Mathlib.Data.Real.Basic
import Mathlib.LinearAlgebra.FiniteDimensional.Defs 
import Mathlib.Geometry.Euclidean.Basic 
import Mathlib.LinearAlgebra.Pi 
namespace ProblemFormalization
abbrev PPoint := EuclideanSpace ℝ (Fin 2) 
noncomputable instance PPoint_oriented : Module.Oriented ℝ PPoint (Fin 2) :=
  { positiveOrientation := (Pi.basisFun ℝ (Fin 2)).orientation }
noncomputable def degToRad (d : ℝ) : ℝ := d * (Real.pi / 180)
noncomputable def radToDeg (r : ℝ) : ℝ := r * (180 / Real.pi)
noncomputable def angleGFHDeg : ℝ := 130
noncomputable def angleHFJDeg : ℝ := 90
noncomputable def targetAngleJFGDeg : ℝ := 140
noncomputable def valGFHRad : ℝ := degToRad angleGFHDeg
noncomputable def valHFJRad : ℝ := degToRad angleHFJDeg
theorem target_theorem_JFG (G F H J : PPoint) [Fact (Module.finrank ℝ PPoint = 2)]
  (hF_ne_G : F ≠ G) (hF_ne_H : F ≠ H) (hF_ne_J : F ≠ J)
  (h_oangle_GFH : EuclideanGeometry.oangle G F H = valGFHRad) 
  (h_oangle_HFJ : EuclideanGeometry.oangle H F J = valHFJRad) 
  :
  radToDeg (EuclideanGeometry.angle J F G) = targetAngleJFGDeg := by
  sorry
end ProblemFormalization
