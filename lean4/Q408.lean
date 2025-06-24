import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Triangle 
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry Real
namespace IncenterProblem
abbrev P := EuclideanSpace ℝ (Fin 2)
open EuclideanGeometry
structure TriangleGeometrySetup (A B C : P)
    (h_AB : dist A B = 13)
    (h_AC : dist A C = 15)
    (h_BC : dist B C = 14) where
  incenterI : P
  inradiusR : ℝ
  incircleObj : EuclideanGeometry.Sphere P
  touchPointD : P
  touchPointE : P
  touchPointF : P
namespace TriangleGeometrySetup
noncomputable def mkSetup (A B C : P)
    (h_AB : dist A B = 13)
    (h_AC : dist A C = 15)
    (h_BC : dist B C = 14) : TriangleGeometrySetup A B C h_AB h_AC h_BC :=
  let I : P := sorry 
  let r : ℝ := sorry 
  let incircle := EuclideanGeometry.Sphere.mk I r
  let D := EuclideanGeometry.orthogonalProjection (affineSpan ℝ ({B, C} : Set P)) I
  let E := EuclideanGeometry.orthogonalProjection (affineSpan ℝ ({A, C} : Set P)) I
  let F := EuclideanGeometry.orthogonalProjection (affineSpan ℝ ({A, B} : Set P)) I
  { incenterI := I,
    inradiusR := r,
    incircleObj := incircle,
    touchPointD := D,
    touchPointE := E,
    touchPointF := F }
end TriangleGeometrySetup
noncomputable def area_triangle (A B C : P) : ℝ :=
  (1/2 : ℝ) * abs ((B 0 - A 0) * (C 1 - A 1) - (C 0 - A 0) * (B 1 - A 1))
noncomputable def quadrilateralArea (p₁ p₂ p₃ p₄ : P) : ℝ :=
  area_triangle p₁ p₂ p₃ + area_triangle p₁ p₃ p₄
theorem area_AEIF_eq_28 (A B C : P)
    (h_AB : dist A B = 13)
    (h_AC : dist A C = 15)
    (h_BC : dist B C = 14) :
  let setup := TriangleGeometrySetup.mkSetup A B C h_AB h_AC h_BC
  quadrilateralArea A setup.touchPointE setup.incenterI setup.touchPointF = 28 :=
by sorry
end IncenterProblem
