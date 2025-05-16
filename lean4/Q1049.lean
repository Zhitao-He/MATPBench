import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine

noncomputable section TriangleOrthocenterMidpoint

open EuclideanGeometry AffineSubspace Set

-- Let V be a real inner product space with dim = 2, P a 2D Euclidean affine space
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
variable (h_dim : FiniteDimensional.finrank ℝ V = 2)
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

-- Provide the dimension fact as an instance
local instance : Fact (FiniteDimensional.finrank ℝ V = 2) := ⟨h_dim⟩

-- Triangle vertices and basic assumptions
variable (A B C : P)
variable (hA_ne_B : A ≠ B) (hB_ne_C : B ≠ C) (hC_ne_A : C ≠ A)
variable (h_noncollinear : ¬Collinear ℝ {A, B, C})

-- D: midpoint of BC
def D : P := midpoint ℝ B C

-- H: orthocenter of triangle ABC
def H : P := orthocenter ℝ A B C h_noncollinear

-- Lines
def line_AB : AffineSubspace ℝ P := lineThrough A B
def line_AC : AffineSubspace ℝ P := lineThrough A C
def line_DH : AffineSubspace ℝ P := lineThrough (D h_dim B C) (H h_dim A B C h_noncollinear)

-- Hypothesis: D ≠ H (so DH is a genuine line)
variable (h_D_ne_H : D h_dim B C ≠ H h_dim A B C h_noncollinear)

-- line_DH has dimension 1 (needed for perpendicularLine)
lemma line_DH_dim_eq_one : (line_DH h_dim A B C h_noncollinear h_D_ne_H).direction.finrank = 1 := by
  rw [line_DH, direction_lineThrough]
  simp [direction_lineThrough, h_D_ne_H]
  exact finrank_span_pair_eq_one_of_ne ℝ _ _ h_D_ne_H

-- The line through H perpendicular to DH
def line_EF : AffineSubspace ℝ P :=
  perpendicularLine (H h_dim A B C h_noncollinear) 
    (line_DH h_dim A B C h_noncollinear h_D_ne_H)
    (line_DH_dim_eq_one h_dim A B C h_noncollinear h_D_ne_H)

-- We assume that the intersection points exist
variable (hE : (line_EF h_dim A B C h_noncollinear h_D_ne_H ∩ line_AB A B).Nonempty)
variable (hF : (line_EF h_dim A B C h_noncollinear h_D_ne_H ∩ line_AC A C).Nonempty)

-- E is the intersection of line_EF and line_AB
def E : P := (line_EF h_dim A B C h_noncollinear h_D_ne_H ∩ line_AB A B).some hE

-- F is the intersection of line_EF and line_AC
def F : P := (line_EF h_dim A B C h_noncollinear h_D_ne_H ∩ line_AC A C).some hF

-- The main theorem: H is the midpoint of EF
theorem triangle_orthocenter_midpoint : 
  H h_dim A B C h_noncollinear = midpoint ℝ 
    (E h_dim A B C h_noncollinear h_D_ne_H hE) 
    (F h_dim A B C h_noncollinear h_D_ne_H hF) := by sorry

end TriangleOrthocenterMidpoint