import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle

namespace ProblemDescription

abbrev Point := EuclideanSpace ℝ (Fin 2)

def A : Point := ![0, 0]
def B : Point := ![10, 0]
def C : Point := ![10, 10]
def D : Point := ![0, 10]

def E_target : Point := ![10, 8]

theorem square_triangle_area_BE :
  ∀ (E : Point),
    (E ∈ segment ℝ B C) →
    (Triangle.area A B E = 40) →
    (dist B E = 8) →
    E = E_target := by sorry

end ProblemDescription