import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Bounds
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry
namespace ProblemStatement
abbrev P := EuclideanSpace ℝ (Fin 2)
theorem find_length_HE
  (A B C D E F H : P)
  (h_noncollinear : ¬Collinear ℝ ({A, B, C} : Set P))
  (h_acute : True) 
  (hD_foot : D = EuclideanGeometry.orthogonalProjection (affineSpan ℝ {B, C}) A)
  (hE_foot : E = EuclideanGeometry.orthogonalProjection (affineSpan ℝ {A, C}) B)
  (hF_foot : F = EuclideanGeometry.orthogonalProjection (affineSpan ℝ {A, B}) C)
  (hH_orthocenter : H = sorry) 
  (hBD : dist B D = (5 : ℝ))
  (hCD : dist C D = (9 : ℝ))
  (hCE : dist C E = (42/5 : ℝ))
  : dist H E = (99/20 : ℝ) := by
  sorry
end ProblemStatement
