import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Geometry.Euclidean.Sphere.Basic

open EuclideanGeometry

namespace GeometryProblem

variable {P : Type*} [EuclideanSpace ℝ P 2]

variables (O A B C D E F P : P)
variable (r : ℝ) (hr_pos : 0 < r)

def s : Sphere P ℝ := Sphere.mk O r

variables (hA_on_s : A ∈ s) (hB_on_s : B ∈ s) (hC_on_s : C ∈ s)
variables (hP_ne_A : P ≠ A) (hP_ne_B : P ≠ B)

def linePA : AffineSubspace ℝ P := AffineSpace.lineThrough ℝ P A
def linePB : AffineSubspace ℝ P := AffineSpace.lineThrough ℝ P B

variables (hPA_tangent : s.IsTangentAt A linePA)
variables (hPB_tangent : s.IsTangentAt B linePB)

variables (hD_on_PA : D ∈ linePA) (hE_on_PB : E ∈ linePB)
variables (hD_ne_E : D ≠ E)

def lineDE : AffineSubspace ℝ P := AffineSpace.lineThrough ℝ D E
variable (hDE_tangent : s.IsTangentAt C lineDE)

variables (hA_ne_B : A ≠ B)
def lineAB : AffineSubspace ℝ P := AffineSpace.lineThrough ℝ A B

variable (hF_is_proj : F = orthogonalProjection lineAB C)

variables (hD_ne_F : D ≠ F) (hC_ne_F : C ≠ F) (hE_ne_F : E ≠ F)

theorem angle_DFC_eq_angle_EFC : 
    angle D F C = angle E F C := by sorry

end GeometryProblem