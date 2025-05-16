import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Bounds
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic

open EuclideanGeometry
open scoped Real

abbrev Point := EuclideanSpace ℝ (Fin 2)

noncomputable def degToRad (d : ℝ) : ℝ := d * (Real.pi / 180)

namespace InscribedQuadrilateral

variables (A B C D Z : Point) (r : ℝ)

variable (hr_pos : r > 0)
variable (hA_on_circle : dist A Z = r)
variable (hB_on_circle : dist B Z = r)
variable (hC_on_circle : dist C Z = r)
variable (hD_on_circle : dist D Z = r)

variable (hA_ne_B : A ≠ B)
variable (hB_ne_C : B ≠ C)
variable (hC_ne_D : C ≠ D)
variable (hD_ne_A : D ≠ A)

variable (h_angle_BZA : ∠ B Z A = Real.Angle.coe (degToRad 104))
variable (h_angle_CZB : ∠ C Z B = Real.Angle.coe (degToRad 94))

variable (h_parallel_AB_DC : ¬ LinearIndependent ℝ ![B -ᵥ A, C -ᵥ D])

theorem measure_arc_ADC_is_162_degrees :
    (∠ A Z D) + (∠ D Z C) = Real.Angle.coe (degToRad 162) := by
  sorry

end InscribedQuadrilateral