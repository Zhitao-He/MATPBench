import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Pi.Bounds

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable [FiniteDimensional ℝ V] [Fact (FiniteDimensional.finrank ℝ V = 2)]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

open EuclideanGeometry
open scoped Real

namespace TriangleMidpointConstruction

variable (A B C : P)
variable (h_ABC : ¬ Collinear ℝ ({A, B, C} : Set P))

/-- Midpoints of sides BC, CA, AB respectively -/
def D : P := midpoint ℝ B C
def E : P := midpoint ℝ C A
def F : P := midpoint ℝ A B

/-- Line through two points -/
def lineThrough (p₁ p₂ : P) : AffineSubspace ℝ P := AffineSubspace.lineThrough p₁ p₂

/-- Line through a point parallel to a direction vector -/
def lineThroughParallel (p : P) (dir : V) : AffineSubspace ℝ P :=
  AffineSubspace.parallel (AffineSubspace.spanPoints ℝ [p] (by simp)) 
    (Submodule.span ℝ {dir})

/-- Line through E parallel to AC -/
def lineEI : AffineSubspace ℝ P := lineThroughParallel (E A B C) (C -ᵥ A)

/-- Line through F parallel to AB -/
def lineFI : AffineSubspace ℝ P := lineThroughParallel (F A B C) (B -ᵥ A)

/-- Line AD -/
def lineAD : AffineSubspace ℝ P := lineThrough A (D A B C)

/-- Intersection point M of AD and EI -/
noncomputable def M : P :=
  (lineAD A B C ⊓ lineEI A B C).carrier.nonempty.some

/-- Intersection point N of AD and FI -/
noncomputable def N : P :=
  (lineAD A B C ⊓ lineFI A B C).carrier.nonempty.some

/-- Line EM -/
def lineEM : AffineSubspace ℝ P := lineThrough (E A B C) (M A B C)

/-- Line FN -/
def lineFN : AffineSubspace ℝ P := lineThrough (F A B C) (N A B C)

/-- Intersection point O of EM and FN -/
noncomputable def O : P :=
  (lineEM A B C ⊓ lineFN A B C).carrier.nonempty.some

/-- Line CM -/
def lineCM : AffineSubspace ℝ P := lineThrough C (M A B C)

/-- Line BN -/
def lineBN : AffineSubspace ℝ P := lineThrough B (N A B C)

/-- Intersection point K of CM and BN -/
noncomputable def K : P :=
  (lineCM A B C ⊓ lineBN A B C).carrier.nonempty.some

/-- Main theorem: OK is perpendicular to AK -/
theorem OK_perpendicular_to_AK :
    angle (O A B C) (K A B C) A = Real.pi / 2 := by sorry

end TriangleMidpointConstruction