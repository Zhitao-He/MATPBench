import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Bounds 
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Analysis.InnerProductSpace.PiL2 
namespace ArcLengthProblem
open Real EuclideanGeometry
open scoped EuclideanGeometry 
abbrev P := EuclideanSpace ℝ (Fin 2)
def radius : ℝ := 3
noncomputable def angleAOB : ℝ := 45 * (Real.pi / 180)  
noncomputable def arcLengthOBA (O A B : P) (_ : dist O A = radius)
    (_ : dist O B = radius) (_ : ∠ A O B = angleAOB) : ℝ :=
  radius * angleAOB
theorem arcLengthOBA_eq {O A B : P} (h1 : dist O A = radius)
    (h2 : dist O B = radius) (h3 : ∠ A O B = angleAOB) :
    arcLengthOBA O A B h1 h2 h3 = 3 * Real.pi / 4 := by
  sorry
end ArcLengthProblem
