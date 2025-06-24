import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.LinearAlgebra.FiniteDimensional.Defs 
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic 
open Real EuclideanGeometry
namespace ProblemGeo
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
theorem find_cos_CAD (A B C D : PPoint)
    (hAC : dist A C = 5 * sqrt 26)
    (hAD : dist A D = 25)
    (hCB : dist C B = sqrt 26)
    (hCD : dist C D = 5)
    (hDB : dist D B = 1)
    (hAD_perp_CD : EuclideanGeometry.angle A D C = Real.pi / 2)
    (hBC_perp_AC : EuclideanGeometry.angle B C A = Real.pi / 2) :
    Real.cos (EuclideanGeometry.angle C A D) = 5 * sqrt 26 / 26 := by
  sorry
end ProblemGeo
