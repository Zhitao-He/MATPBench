import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

noncomputable section

namespace EuclideanGeometryProblem

open EuclideanGeometry Angle.Unoriented

variable (O A B C D : EuclideanPlane ℝ)
variable (r : ℝ) (hr_pos : 0 < r)

def S : Sphere (EuclideanPlane ℝ) := { center := O, radius := r }

variable (h_AB_diam : IsDiameter S A B)
variable (h_C_on_S : C ∈ S) (h_D_on_S : D ∈ S)
variable (h_triangle_ABC : ¬ Collinear ℝ A B C)
variable (h_A_ne_C : A ≠ C) (h_B_ne_C : B ≠ C)
variable (h_A_ne_D : A ≠ D) (h_C_ne_D : C ≠ D) (h_B_ne_D : B ≠ D)

def angle_40_rad : ℝ := (40 / 180) * Real.pi
def angle_50_rad : ℝ := (50 / 180) * Real.pi

variable (h_angle_ACD : angle A C D = angle_40_rad)

theorem inscribed_angle_BAD_eq_50 :
  angle B A D = angle_50_rad := by sorry

end EuclideanGeometryProblem

end noncomputable section