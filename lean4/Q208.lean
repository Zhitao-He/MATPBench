import Mathlib.Geometry.Euclidean.Basic

namespace ProblemGeo

abbrev Point := EuclideanSpace ℝ (Fin 2)

variable (A B C D P : Point)

def circleWithDiameter (C D : Point) : Set Point :=
  Metric.sphere (midpoint ℝ C D) (dist C D / 2)

variable (hCD : dist C D = 6)
variable (hP_on_circle : P ∈ circleWithDiameter C D)
variable (hP_on_line_AD : Collinear ℝ ![A, P, D])
variable (hBC : dist B C = 2)
variable (hRight : inner (B -ᵥ C) (D -ᵥ C) = 0)

theorem length_AB : dist A B = 2 * Real.sqrt 13 := by
  sorry

end ProblemGeo