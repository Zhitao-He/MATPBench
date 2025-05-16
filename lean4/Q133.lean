import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle

open Real EuclideanGeometry AffineSpace

abbrev EuclidPlane : Type := EuclideanSpace ℝ (Fin 2)

namespace QuadrilateralAreaProblem

section ProblemContext

  variable (A B C P : EuclidPlane)

  local notation "D" => midpoint ℝ B C
  local notation "E" => midpoint ℝ A B

  variable (h_triangle_nondegenerate : ¬ Collinear ℝ A B C)
  variable (h_P_on_median_AD : P ∈ segment ℝ A D)
  variable (h_P_on_median_CE : P ∈ segment ℝ C E)
  variable (h_dist_PE : dist P E = 1.5)
  variable (h_dist_PD : dist P D = 2)
  variable (h_dist_DE : dist D E = 2.5)

  def area_quadrilateral_AEDC : ℝ :=
    Triangle.area A E D + Triangle.area A D C

  theorem area_of_AEDC_is_13_5 : area_quadrilateral_AEDC A B C = 13.5 := by sorry

end ProblemContext

end QuadrilateralAreaProblem