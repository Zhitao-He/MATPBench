import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic

open Real EuclideanGeometry InnerProductSpace

/-!
# Central angle of an inscribed square
Let `A B C D` be four points in a 2-dimensional Euclidean plane, forming a square, inscribed in a circle with center `K`. 
We show that the central angle ∠AKB is π/2.
-/

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
variable [FiniteDimensional ℝ V] [Fact (FiniteDimensional.finrank ℝ V = 2)]

-- Define the square: vertices in order A B C D, all sides equal, all angles 90°, nondegenerate
def isSquare (A B C D : P) : Prop :=
  dist A B = dist B C ∧
  dist B C = dist C D ∧
  dist C D = dist D A ∧
  angle D A B = π / 2 ∧
  dist A B ≠ 0

-- Assume we are given such square and a center K such that K is the circumcenter
variable (A B C D K : P)
variable (h_sq : isSquare A B C D)
variable (h_circ : dist K A = dist K B ∧ dist K B = dist K C ∧ dist K C = dist K D)

-- Theorem: the central angle at K subtended by a side of the square is π/2
theorem centralAngle_ofInscribedSquare : angle A K B = π / 2 := by sorry