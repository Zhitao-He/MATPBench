import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Altitude
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic

open EuclideanGeometry

namespace EuclideanGeometryProblem

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
variable [Fact (finrank ℝ V = 2)]

/--
Given triangle ABC with orthocenter H and circumcenter O.
Let D, E, F be the feet of the altitudes from A, B, C, respectively.
Let M = ED ∩ AB and N = FD ∩ AC.
Then: OH ⟂ MN.
-/
theorem oh_perp_mn
    (A B C : P)
    (h_noncollinear : ¬ Collinear ℝ ({A, B, C} : Set P))
    (D : P) (hD : D = Triangle.altitudeFoot (Triangle.mk ℝ A B C) 0 h_noncollinear)
    (E : P) (hE : E = Triangle.altitudeFoot (Triangle.mk ℝ A B C) 1 h_noncollinear)
    (F : P) (hF : F = Triangle.altitudeFoot (Triangle.mk ℝ A B C) 2 h_noncollinear)
    (H : P) (hH : H = Triangle.orthocenter (Triangle.mk ℝ A B C) h_noncollinear)
    (O : P) (hO : O = Triangle.circumcenter (Triangle.mk ℝ A B C) h_noncollinear)
    (M : P)
      (hM_ED : M ∈ affineSpan ℝ ({E, D} : Set P))
      (hM_AB : M ∈ affineSpan ℝ ({A, B} : Set P))
      (hE_ne_D : E ≠ D)
    (N : P)
      (hN_FD : N ∈ affineSpan ℝ ({F, D} : Set P))
      (hN_AC : N ∈ affineSpan ℝ ({A, C} : Set P))
      (hF_ne_D : F ≠ D)
    (hO_ne_H : O ≠ H)
    (hM_ne_N : M ≠ N)
    : (affineSpan ℝ ({O, H} : Set P)) ⟂ (affineSpan ℝ ({M, N} : Set P)) := by
  sorry

end EuclideanGeometryProblem